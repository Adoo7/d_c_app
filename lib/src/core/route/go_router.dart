import 'package:d_c_app/src/auth/ui/pages/login_page.dart';
import 'package:d_c_app/src/features/project_list/presentation/pages/project_detail_view.dart';
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
              path: '/project/:id',
              builder: (context, state) => ProjectDetailView(
                projectId: state.pathParameters['id']!,
              ),
            )
          ]),
    ],
  );
}
