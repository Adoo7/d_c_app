import 'package:d_c_app/src/auth/ui/pages/login_page.dart';
import 'package:d_c_app/src/features/project_list/domain/entities/project.dart';
import 'package:d_c_app/src/features/question_list/presentation/pages/survey_detail_view.dart';
import 'package:d_c_app/src/features/survey_list/presentation/pages/project_detail_view.dart';
import 'package:d_c_app/src/features/project_list/presentation/widgets/landing_page.dart';
import 'package:go_router/go_router.dart';

class DCAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => DCLoginView(),
      ),
      GoRoute(
          path: '/dash',
          builder: (context, state) => LandingPage(),
          routes: [
            GoRoute(
                path: '/project/:proj_id',
                builder: (context, state) => ProjectDetailView(
                    projectId: state.pathParameters['proj_id']!,
                    project: state.extra! as ProjectEntity),
                routes: [
                  GoRoute(
                    path: '/survey/:surv_id',
                    builder: (context, state) => SurveyDetailView(
                        surveyId: state.pathParameters['surv_id']!,
                        viewParams: state.extra! as SurveyViewParams),
                  )
                ])
          ]),
    ],
  );
}
