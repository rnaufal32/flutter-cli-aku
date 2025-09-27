import 'package:flutter/material.dart';
import '../../config/colors.dart';

enum LabelPosition { inside, outside, outsideLeft, outsideTop }

class InputField extends StatelessWidget {
  final String label;
  final String? placeholder;
  final LabelPosition labelPosition;
  final TextEditingController? controller;
  final bool enabled;
  final TextInputType keyboardType;

  const InputField({
    Key? key,
    required this.label,
    this.placeholder,
    this.labelPosition = LabelPosition.inside,
    this.controller,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  Widget _buildLabel(BuildContext context) {
    final labelWidget = Text(
      label,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Colors.black,
      ),
    );
    switch (labelPosition) {
      case LabelPosition.outside:
        return Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: labelWidget,
        );
      case LabelPosition.outsideLeft:
        return Row(
          children: [
            labelWidget,
            const SizedBox(width: 12),
          ],
        );
      case LabelPosition.outsideTop:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            labelWidget,
            const SizedBox(height: 4),
          ],
        );
      case LabelPosition.inside:
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      hintText: placeholder,
      hintStyle: const TextStyle(color: Colors.grey),
      filled: true,
      fillColor: MyColors.background,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      labelText: labelPosition == LabelPosition.inside ? label : null,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Colors.black,
      ),
    );

    Widget textField = TextField(
      controller: controller,
      enabled: enabled,
      keyboardType: keyboardType,
      decoration: inputDecoration,
    );

    switch (labelPosition) {
      case LabelPosition.outside:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLabel(context),
            textField,
          ],
        );
      case LabelPosition.outsideLeft:
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(child: textField),
          ],
        );
      case LabelPosition.outsideTop:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            textField,
          ],
        );
      case LabelPosition.inside:
      default:
        return textField;
    }
  }
}
