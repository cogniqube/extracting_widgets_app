import 'package:flutter/material.dart';
import 'package:extracting_widgets_app/Quote_class.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
    home:QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Sarim Shahzad', text:'Be yourself, everyone else is ready taken'),
    Quote(author:'Ali', text:  'I have nothing to declare except my genius',),
    Quote(author: 'Qasim', text:'The truth is rarely pure and never simple')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
          style: TextStyle(
              fontSize: 27, fontWeight: FontWeight.bold, letterSpacing: 5),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[400],
        elevation: 4,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              // Add your favorite functionality here
            },
          ),
        ],
      ),
      body: Column(
        children:quotes.map((quote) => QuoteCard(quote: quote)).toList()
      ),
    );
  }
}

