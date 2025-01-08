import 'package:d_c_app/src/shared/components/halo.dart';
import 'package:flutter/material.dart';

class DCHeader extends StatelessWidget {
  const DCHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 0,
      ),
      child: Stack(
        children: [
          Halo(left: -100, top: -150, diameter: 300),
          Halo(right: -200, top: 0, diameter: 450),
          Halo(top: 100, left: -350, diameter: 600),
        ],
      ),
    );
  }
}
