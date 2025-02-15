import 'package:flutter/material.dart';

class InitialLoadingView extends StatelessWidget {
  const InitialLoadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
