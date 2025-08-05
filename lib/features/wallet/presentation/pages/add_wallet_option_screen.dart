import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/curved_header.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/custom_app_bar.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/notification_bell_icon.dart';
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

  @override
  void initState() {
    _nameOnCardFocusNode.addListener(() => setState(() {}));
    _debitCardNumberFocusNode.addListener(() => setState(() {}));
    _cvcFocusNode.addListener(() => setState(() {}));
    _expirationFocusNode.addListener(() => setState(() {}));
    _zipFocusNode.addListener(() => setState(() {}));
    super.initState();
  }

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
                CustomAppBar(
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
                          SizedBox(height: 15),
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
                                    : Center(child: Text('Accounts UI')),
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
