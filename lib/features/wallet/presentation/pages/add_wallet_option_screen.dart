import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/curved_header.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/custom_app_bar.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/notification_bell_icon.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/pop_installed_custom_app_bar.dart';
import 'package:ostad_expense_tracker_project/features/wallet/presentation/widgets/add_your_debit_text.dart';
import 'package:ostad_expense_tracker_project/features/wallet/presentation/widgets/blurry_text_beneath_debit_card.dart';
import 'package:ostad_expense_tracker_project/features/wallet/presentation/widgets/credit_card_number_cvc.dart';
import 'package:ostad_expense_tracker_project/features/wallet/presentation/widgets/debit_card_image.dart';
import 'package:ostad_expense_tracker_project/features/wallet/presentation/widgets/expiration_and_zip.dart';
import 'package:ostad_expense_tracker_project/features/wallet/presentation/widgets/name_on_card.dart';

class AddWalletOptionScreen extends StatefulWidget {
  const AddWalletOptionScreen({super.key});

  static const String name = "add-wallet-option-screen";

  @override
  State<AddWalletOptionScreen> createState() => _AddWalletOptionScreenState();
}

class _AddWalletOptionScreenState extends State<AddWalletOptionScreen> {
  String _selected = 'Cards';
  final TextEditingController _nameOnCardTEController = TextEditingController();
  final TextEditingController _debitCardNumberTEController =
      TextEditingController();
  final TextEditingController _cvcTEController = TextEditingController();
  final TextEditingController _expirationTEController = TextEditingController();
  final TextEditingController _zipTEController = TextEditingController();
  final FocusNode _nameOnCardFocusNode = FocusNode();
  final FocusNode _debitCardNumberFocusNode = FocusNode();
  final FocusNode _cvcFocusNode = FocusNode();
  final FocusNode _expirationFocusNode = FocusNode();
  final FocusNode _zipFocusNode = FocusNode();
  String? _selectedOption;

  @override
  void initState() {
    _nameOnCardFocusNode.addListener(() => setState(() {}));
    _debitCardNumberFocusNode.addListener(() => setState(() {}));
    _cvcFocusNode.addListener(() => setState(() {}));
    _expirationFocusNode.addListener(() => setState(() {}));
    _zipFocusNode.addListener(() => setState(() {}));
    super.initState();
  }

  void _selectOption(String option) {
    setState(() {
      _selectedOption = option;
    });
  }

  bool get isNextEnabled => _selectedOption != null;

  @override
  Widget build(BuildContext context) {
    const Color focusColor = Color(0xFF6A4BBC);
    const Color defaultColor = Color(0xff666666);
    return Scaffold(
      body: Stack(
        children: [
          CurvedHeader(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PopInstalledCustomAppBar(
                  labelText: 'Connect Wallet',
                  trailingIcon: notification_bell_icon(hasUnread: true),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 25,
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 5),
                          Accounts_And_Cards_Separate_Options(),
                          SizedBox(height: 20),
                          Expanded(
                            child:
                                _selected == 'Cards'
                                    ? SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          DebitCardImage(),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 5,
                                              vertical: 5,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AddYourDebitText(),
                                                BlurryTextBeneathDebitCard(),
                                                Form(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      NameOnCard(
                                                        nameOnCardFocusNode:
                                                            _nameOnCardFocusNode,
                                                        nameOnCardTEController:
                                                            _nameOnCardTEController,
                                                        focusColor: focusColor,
                                                        defaultColor:
                                                            defaultColor,
                                                      ),
                                                      SizedBox(height: 10),
                                                      CreditCardNumberCvc(
                                                        debitCardNumberFocusNode:
                                                            _debitCardNumberFocusNode,
                                                        debitCardNumberTEController:
                                                            _debitCardNumberTEController,
                                                        focusColor: focusColor,
                                                        defaultColor:
                                                            defaultColor,
                                                        cvcFocusNode:
                                                            _cvcFocusNode,
                                                        cvcTEController:
                                                            _cvcTEController,
                                                      ),
                                                      SizedBox(height: 10),
                                                      ExpirationAndZip(
                                                        expirationFocusNode:
                                                            _expirationFocusNode,
                                                        expirationTEController:
                                                            _expirationTEController,
                                                        focusColor: focusColor,
                                                        defaultColor:
                                                            defaultColor,
                                                        zipFocusNode:
                                                            _zipFocusNode,
                                                        zipTEController:
                                                            _zipTEController,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                    : Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Column(
                                        children: [
                                          _buildWalletOption(
                                            label: "Bank Link",
                                            subLabel:
                                                "Connect your bank\naccount to deposit & fund",
                                            icon: Icons.account_balance,
                                            optionKey: "bank",
                                          ),
                                          SizedBox(height: 12),
                                          _buildWalletOptionwithImageAsset(
                                            label: "Paypal",
                                            subLabel: "Connect your paypal account",
                                            imagePath: "asset/images/paypal black and white.png",
                                            optionKey: "paypal",
                                          ),
                                          Spacer(),
                                          if(isNextEnabled)
                                            SizedBox(
                                              width: double.infinity,
                                              child: ElevatedButton(style: ElevatedButton.styleFrom(
                                                backgroundColor: Color(0xff4F378A),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12),
                                                ),
                                              ),onPressed: () {}, child: Text("Next",style: TextStyle(
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Colors.white,
                                              ),)),
                                            )
                                        ],
                                      ),
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWalletOption({
    required String label,
    required String subLabel,
    required IconData icon,
    required String optionKey,
  }) {
    final bool isSelected = _selectedOption == optionKey;

    return GestureDetector(
      onTap: () => _selectOption(optionKey),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffE8E3F4) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          // border: Border.all(
          //   color: isSelected ? Color(0xff4F378A) : Colors.grey.shade300,
          //   width: 1.5,
          // ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 36,
              color: isSelected ? Color(0xff4F378A) : Colors.grey,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4F378A),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subLabel,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected) Icon(Icons.check_circle, color: Color(0xff4F378A)),
          ],
        ),
      ),
    );
  }

  Widget _buildWalletOptionwithImageAsset({
    required String label,
    required String subLabel,
    required String imagePath,
    required String optionKey,
  }) {
    final bool isSelected = _selectedOption == optionKey;

    return GestureDetector(
      onTap: () => _selectOption(optionKey),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffE8E3F4) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          // border: Border.all(
          //   color: isSelected ? Color(0xff4F378A) : Colors.grey.shade300,
          //   width: 1.5,
          // ),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 36,
              height: 36,
              color: isSelected ? Color(0xff4F378A) : Colors.grey,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4F378A),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subLabel,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected) Icon(Icons.check_circle, color: Color(0xff4F378A)),
          ],
        ),
      ),
    );
  }

  CupertinoSlidingSegmentedControl<String>
  Accounts_And_Cards_Separate_Options() {
    return CupertinoSlidingSegmentedControl<String>(
      groupValue: _selected,
      children: {
        'Cards': SizedBox(
          width: 120, // 👈 Set width here
          child: Center(
            child: Text(
              'Cards',
              style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ),
        'Accounts': SizedBox(
          width: 120, // 👈 Set width here
          child: Center(
            child: Text(
              'Accounts',
              style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ),
      },
      onValueChanged: (String? value) {
        if (value != null) {
          setState(() {
            _selected = value;
          });
        }
      },
    );
  }
}
