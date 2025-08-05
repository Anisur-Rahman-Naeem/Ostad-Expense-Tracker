import 'package:flutter/material.dart';

class CreditCardNumberCvc extends StatelessWidget {
  const CreditCardNumberCvc({
    super.key,
    required FocusNode debitCardNumberFocusNode,
    required TextEditingController debitCardNumberTEController,
    required this.focusColor,
    required this.defaultColor,
    required FocusNode cvcFocusNode,
    required TextEditingController cvcTEController,
  }) : _debitCardNumberFocusNode = debitCardNumberFocusNode,
        _debitCardNumberTEController = debitCardNumberTEController,
        _cvcFocusNode = cvcFocusNode,
        _cvcTEController = cvcTEController;

  final FocusNode _debitCardNumberFocusNode;
  final TextEditingController _debitCardNumberTEController;
  final Color focusColor;
  final Color defaultColor;
  final FocusNode _cvcFocusNode;
  final TextEditingController _cvcTEController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 180,
          child: TextFormField(
            focusNode: _debitCardNumberFocusNode,
            controller: _debitCardNumberTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color:
              _debitCardNumberFocusNode.hasFocus
                  ? focusColor
                  : defaultColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: "Inter",
            ),
            decoration: InputDecoration(
              labelText: "DEBIT CARD NUMBER",
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
                return "Enter the debit card number,";
              }
              return null;
            },
          ),
        ),
        SizedBox(
          width: 120,
          child: TextFormField(
            focusNode: _cvcFocusNode,
            controller: _cvcTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: _cvcFocusNode.hasFocus ? focusColor : defaultColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: "Inter",
            ),
            decoration: InputDecoration(
              labelText: "CVC",
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
                return "Enter the cvc";
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
