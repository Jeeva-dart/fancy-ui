import 'package:flutter/material.dart';

class UIButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final bool preloader;
  const UIButton({
    super.key,
    this.onPressed,
    required this.child,
    this.preloader = false,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      // style: ButtonStyle(padding: WidgetStateProperty.all(const EdgeInsets.all(20.0))),
      onPressed: onPressed, 
      child: preloader ? const SizedBox(width:20,height: 20, child:CircularProgressIndicator(strokeWidth: 2,)) : child
    );
  }
}

class UIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final bool preloader;
  const UIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.preloader = false,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      icon: Icon(icon),
      onPressed: onPressed,
    );
  }
}