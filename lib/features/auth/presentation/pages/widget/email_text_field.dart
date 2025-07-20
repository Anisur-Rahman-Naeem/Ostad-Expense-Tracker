import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class email_text_field extends StatelessWidget {
  const email_text_field({
    super.key,
    required TextEditingController emailTEController,
  }) : _emailTEController = emailTEController;

  final TextEditingController _emailTEController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _emailTEController,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "Enter your email",
              hintStyle: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF8391a1)
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 1,
                  )
              )
          ),
          validator: (String? value) {
            if (value?.trim().isEmpty ?? true){
              return "Email your email address";
            }
            if (EmailValidator.validate(value!) == false) {
              return "Enter a valid email address";
            }
            return null;
          },
        ),
      ],
    );
  }
}
