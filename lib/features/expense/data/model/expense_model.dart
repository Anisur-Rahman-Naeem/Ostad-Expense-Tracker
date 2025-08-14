import 'dart:convert';

import 'package:ostad_expense_tracker_project/features/common/data/model/base_model.dart';
import 'package:ostad_expense_tracker_project/features/expense/domain/entity/expense_info.dart';

class ExpenseModel implements BaseModel<Expense> {
  // "id": 1,
  // "title": "Updated",
  // "amount": 99,
  // "date": "2025-07-13T00:00:00.000+00:00"

  final int id;
  final String title;
  final int amount;
  final String date;

  ExpenseModel({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });

  factory ExpenseModel.fromJson(Map<String, dynamic> jsonData){
    return ExpenseModel(
        id: jsonData['id'],
        title: jsonData['title'],
        amount: jsonData['amount'],
        date: jsonData['date']);
  }

  @override
  Expense toEntity() {
    return Expense(
        id: id,
        title: title,
        amount: amount,
        date: date,
    );
  }
}
