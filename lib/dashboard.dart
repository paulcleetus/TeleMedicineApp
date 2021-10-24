import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return dashboardState();
  }
}

class dashboardState extends State<dashboard> {

  final GlobalKey<dashboardState> _formKey = GlobalKey<dashboardState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('TeleMedicine | Gp 2')),
        body: Container(
          margin: EdgeInsets.all(24),
          child: Form( child: CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text("New Appointment",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,),
                      color: Colors.green[100],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/appoinments',
                        );
                      },
                      child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Appointments',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      color: Colors.green[200],
                    ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Pharmacy',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,),
                      color: Colors.green[300],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Lab Reports',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,),
                      color: Colors.green[400],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Reminder Alerts',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,),
                      color: Colors.green[500],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Feedback',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,),
                      color: Colors.green[600],
                    ),
                  ],
                ),
              ),
            ],
          )

          ),
        ),
    );
  }
}
