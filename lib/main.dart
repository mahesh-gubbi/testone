import 'dart:async';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  final petStream = StreamController<data>();

  @override
  void initState() {
    // final petService = PetService();
    // _petStream = petService.petStream.stream;
    super.initState();
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
      body: StreamBuilder<String>(
        // stream: petStream,
        builder: (context, state){
          return Text("e.name");
        }


      ),
    );
  }
}


class data{

}
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text('Flutter Pet Stream'),
//     ),
//     body: StreamBuilder<PetEvent>(
//       stream: _petStream,
//       builder: (context, state) {
//         // Check if the stream has data
//         if (!state.hasData) {
//           // If not, show a loading indicator
//           return Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 CircularProgressIndicator(),
//                 Text('Waiting for some pets...')
//               ],
//             ),
//           );
//         }
//         // Otherwise, show the output of the Stream
//         return Stack(
//           children: [
//             Center(
//               child: AnimatedSize(
//                 duration: Duration(milliseconds: 300),
//                 clipBehavior: Clip.antiAlias,
//                 child: Card(
//                   child: Wrap(
//                     alignment: WrapAlignment.center,
//                     children: [
//                       ...?state.data?.activePets.map(
//                             (e) => Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.pets,
//                                 size: 30,
//                                 color: e.color,
//                               ),
//                               Text(e.name)
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SafeArea(
//                 child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Card(
//                     child: Text(
//                       state.data!.pet.name +
//                           ' is ' +
//                           describeEnum(state.data!.pet.state).toLowerCase() +
//                           ' and is ' +
//                           describeEnum(state.data!.action).toLowerCase() +
//                           '.',
//                     ),
//                   ),
//                 ))
//           ],
//         );
//       },
//     ),
//   );
// }

// import 'dart:async';
//
// import 'package:easy_opener/easy_opener.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: EasyOpener(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Icon(Icons.pets),
//         ),
//         backgroundColor: Colors.purple,
//         onComplete: () {},
//       ),
//     );
//   }
// }
