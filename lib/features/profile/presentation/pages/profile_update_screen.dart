import 'package:flutter/material.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/curved_header.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/notification_bell_icon.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/pop_installed_custom_app_bar.dart';
import 'package:ostad_expense_tracker_project/features/profile/presentation/widgets/account_screen_user_info.dart';

class ProfileUpdateScreen extends StatefulWidget {
  const ProfileUpdateScreen({super.key});

  static const String name = "profile-update-screen";

  @override
  State<ProfileUpdateScreen> createState() => _ProfileUpdateScreenState();
}

class _ProfileUpdateScreenState extends State<ProfileUpdateScreen> {
  bool obsecureText = true;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _numberOfCardsFocusNode = FocusNode();
  final FocusNode _numberOfBankAccountsFocusNode = FocusNode();
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _numberOfCardsTEController =
      TextEditingController();
  final TextEditingController _numberOfBankAccountsTEController =
      TextEditingController();

  @override
  void initState() {
    _nameFocusNode.addListener(() => setState(() {}));
    _emailFocusNode.addListener(() => setState(() {}));
    _passwordFocusNode.addListener(() => setState(() {}));
    _numberOfCardsFocusNode.addListener(() => setState(() {}));
    _numberOfBankAccountsFocusNode.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const Color focusColor = Color(0xFF6A4BBC);
    const Color defaultColor = Colors.black;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            CurvedHeader(),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 20, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PopInstalledCustomAppBar(
                    labelText: "Profile",
                    trailingIcon: notification_bell_icon(hasUnread: true),
                  ),
                  SizedBox(height: 50),
                  accountScreenUserInfo(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 9, 10, 0),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          TextFormField(
                            focusNode: _nameFocusNode,
                            controller: _nameTEController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                              color:
                                  _nameFocusNode.hasFocus
                                      ? defaultColor
                                      : defaultColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: "Roboto",
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
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 14,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xffDDDDDD),
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF6A4BBC),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF6A4BBC),
                                  width: 2,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              if (value?.trim().isEmpty ?? true) {
                                return "Enter the name";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 17),
                          TextFormField(
                            focusNode: _emailFocusNode,
                            controller: _emailTEController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color:
                                  _emailFocusNode.hasFocus
                                      ? defaultColor
                                      : defaultColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: "Roboto",
                            ),
                            decoration: InputDecoration(
                              labelText: "Email",
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
                                borderSide: BorderSide(
                                  color: Color(0xffDDDDDD),
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF6A4BBC),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF6A4BBC),
                                  width: 2,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              if (value?.trim().isEmpty ?? true) {
                                return "Enter the email";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 17),
                          TextFormField(
                            focusNode: _passwordFocusNode,
                            controller: _passwordTEController,
                            obscureText: obsecureText,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                              color:
                                  _passwordFocusNode.hasFocus
                                      ? defaultColor
                                      : defaultColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: "Roboto",
                            ),
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 12.0),
                                    child: Image.asset("asset/images/img_2.png",fit: BoxFit.contain,),
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    obsecureText = !obsecureText;
                                  });
                                },
                              ),
                              suffixIconConstraints: BoxConstraints(
                                minHeight: 35,
                                minWidth: 35,
                              ),
                              labelText: "Password",
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
                                borderSide: BorderSide(
                                  color: Color(0xffDDDDDD),
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF6A4BBC),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF6A4BBC),
                                  width: 2,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              if (value?.trim().isEmpty ?? true) {
                                return "Enter the password";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 17),
                          TextFormField(
                            focusNode: _numberOfCardsFocusNode,
                            controller: _numberOfCardsTEController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              color:
                              _numberOfCardsFocusNode.hasFocus
                                      ? defaultColor
                                      : defaultColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: "Roboto",
                            ),
                            decoration: InputDecoration(
                              labelText: "Number of cards",
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
                                borderSide: BorderSide(
                                  color: Color(0xffDDDDDD),
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF6A4BBC),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF6A4BBC),
                                  width: 2,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              if (value?.trim().isEmpty ?? true) {
                                return "Enter the number of cards";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 17),
                          TextFormField(
                            focusNode: _numberOfBankAccountsFocusNode,
                            controller: _numberOfBankAccountsTEController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              color:
                              _numberOfBankAccountsFocusNode.hasFocus
                                      ? defaultColor
                                      : defaultColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: "Roboto",
                            ),
                            decoration: InputDecoration(
                              labelText: "Number of Bank Accounts",
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
                                borderSide: BorderSide(
                                  color: Color(0xffDDDDDD),
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF6A4BBC),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFF6A4BBC),
                                  width: 2,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              if (value?.trim().isEmpty ?? true) {
                                return "Enter the number of bank accounts";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 17),
                          Center(
                            child: SizedBox(
                              width: 160,
                              child: ElevatedButton(style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: focusColor,
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                minimumSize: Size(80, 30), // shrink it
                              ),onPressed: () {}, child: Center(
                                child: Text("Update profile",style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                                ),),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
