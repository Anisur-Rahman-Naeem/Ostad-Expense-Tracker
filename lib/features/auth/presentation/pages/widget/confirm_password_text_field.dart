import 'package:flutter/material.dart';

class ConfirmPasswordTextField extends StatelessWidget {
  const ConfirmPasswordTextField({
    super.key,
    required TextEditingController confirmPasswordTEController,
  }) : _confirmPasswordTEController = confirmPasswordTEController;

  final TextEditingController _confirmPasswordTEController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _confirmPasswordTEController,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "Confirm password",
              suffixIcon: IconButton(onPressed: () {}, icon: Image.asset('asset/images/password_show.png',width: 20,height: 20,fit: BoxFit.contain,),),
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
              return "Email your password";
            }
            return null;
          },
        ),
      ],
    );
  }
}
