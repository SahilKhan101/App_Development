import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(
    MaterialApp(
      home: QuoteList(),
    )
  );
}


/*
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

/*
  List<String> quotes = [
    'Be yourself; everything else is already taken',
    'I have nothing to declare except my genius',
    'The truth is rarely pure and never simple'
  ];
*/

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everything else is already taken'),
    Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple'),
  ];


  Widget quoteTemplate(quote){
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
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        //children: quotes.map( (quote) => Text(quote) ).toList(),
        //children: quotes.map( (quote) => Text('${quote.text} - ${quote.author}') ).toList(),
        children: quotes.map( (quote) => quoteTemplate(quote) ).toList(),
      ),
    );
  }
}
*/


//Step to Go from previous code to this new code :
//Go to "Flutter Outline" and right click on "Card" Widget and Select "Extract Widget" and name it as for eg:'QuoteCard'
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everything else is already taken'),
    Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple'),
  ];

/* //Delete this
  Widget quoteTemplate(quote){
    return QuoteCard(quote: quote); //Pass this parameter
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
      //children: quotes.map( (quote) => quoteTemplate(quote) ).toList(),
        children: quotes.map( (quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}
