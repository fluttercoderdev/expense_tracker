import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); // initialize the id with a unique value using the uuid package;

  final String id; // unique identifier for the expense
  final String title; // title of the expense
  final double amount; // decimal number, e.g., 12.99
  final DateTime date; // date and time of the expense
  final Category category; // e.g., food, travel, leisure, work
}
