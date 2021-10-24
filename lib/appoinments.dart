import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:json_table/json_table.dart';

class appoinments extends StatefulWidget {
  @override
  _appoinmentsState createState() => _appoinmentsState();
}

class _appoinmentsState extends State<appoinments> {
  final String jsonSample =
      '[{"Date":"2021-10-24","Department":"Dentistry","Doctor":"Dr. Fiona Fang"},'
      '{"Date":"2021-09-24","Department":"Dentistry","Doctor":"Dr. Fiona Fang"},'
      '{"Date":"2021-09-22","Department":"General Medicine","Doctor":"Dr. Tony Stark"},'
      '{"Date":"2021-03-14","Department":"Dentistry","Doctor":"Dr. Fiona Fang"},'
      '{"Date":"2021-03-04","Department":"General Medicine","Doctor":"Dr. Tony Stark"},'
      '{"Date":"2020-10-24","Department":"Dentistry","Doctor":"Dr. Fiona Fang"},'
      '{"Date":"2020-09-04","Department":"General Medicine","Doctor":"Dr. Tony Stark"}]';
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    var json = jsonDecode(jsonSample);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: toggle
            ? Column(
          children: [
            JsonTable(
              json,
              showColumnToggle: true,
              tableHeaderBuilder: (header) {
                return Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      color: Colors.grey[300]),
                  child: Text(
                    header != null ? header : 'Unknown',
                    textAlign: TextAlign.center,
                  ),
                );
              },
              tableCellBuilder: (value) {
                return Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 2.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5,
                          // color: Colors.grey.withOpacity(0.5)
                          )
                      ),
                  child: Text(
                    value,
                    textAlign: TextAlign.center,
                  ),
                );
              },
              allowRowHighlight: true,
              //rowHighlightColor: Colors.yellow[500].withOpacity(0.7),
              paginationRowCount: 20,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Group 2:\n\nCeaser Y \nPaul Cleetus \nAnudeep A")
          ],
        )
            : Center(
          child: Text(getPrettyJSONString(jsonSample)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.grid_on),
          onPressed: () {
            setState(
                  () {
                toggle = !toggle;
              },
            );
          }),
    );
  }

  String getPrettyJSONString(jsonObject) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String jsonString = encoder.convert(json.decode(jsonObject));
    return jsonString;
  }
}

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: appoinments(),
//     );
//   }
// }