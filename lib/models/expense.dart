import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.restaurant,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

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

  String get formattedDate {
    return formatter.format(
      date,
    ); // format the date using the DateFormat class from the intl package
  }
}
