import 'package:d_c_app/src/shared/components/d_c_header.dart';
import 'package:d_c_app/src/features/project_list/presentation/widgets/landing_page.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

/// Displays a list of SampleItems.
class DCLoginView extends StatefulWidget {
  const DCLoginView({super.key});

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
        return LandingPage();
      },
    );
  }
}
