import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: NewApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class NewApp extends StatefulWidget {
  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Narendra modi',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Nelson Mandela',
        text: 'The truth is rarely pure and never simple'),
    Quote(author: 'John Cena', text: 'Never give up!')
  ];

  Widget quoteTemplate(quote) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Quotes'),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Column(
          children: quotes.map((quote) {
            return quoteTemplate(quote);
          }).toList(),
        ));
  }
}
