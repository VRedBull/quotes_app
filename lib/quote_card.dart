import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.teal,
      child: Column(
        children: [
          Text(
            quote.text,
            style: TextStyle(fontSize: 17, color: Colors.grey[600]),
          ),
          SizedBox(
            child: Divider(
              color: Colors.teal[200],
              height: 10,
              indent: 20,
              endIndent: 20,
              thickness: 0.5,
            ),
          ),
          Text(
            quote.author,
            style: TextStyle(fontSize: 12, color: Colors.grey[800]),
          ),
          SizedBox(height: 8),
          FlatButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete_outline_rounded),
              label: Text('Delete quote'))
        ],
      ),
    );
  }
}
