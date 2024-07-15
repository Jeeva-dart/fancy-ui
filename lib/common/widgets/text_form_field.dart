import 'package:flutter/material.dart';

class UITextFormField extends StatelessWidget {
  final InputDecoration? decoration;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool readOnly;
  final bool showCursor;
  final String? initialValue;
  final bool enableInteractiveSelection;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldSetter<String>? onSaved;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final bool enabled;
  
  const UITextFormField({
    super.key,
    this.decoration,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.focusNode,
    this.autofocus = false,
    this.readOnly = false,
    this.showCursor = false,
    this.initialValue,
    this.enableInteractiveSelection = true,
    this.maxLength,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      textInputAction: textInputAction,
      focusNode: focusNode,
      autofocus: autofocus,
      readOnly: readOnly,
      showCursor: showCursor,
      initialValue: initialValue,
      enableInteractiveSelection: enableInteractiveSelection,
      maxLength: maxLength,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      enabled: enabled,
    );
  }
}