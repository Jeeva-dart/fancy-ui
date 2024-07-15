import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final double height;
  const Gap.small({super.key, this.height = 10.0});
  const Gap.medium({super.key, this.height = 20.0});
  const Gap.large({super.key, this.height = 30.0});
  const Gap.extraLarge({super.key, this.height = 40.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}