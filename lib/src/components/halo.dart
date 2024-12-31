import 'package:flutter/material.dart';

class Halo extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;
  final double? diameter;

  const Halo(
      {super.key, this.top, this.bottom, this.right, this.left, this.diameter});

  @override
  Widget build(BuildContext context) {
    List<BoxShadow> shadows = [
      BoxShadow(color: Colors.white.withAlpha(20), blurRadius: 50),
      BoxShadow(
          color: Theme.of(context).primaryColor.withAlpha(50),
          blurRadius: 50,
          spreadRadius: -50,
          blurStyle: BlurStyle.inner),
      BoxShadow(
          color: Theme.of(context).primaryColor.withAlpha(50),
          blurRadius: 50,
          spreadRadius: -50,
          blurStyle: BlurStyle.inner),
    ];
    return Positioned(
      right: right,
      top: top,
      left: left,
      bottom: bottom,
      child: Container(
        width: diameter ?? 200.0,
        height: diameter ?? 200.0,
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: shadows),
      ),
    );
  }
}
