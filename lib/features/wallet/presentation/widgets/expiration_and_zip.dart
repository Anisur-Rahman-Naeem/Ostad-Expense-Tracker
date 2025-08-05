import 'package:flutter/material.dart';

class ExpirationAndZip extends StatelessWidget {
  const ExpirationAndZip({
    super.key,
    required FocusNode expirationFocusNode,
    required TextEditingController expirationTEController,
    required this.focusColor,
    required this.defaultColor,
    required FocusNode zipFocusNode,
    required TextEditingController zipTEController,
  }) : _expirationFocusNode = expirationFocusNode,
        _expirationTEController = expirationTEController,
        _zipFocusNode = zipFocusNode,
        _zipTEController = zipTEController;

  final FocusNode _expirationFocusNode;
  final TextEditingController _expirationTEController;
  final Color focusColor;
  final Color defaultColor;
  final FocusNode _zipFocusNode;
  final TextEditingController _zipTEController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 180,
          child: TextFormField(
            focusNode: _expirationFocusNode,
            controller: _expirationTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: _expirationFocusNode.hasFocus ? focusColor : defaultColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: "Inter",
            ),
            decoration: InputDecoration(
              labelText: "EXPIRATION MM/YY",
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
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 14,
              ),
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
                return "Enter the expiration date";
              }
              return null;
            },
          ),
        ),
        SizedBox(
          width: 120,
          child: TextFormField(
            focusNode: _zipFocusNode,
            controller: _zipTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: _zipFocusNode.hasFocus ? focusColor : defaultColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: "Inter",
            ),
            decoration: InputDecoration(
              labelText: "ZIP",
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
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 14,
              ),
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
                return "Enter the zip";
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
