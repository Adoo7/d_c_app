import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
import 'package:d_c_app/src/features/question_list/presentation/bloc/cubit/answer_cubit.dart';
import 'package:d_c_app/src/features/question_list/presentation/bloc/question/question_bloc.dart';
import 'package:d_c_app/src/features/question_list/presentation/components/question.dart';
import 'package:d_c_app/src/shared/components/initial_loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SurveyViewParams {
  SurveyViewParams({required this.projectName, required this.surveyName});

  final String projectName;
  final String surveyName;
}

class SurveyDetailView extends StatelessWidget {
  SurveyDetailView(
      {super.key, required this.surveyId, required this.viewParams});

  final bloc = sl<QuestionBloc>();
  final String surveyId;
  final SurveyViewParams viewParams;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.small(
              heroTag: 'loadAnswers',
              onPressed: () {
                bloc.add(QuestionEvent.loadAnswersFromBloc(surveyId));
              },
              child: const Icon(Icons.save)),
          FloatingActionButton.small(
            onPressed: () {
              bloc.add(QuestionEvent.submitAnswers());
            },
            child: const Icon(Icons.clean_hands),
          ),
        ],
      ),
      body: BlocConsumer<QuestionBloc, QuestionState>(
          bloc: bloc..add(QuestionEvent.fetchQuestionListBySurveyId(surveyId)),
          listenWhen: (previous, current) => current.maybeWhen(
              answerSaved: () => true,
              answerSavedError: () => true,
              snackBarShowing: (_) => true,
              orElse: () => false),
          listener: (_context, state) => state.maybeMap(
                answerSavedError: (value) => ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                        margin: EdgeInsets.all(4),
                        behavior: SnackBarBehavior.floating,
                        showCloseIcon: true,
                        dismissDirection: DismissDirection.startToEnd,
                        content: Text("Failed to save answer!"))),
                answerSaved: (value) => ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                        margin: EdgeInsets.all(4),
                        behavior: SnackBarBehavior.floating,
                        showCloseIcon: true,
                        dismissDirection: DismissDirection.startToEnd,
                        content: Text("Answer saved localy!"))),
                snackBarShowing: (value) => ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                        margin: EdgeInsets.all(4),
                        behavior: SnackBarBehavior.floating,
                        showCloseIcon: true,
                        dismissDirection: DismissDirection.startToEnd,
                        content: Text(value.message))),
                orElse: () {},
              ),
          buildWhen: (previous, current) => current.maybeWhen(
              initial: () => true,
              loadInProgress: () => true,
              loadSuccess: (_, __) => true,
              loadFailure: (_) => true,
              answerChanged: () => true,
              answerSubmittedInProgress: () => true,
              answerSubmittedSuccess: () => true,
              answerSubmittedFailure: (_) => true,
              answerSaved: () => false,
              answerSavedError: () => false,
              orElse: () => false),
          builder: (context, state) => state.maybeWhen(
                initial: () => InitialLoadingView(),
                loadInProgress: () => InitialLoadingView(),
                loadSuccess: (questions, loadAnswers) => QuestionList(
                  questions: questions,
                  title: viewParams.projectName,
                  subtitle: viewParams.surveyName,
                  loadAnswers: loadAnswers,
                ),
                loadFailure: (_) =>
                    Center(child: Text('Failed to load project details')),
                answerChanged: () => InitialLoadingView(),
                answerSubmittedInProgress: () => InitialLoadingView(),
                answerSubmittedSuccess: () => Text("Submitted!"),
                answerSubmittedFailure: (_) => Text("ERROR!"),
                orElse: () => Text("ERROR"),
              )),
    );
  }
}

// ignore: must_be_immutable
class QuestionList extends StatefulWidget {
  QuestionList(
      {super.key,
      required this.questions,
      required this.title,
      required this.subtitle,
      required this.loadAnswers});

  final List<QuestionEntity>? questions;
  final String title;
  final String subtitle;
  var _selectedTab = 1;
  final bool loadAnswers;

  @override
  State<QuestionList> createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  List<QuestionEntity>? surveyQuestions;
  Map<String, String> tabNames = {};
  List<String> uniqueTabNumbers = [];

  @override
  void initState() {
    super.initState();
    _initializeTabs();
  }

  void _initializeTabs() {
    if (widget.questions != null) {
      // Get unique tab numbers and their names
      for (var question in widget.questions!) {
        if (!uniqueTabNumbers.contains(question.tabNumber)) {
          uniqueTabNumbers.add(question.tabNumber);
          tabNames[question.tabNumber] = question.tabName;
        }
      }

      // Sort tab numbers numerically
      uniqueTabNumbers.sort((a, b) => int.parse(a).compareTo(int.parse(b)));

      // Set initial selected tab to first available tab
      if (uniqueTabNumbers.isNotEmpty) {
        widget._selectedTab = int.parse(uniqueTabNumbers.first);
      }
    }

    _updateSurveyQuestions();
  }

  void _updateSurveyQuestions() {
    surveyQuestions = widget.questions?.where((question) {
      return int.parse(question.tabNumber) == widget._selectedTab;
    }).toList();

    surveyQuestions?.sort((a, b) {
      try {
        return int.parse(a.orderNumber).compareTo(int.parse(b.orderNumber));
      } catch (e) {
        return 0; // If order number is invalid, maintain original order
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnswerCubit, AnswerState>(
      bloc: sl<AnswerCubit>(),
      builder: (context, state) => state.maybeWhen(
        initial: () => _buildListView(false),
        answerChanged: () => _buildListView(true),
        filteringAnswers: () => InitialLoadingView(),
        orElse: () => _buildListView(false),
      ),
    );
  }

  Widget _buildListView(bool showAnswers) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
        itemCount:
            surveyQuestions?.length != null ? surveyQuestions!.length + 1 : 0,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (ctx, a) {
          if (a == 0) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 80),
              child: Column(
                children: [
                  Text(widget.title,
                      style: Theme.of(context).textTheme.titleLarge),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: widget.subtitle,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ])),
                  SizedBox(height: 20),
                  uniqueTabNumbers.length == 1
                      ? Text(
                          tabNames[uniqueTabNumbers.first] ??
                              uniqueTabNumbers.first,
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: uniqueTabNumbers.map((tabNumber) {
                            return ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  widget._selectedTab = int.parse(tabNumber);
                                  _updateSurveyQuestions();
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    widget._selectedTab == int.parse(tabNumber)
                                        ? Theme.of(context).primaryColor
                                        : Theme.of(context).primaryColorLight,
                              ),
                              child: Text(tabNames[tabNumber] ?? tabNumber),
                            );
                          }).toList(),
                        ),
                ],
              ),
            );
          }
          return QuestionWidget(
              question: surveyQuestions![a - 1],
              loadfromBloc: widget.loadAnswers,
              showAnswers: showAnswers);
        },
      ),
    );
  }
}
