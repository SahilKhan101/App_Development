import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

//was for learning
/*
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  void getData() async {

    //simulate network request for a username
    /*
    await Future.delayed(Duration(seconds: 3), (){
      print('yoshi');
    });
    */
    String username = await Future.delayed(Duration(seconds: 3), (){
      return 'yoshi';
    });

    //simulate network to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), (){
      return 'Coder, Machine Learner, App Developer';
    });

    //print('statement'); //this doesn't wait for upper statements to be done
    print('$username - $bio');
  }

  @override
  void initState() {  //have deleted the TO-DO line
    super.initState();
    //print('initState function ran');
    getData(); //further statements below this can execute while there is some waiting process being done in the getData()
    print('hey there!');
  }

  @override
  Widget build(BuildContext context) {
    //print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter is $counter'),
      ),
    );
  }
}
*/


class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Kolkata', location: 'India', flag: 'india.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'America/Phoenix', location: 'Phoenix', flag: 'usa.png'),
    WorldTime(url: 'America/Havana', location: 'Havana', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(url: 'Asia/Hong_Kong', location: 'Hong Kong', flag: 'hong_kong.jpg'),
    WorldTime(url: 'Asia/Singapore', location: 'Singapore', flag: 'singapore.jpg'),
    WorldTime(url: 'Atlantic/Bermuda', location: 'Bermuda', flag: 'bermuda.jpg'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    // navigate to home screen
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime
    });
  }

  @override
  Widget build(BuildContext context) {
    //print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  //print(locations[index].location);
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
