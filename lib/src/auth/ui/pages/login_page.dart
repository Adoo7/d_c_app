import 'package:d_c_app/src/shared/components/d_c_header.dart';
import 'package:d_c_app/src/project_feature/presentation/widgets/test_page.dart';
import 'package:d_c_app/src/settings/settings_controller.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

/// Displays a list of SampleItems.
class DCLoginView extends StatefulWidget {
  static const routeName = '/';

  final SettingsController settingsController;

  const DCLoginView({super.key, required this.settingsController});
  @override
  State<DCLoginView> createState() => _DCLoginViewState();
}

class _DCLoginViewState extends State<DCLoginView> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            showAuthActionSwitch: false,
            showPasswordVisibilityToggle: true,
            providers: [EmailAuthProvider()],
            headerMaxExtent: MediaQuery.of(context).size.height / 2.2,
            headerBuilder: (context, constraints, shrinkOffset) => DCHeader(),
          );
        }
        return TestPage(settingsController: widget.settingsController);
      },
    );
  }
}
