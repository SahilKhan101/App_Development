import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quotes.dart';


class QuoteCard extends StatelessWidget {
/*  //Delete this
  const QuoteCard({
    Key? key,
  }) : super(key: key);
*/

  final Quote quote;//Add 'final' because the 'quote' here can't change over time as it is inside StatelessWidget here
  final Function delete;
  QuoteCard({ required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
              onPressed: (){delete();},
              label: Text('delete quote'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
