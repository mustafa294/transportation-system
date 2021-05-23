import 'package:flutter/material.dart';
import 'package:transportation_system/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Container(
//               color: Colors.red,
//               height: 50,
//               child: Text("HEllo"),
//             ),
//             Container(
//               height: 50,
//               color: Colors.blue,
//               child: Text("HEllo"),
//             ),
//             Container(
//               height: 50,
//               color: Colors.pink,
//               child: Text("HEllo"),
//             ),
//             Expanded(
//               child: Container(
//                 color: Colors.orange,
//                 child: ListView(
//                   children: [
//                     Container(
//                       height: 100,
//                       child: Text("Its Me"),
//                     ),
//                     Container(
//                       height: 100,
//                       child: Text("Its Me"),
//                     ),
//                     Container(
//                       height: 100,
//                       child: Text("Its Me"),
//                     ),
//                     Container(
//                       height: 100,
//                       child: Text("Its Me"),
//                     ),
//                     Container(
//                       height: 100,
//                       child: Text("Its Me"),
//                     ),
//                     Container(
//                       height: 100,
//                       child: Text("Its Me"),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
