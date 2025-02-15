import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
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
      floatingActionButton: FloatingActionButton.small(onPressed: () {
        bloc.add(QuestionEvent.submitAnswers());
      }),
      body: BlocBuilder<QuestionBloc, QuestionState>(
        bloc: bloc..add(QuestionEvent.fetchQuestionListBySurveyId(surveyId)),
        builder: (context, state) {
          return state.map(
            initial: (_) => InitialLoadingView(),
            loadInProgress: (_) => InitialLoadingView(),
            loadSuccess: (t) => QuestionList(
              questions: t.questions,
              title: viewParams.projectName,
              subtitle: viewParams.surveyName,
            ),
            loadFailure: (_) =>
                Center(child: Text('Failed to load project details')),
            answerChanged: (value) => InitialLoadingView(),
            answerSubmittedInProgress: (_) => InitialLoadingView(),
            answerSubmittedSuccess: (_) => Text("Submitted!"),
            answerSubmittedFailure: (_) => Text("ERROR!"),
          );
        },
      ),
    );
  }
}

class QuestionList extends StatelessWidget {
  QuestionList(
      {super.key,
      required this.questions,
      required this.title,
      required this.subtitle});

  final List<QuestionEntity>? questions;
  late String title;
  late String subtitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
        itemCount: questions?.length != null ? questions!.length + 1 : 0,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (ctx, a) {
          if (a == 0) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 80),
              child: Column(
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleLarge),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: subtitle,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ])),
                ],
              ),
            );
          }
          return QuestionWidget(question: questions![a - 1]);
        },
      ),
    );
  }
}
