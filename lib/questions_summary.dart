import 'package:flutter/material.dart';
import 'package:quiz_app/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        // kinda like nested scroll view, allowing just one child
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(itemData: data);
          }).toList(),
        ),
      ),
    );
  }
}
