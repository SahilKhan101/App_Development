import 'package:flutter/material.dart';
/*
void main() {
  runApp(MaterialApp(
    home: Text('Hey Ninjas'),
  ));
}
*/

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

/*
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          'Hello Ninjas',
          style: TextStyle(
            fontSize: 40.0,
            letterSpacing: 2.0,
            color: Colors.green[600],
            fontFamily: 'IndieFlower',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.purple[600],
      ),
    );
  }
}
*/

/*
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        /*
        child: Image(
          //image: NetworkImage('https://i.pinimg.com/564x/d5/3d/b4/d53db460a2bc657ef7bca32da2d88833.jpg')
          image: AssetImage("assets/im2.jpg"),
        ),
        */
        /*
        //child: Image.asset('assets/im1.jpg'),
        child: Image.network('https://i.pinimg.com/564x/d5/3d/b4/d53db460a2bc657ef7bca32da2d88833.jpg')
        */
        /*
        child: Icon(
          Icons.lock_clock_rounded,
          color: Colors.orange,
          size: 100.0,
        ),
        */
        /*
        child: RaisedButton(    //or FlatButton
          onPressed: () {
            print('You clicked me');
          },
          child: Text('click me'),
          color: Colors.teal,
        ),
        */
        /*
        child: RaisedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.mail
          ),
          label: Text('mail me'),
          color: Colors.amber,
        ),
        */
        child: IconButton(
          onPressed: (){
            print('you clicked me');
          },
          icon: Icon(Icons.alternate_email, size: 30.0),
          color: Colors.amber,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.purple[600],
      ),
    );
  }
}
*/

/*
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      /*
      body: Container(
        padding: EdgeInsets.fromLTRB(10.0,20.0,30.0,40.0), //write "EdgeInsets." and you will get more options
        margin: EdgeInsets.all(30.0),
        color: Colors.grey[400],
        child: Text('Hello'),
      ),
      */
      /*
      body: Padding(    //But you can't use 'Margin' and 'Color' properties here
        padding: EdgeInsets.all(90.0),
        child: Text('Hello'),
      ),
      */
      /*
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello, World!'),
          FlatButton(
              onPressed: () {},
              child: Text('Click me'),
              color: Colors.amber,
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          )
        ],
      ),
      */
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          /*
          Row(
            children: [
              Text('hello,'),
              Text('All'),
            ],
          ),
          */
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.pinkAccent,
            child: Text('two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.amber,
            child: Text('three'),
          ),
        ]

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.purple[600],
      ),
    );
  }
}
*/

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: Image.asset('assets/im1.jpg')
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.purple[600],
      ),
    );
  }
}

