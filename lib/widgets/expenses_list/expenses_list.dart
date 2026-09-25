import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    //ListView.builder is used to create a scrollable list of expense items
    return ListView.builder(
      itemCount: expenses.length, //determine the number of items in the list based on the length of the expenses list
      itemBuilder: (ctx, index) => ExpenseItem(
        expenses[index],
      ), // Display the title of each expense item
    );
  }
}
