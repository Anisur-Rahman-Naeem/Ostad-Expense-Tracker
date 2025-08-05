import 'package:flutter/material.dart';

class NameOnCard extends StatelessWidget {
  const NameOnCard({
    super.key,
    required FocusNode nameOnCardFocusNode,
    required TextEditingController nameOnCardTEController,
    required this.focusColor,
    required this.defaultColor,
  }) : _nameOnCardFocusNode = nameOnCardFocusNode,
        _nameOnCardTEController = nameOnCardTEController;

  final FocusNode _nameOnCardFocusNode;
  final TextEditingController _nameOnCardTEController;
  final Color focusColor;
  final Color defaultColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _nameOnCardFocusNode,
      controller: _nameOnCardTEController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.text,
      style: TextStyle(
        color: _nameOnCardFocusNode.hasFocus ? focusColor : defaultColor,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        fontFamily: "Inter",
      ),
      decoration: InputDecoration(
        labelText: "Name",
        labelStyle: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: Color(0xFF8391a1),
        ),
        hintStyle: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Color(0xFF8391a1),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xffDDDDDD), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xffDDDDDD), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFF6A4BBC), width: 2),
        ),
      ),
      validator: (String? value) {
        if (value?.trim().isEmpty ?? true) {
          return "Enter the name";
        }
        return null;
      },
    );
  }
}
