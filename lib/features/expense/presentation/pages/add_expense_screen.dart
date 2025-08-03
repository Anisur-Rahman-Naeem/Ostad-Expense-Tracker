import 'package:another_dashed_container/another_dashed_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/curved_header.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  static const String name = "add-expense-screen";

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _nametextTEController = TextEditingController();
  final TextEditingController _amounttextTEController = TextEditingController();
  final TextEditingController _dateTimetextTEController = TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _amountFocusNode = FocusNode();
  final FocusNode _dateFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _nameFocusNode.addListener(() => setState(() {}));
    _amountFocusNode.addListener(() => setState(() {}));
    _dateFocusNode.addListener(() => setState(() {}));
  }
  @override
  Widget build(BuildContext context) {
    const Color focusColor = Color(0xFF6A4BBC);
    const Color defaultColor = Color(0xff666666);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CurvedHeader(),
          SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 20, 10, 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.chevron_left,
                              size: 30,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              context.pop();
                            }
                        ),
                        Text(
                          "Add Expense",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Inter",
                            color: Colors.white,
                          ),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz,color: Colors.white,)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Card(
                      elevation: 4,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("NAME",style: TextStyle(
                              color: Color(0xff666666),
                              fontFamily: "Inter",
                              fontSize: 12,
                              fontWeight: FontWeight.w500
                            ),),
                            SizedBox(height: 2,),
                            TextFormField(
                              focusNode: _nameFocusNode,
                              controller: _nametextTEController,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                color: _nameFocusNode.hasFocus ? focusColor : defaultColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontFamily: "Inter"
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 14),
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
                                    color: Color(0xffDDDDDD),
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
                                if (value?.trim().isEmpty ?? true){
                                  return "Enter the name of the expense";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10,),

                            Text("AMOUNT",style: TextStyle(
                              color: Color(0xff666666),
                              fontFamily: "Inter",
                              fontSize: 12,
                              fontWeight: FontWeight.w500
                            ),),
                            SizedBox(height: 2,),
                            TextFormField(
                              controller: _amounttextTEController,
                              focusNode: _amountFocusNode,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                color: _amountFocusNode.hasFocus ? focusColor : defaultColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontFamily: "Inter"
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.attach_money, size: 20,color: _amountFocusNode.hasFocus ? focusColor : defaultColor,),
                                suffixIcon: TextButton(onPressed: () {
                                  _amounttextTEController.clear();
                                }, child: Text("Clear",style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter",
                                  color: _amountFocusNode.hasFocus ? focusColor : defaultColor
                                ),)),
                                contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 14),
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
                                    color: Color(0xffDDDDDD),
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
                                if (value?.trim().isEmpty ?? true){
                                  return "Enter the amount";
                                }
                                return null;
                              },
                            ),

                            SizedBox(height: 10,),
                            Text("DATE",style: TextStyle(
                                color: Color(0xff666666),
                                fontFamily: "Inter",
                                fontSize: 12,
                                fontWeight: FontWeight.w500
                            ),),
                            SizedBox(height: 2,),
                            TextFormField(
                              focusNode: _dateFocusNode,
                              controller: _dateTimetextTEController,
                              readOnly: true,
                              // onTap: () async {
                              //   FocusScope.of(context).requestFocus(FocusNode());
                              //
                              //   final DateTime? picked = await showDatePicker(
                              //       context: context,
                              //       initialDate: DateTime.now(),
                              //       firstDate: DateTime(2000),
                              //       lastDate: DateTime(2100),
                              //   );
                              //
                              //   if (picked != null) {
                              //     _dateTimetextTEController.text = DateFormat('dd-MM-yyyy').format(picked);
                              //   }
                              // },
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              style: TextStyle(
                                  color: _dateFocusNode.hasFocus ? focusColor : defaultColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: "Inter"
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 14),
                                suffixIcon: IconButton(onPressed: () async{
                                  final DateTime? picked = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2100),
                                  );

                                  if (picked != null) {
                                    _dateTimetextTEController.text = DateFormat('EEE, d MMMM yyyy').format(picked);
                                  }
                                }, icon: Icon(Icons.calendar_today_outlined,)),
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
                                    color: Color(0xffDDDDDD),
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
                                if (value?.trim().isEmpty ?? true){
                                  return "Enter the name of the expense";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10,),
                            Text("INVOICE",style: TextStyle(
                                color: Color(0xff666666),
                                fontFamily: "Inter",
                                fontSize: 12,
                                fontWeight: FontWeight.w500
                            ),),
                            SizedBox(height: 2,),
                            GestureDetector(
                              onTap: (){
                                print("clicked");
                              },
                              child: DashedContainer(
                                  dashColor: Color(0xffDDDDDD),
                                  borderRadius: 12.0,
                                  dashedLength: 10.0,
                                  blankLength: 5.0,
                                  strokeWidth: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                                    child: Container(
                                    color: Colors.white,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff666666),
                                              ),
                                              child: Center(
                                                child: Icon(Icons.add),
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Text("Add Invoice",style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xff666666),
                                            ),)
                                          ],
                                        ),
                                      ),
                                                                ),
                                  )),
                            ),
                            SizedBox(height: 15,)
                          ],
                        ),
                      ),),
                    ),
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _amountFocusNode.dispose();
    _dateFocusNode.dispose();
    _amounttextTEController.dispose();
    _dateTimetextTEController.dispose();
    _nametextTEController.dispose();
    super.dispose();
  }
}
