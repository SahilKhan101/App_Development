import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';


class WorldTime {

  String location; //location name for the UI
  String time = 'null'; //the time in the location
  String flag; // url to an asset flag icon
  String url; //location url for the api endpoint
  bool isDayTime = false; //true or false if daytime or not

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {

    //make request
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    //print(data);

    //get properties from data
    String datetime = data['datetime'];
    String offset1 = data['utc_offset'].substring(1,3);
    String offset2 = data['utc_offset'].substring(4,6);
    //print(datetime);
    //print(offset);

    //create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset1), minutes: int.parse(offset2)));
    //print(now);

    isDayTime = now.hour > 6 && now.hour < 20 ? true : false;

    // set the time property
    //time = now.toString();
    time = DateFormat.jm().format(now);
  }
}

/*
//for handling errors
class WorldTime {

  String location; //location name for the UI
  String time = 'null'; //the time in the location
  String flag; // url to an asset flag icon
  String url; //location url for the api endpoint

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {

    try {

      //make request
      Response response = await get(
          Uri.parse('http://worldtimeapi.org/api/timezones/$url'));
      Map data = jsonDecode(response.body);
      //print(data);

      //get properties from data
      String datetime = data['datetime'];
      String offset1 = data['utc_offset'].substring(1, 3);
      String offset2 = data['utc_offset'].substring(4, 6);
      //print(datetime);
      //print(offset);

      //create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(
          Duration(hours: int.parse(offset1), minutes: int.parse(offset2)));
      //print(now);

      // set the time property
      time = now.toString();
    }
    catch(e){
      print('caught error : $e');
      time = "couldn't get time data";
    }
  }
}
*/
