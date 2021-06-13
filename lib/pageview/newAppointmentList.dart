import 'package:flutter/material.dart';

class newAppointmentPage extends StatefulWidget {
  newAppointmentPage({Key key}) : super(key: key);

  @override
  _newAppointmentPageState createState() => _newAppointmentPageState();
}

class _newAppointmentPageState extends State<newAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*1,
      width: MediaQuery.of(context).size.width*1,
      color: Color.fromRGBO(0, 50, 71, 1),
        child: Center(child: Text('data2'))),
    );
  }
}
