import 'package:flutter/material.dart';

class custom_text_field extends StatelessWidget {
  const custom_text_field({
    super.key,
    required TextEditingController customTEController,
  }) : _customTEController = customTEController;

  final TextEditingController _customTEController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _customTEController,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: "Username",
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
              return "Email your username";
            }
            return null;
          },
        ),
      ],
    );
  }
}
