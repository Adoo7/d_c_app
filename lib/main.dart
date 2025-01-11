import 'package:d_c_app/firebase_options.dart';
import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/core/route/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/settings/settings_controller.dart';

void main() async {
  // Initialize Service Locator
  await initializeDependencies();
  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await sl<SettingsController>().loadSettings();
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
// Listen for Auth changes and .refresh the GoRouter [router]
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    DCAppRouter().router.refresh();
  });
  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp());
}
