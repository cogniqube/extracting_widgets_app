import 'package:flutter/material.dart';
import 'package:extracting_widgets_app/Quote_class.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard({required this.quote });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text!,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54
              ),
            ),

            SizedBox(height: 6.0,),

            Text(
              quote.author!,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.red[400],
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
