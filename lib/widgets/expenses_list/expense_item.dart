import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(expense.title, style:Theme.of(context).textTheme.titleLarge ,),
              const SizedBox(height: 4),
              //Display multiple widgets next to each other horizontally
              Row(
                children: [
                  //12.333644 => 12.33
                  //Tells dart that $ should be output as a text and should not be treated as special injection syntax
                  Text('\$${expense.amount.toStringAsFixed(2)}'),
                  //To output category & date next to each other horizontally
                  const Spacer(), //Takes up all space between widget its placed
                  Row(
                    children: [
                      Icon(categoryIcons[expense.category]),
                      const SizedBox(width: 8,),
                      Text(expense.formattedDate),
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
