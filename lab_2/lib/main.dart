// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   //void onPressed();
//   late String day;
//   // int currentDay = DateTime.now().day.toInt();
//   // int currentMonth = DateTime.now().month.toInt();
//   // int currentYear = DateTime.now().year.toInt();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Welcome to Flutter'),
//         ),
//         body: /*const Center(
//           child: TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Enter something",
//             ),
//             keyboardType: TextInputType.number,
//           ),
//
//         ),*/
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   //width: 100.0,
//                   margin: EdgeInsets.all(12.0),
//                   padding: EdgeInsets.all(8.0),
//                   decoration:BoxDecoration(
//                       borderRadius:BorderRadius.circular(8),
//                       //color:Colors.green
//                   ),
//                   child: Text("Day",style: TextStyle(color:Colors.black54,fontSize:25),),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(15.0),
//                   padding: EdgeInsets.all(8.0),
//                   decoration:BoxDecoration(
//                       borderRadius:BorderRadius.circular(8),
//                       //color:Colors.green
//                   ),
//                   child: Text("Month",style: TextStyle(color:Colors.black54,fontSize:25),),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(12.0),
//                   padding: EdgeInsets.all(8.0),
//                   decoration:BoxDecoration(
//                       borderRadius:BorderRadius.circular(8),
//                       //color:Colors.green
//                   ),
//                   child: Text("Year",style: TextStyle(color:Colors.black54,fontSize:25),),
//                   //child: TextFormField()
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   width: 100,
//                   //height: 50,
//                   //padding: EdgeInsets.zero,
//
//                   child: TextField(
//                     textAlign: TextAlign.center,
//                     decoration:  InputDecoration(
//                       hintText: "01"
//                     ),
//                     keyboardType: TextInputType.number,
//                     style: TextStyle(fontSize: 25),
//                   ),
//                 ),
//                 Container(
//                   width: 100,
//                   //height: 50,
//                   //padding: EdgeInsets.zero,
//                   child: TextField(
//                     textAlign: TextAlign.center,
//                     decoration: InputDecoration(
//                       //border: OutlineInputBorder(),
//                       hintText: "01",
//                     ),
//                     keyboardType: TextInputType.number,
//                     style: TextStyle(fontSize: 25),
//                   ),
//                 ),
//                 Container(
//                   width: 100,
//                   child: TextField(
//                     textAlign: TextAlign.center,
//                     decoration: InputDecoration(
//                       //border: OutlineInputBorder(),
//                       hintText: "2000",
//                     ),
//                     keyboardType: TextInputType.number,
//                     style: TextStyle(fontSize: 25),
//                   ),
//                 )
//               ]
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children:[
//                 TextButton(
//                     style: ButtonStyle(
//                       foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
//                       textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 25))
//                     ),
//                     onPressed: (){},
//                     child: Text("Submit")
//                 ),
//                 Text("Your age: Unknown",style: TextStyle(color:Colors.indigo,fontSize:25)),
//                 Text("")
//               ]
//             )
//           ],
//         )
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var daysInMonth = [31, 29, 31, 30, 31,30,31,31,30,31,30,31];
  String textAge = "Your age: Unknown";
  String textAgeData = "";
  late int userDay;
  late int userMonth;
  late int userYear;
  final int currentDay = DateTime.now().day.toInt();
  int currentMonth = DateTime.now().month.toInt();
  final int currentYear = DateTime.now().year.toInt();

  void _printAge(){
    setState(() {

      if(userDay == 0 || userDay > daysInMonth[userMonth-1] || userMonth == 0 || userMonth > 12 || userYear > currentYear  || userYear < 0){
        textAge = "Incorrect Data !!!";
        textAgeData = " ";
      }
      else if((userYear == currentYear && (userMonth > currentMonth || (userMonth == currentMonth && userDay > currentDay)))){
        textAge = "You haven't been born yet !";
        textAgeData = " ";
      }
      else{
        if(userMonth < currentMonth){
          int passedDays = 0;
          if(userDay < currentDay){
            passedDays = currentDay - userDay;
            textAgeData = "Your BDay was ${currentMonth - userMonth} months ago and $passedDays days";
          }
          else {
            passedDays = currentDay + (daysInMonth[currentMonth-2] - userDay);
            textAgeData = "Your BDay was ${currentMonth - 1 - userMonth} months ago and $passedDays days";
          }
          textAge = "${currentYear - userYear}";
        }
        else if(userMonth > currentMonth){
          int leftDays = 0;
          if(userDay > currentDay){
            leftDays = userDay - currentDay;
            textAgeData = "Your BDay will be in ${userMonth - currentMonth} months and $leftDays days";
          }
          else {
            leftDays = userDay + (daysInMonth[currentMonth-1] - currentDay);
            textAgeData = "Your BDay will be in ${userMonth - currentMonth - 1} months and $leftDays days";
          }
          textAge = "${currentYear - userYear - 1}";
        }
        else {
          if(userDay > currentDay && userYear == currentYear){
            textAge = "You haven't been born yet !";
            textAgeData = " ";
          }
          else {
            if(userDay > currentDay){
              textAge = "${currentYear - userYear - 1}";
            }
            else textAge = "${currentYear - userYear}";
            textAgeData = "Your BDay is this month";
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          // mainAxisAlignment: MainAxisAlignment.center,
          // children: <Widget>[
          //   const Text(
          //     'You have pushed the button this many times:',
          //   ),
          //   Text(
          //     '$_counter',
          //     style: Theme.of(context).textTheme.headline4,
          //   ),
          // ],
          //

          children: [
            SizedBox(
              height: 150
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  //width: 100.0,
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      //color:Colors.green
                  ),
                  child: Text("Day",style: TextStyle(color:Colors.black87,fontSize:25,fontFamily: "JosefinSans")),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  padding: EdgeInsets.all(8.0),
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      //color:Colors.green
                  ),
                  child: Text("Month",style: TextStyle(color:Colors.black87,fontSize:25,fontFamily: "JosefinSans"),),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      //color:Colors.green
                  ),
                  child: Text("Year",style: TextStyle(color:Colors.black87,fontSize:25,fontFamily: "JosefinSans"),),
                  //child: TextFormField()
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  //height: 50,
                  //padding: EdgeInsets.zero,

                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration:  InputDecoration(
                      hintText: "01"
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 25),
                    onChanged: (value) => userDay = int.parse(value),
                  ),
                ),
                Container(
                  width: 100,
                  //height: 50,
                  //padding: EdgeInsets.zero,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      hintText: "01",
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 25),
                      onChanged: (value) => userMonth = int.parse(value)
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      hintText: "2000",
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 25),
                    onChanged: (value) => userYear = int.parse(value),
                  ),
                )
              ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 150,
                  child:
                  TextButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              )
                          ),
                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.indigo.shade400),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 25))
                      ),
                      onPressed: _printAge,
                      child: Text("Submit")
                  )
                ),
                Padding(
                  padding: EdgeInsets.all(10), //apply padding to all four sides
                  child: Text(
                      int.tryParse(textAge) != null  ? "Your age: $textAge": textAge,
                      style: TextStyle(color:Colors.black87,fontSize:25,fontFamily: "JosefinSans")),
                ),
                //Text("Your age: ${textAge}",style: TextStyle(color:Colors.black87,fontSize:25,fontFamily: "JosefinSans")),
                SizedBox(
                  width: 300,
                  child:
                  Text(textAgeData,
                      style: TextStyle(color:Colors.black87,fontSize:25,fontFamily: "JosefinSans"),
                      textAlign: TextAlign.center
                  ),
                )
              ]
            )
          ]
        ),
      ),
    );
  }
}
