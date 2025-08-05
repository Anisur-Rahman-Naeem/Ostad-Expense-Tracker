import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ExpirationAndZip extends StatefulWidget {
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
  State<ExpirationAndZip> createState() => _ExpirationAndZipState();
}

class _ExpirationAndZipState extends State<ExpirationAndZip> {
  final expiryDateFormatter = MaskTextInputFormatter(
    mask: '##/##',
    filter: { "#": RegExp(r'[0-9]') },
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 180,
          child: TextFormField(
            focusNode: widget._expirationFocusNode,
            controller: widget._expirationTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            inputFormatters: [expiryDateFormatter],
            style: TextStyle(
              color: widget._expirationFocusNode.hasFocus ? widget.focusColor : widget.defaultColor,
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
            focusNode: widget._zipFocusNode,
            controller: widget._zipTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: widget._zipFocusNode.hasFocus ? widget.focusColor : widget.defaultColor,
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
