import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/features/project_list/domain/entities/project.dart';
import 'package:d_c_app/src/shared/components/initial_loading_view.dart';
import 'package:d_c_app/src/features/question_list/presentation/pages/survey_detail_view.dart';
import 'package:d_c_app/src/features/survey_list/domain/entities/survey.dart';
import 'package:d_c_app/src/features/survey_list/presentation/bloc/survey/survey_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProjectDetailView extends StatelessWidget {
  ProjectDetailView(
      {super.key, required this.projectId, required this.project});

  final bloc = sl<SurveyBloc>();
  final String projectId;
  final ProjectEntity project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Surveys'),
      ),
      // floatingActionButton: FloatingActionButton.small(onPressed: () {}),
      body: BlocBuilder<SurveyBloc, SurveyState>(
        bloc: bloc..add(SurveyEvent.fetchSurveyListByProjectId(projectId)),
        builder: (context, state) {
          return state.map(
              initial: (_) => InitialLoadingView(),
              loadInProgress: (_) => InitialLoadingView(),
              loadSuccess: (t) => SurveyList(
                  surveys: t.surveys,
                  title: project.name,
                  projectName: project.name,
                  projectId: projectId),
              loadFailure: (_) =>
                  Center(child: Text('Failed to load project details')));
        },
      ),
    );
  }
}

class SurveyList extends StatelessWidget {
  const SurveyList(
      {super.key,
      required this.surveys,
      required this.title,
      required this.projectId,
      required this.projectName});

  final List<SurveyEntity>? surveys;
  final String title;
  final String projectId;
  final String projectName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 80),
            child: Column(
              children: [
                Text(title, style: Theme.of(context).textTheme.titleLarge),
                // RichText(
                //     text: TextSpan(children: [
                //   TextSpan(
                //       text: 'Want to import a Survey?',
                //       style: Theme.of(context).textTheme.bodyMedium),
                //   TextSpan(
                //       text: ' Click here',
                //       style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                //           color: Theme.of(context).primaryColor,
                //           fontWeight: FontWeight.bold)),
                // ])),
              ],
            ),
          ),
          Center(
            child: ListView.builder(
              itemCount: surveys?.length ?? 0,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (ctx, a) {
                return GestureDetector(
                  onTap: () {
                    context.push(
                        '/dash/project/$projectId/survey/${surveys![a].id}',
                        extra: SurveyViewParams(
                            projectName: projectName,
                            surveyName: surveys![a].name));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(50),
                          spreadRadius: 0,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Text(
                      surveys![a].name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
