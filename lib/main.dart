import 'package:birdcatalogue/routes/route_generator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:birdcatalogue/ui/homepage.dart';

void main() async {
  runApp(MyApp());
}

// class LifecycleEventHandler extends WidgetsBindingObserver {
//   final AsyncCallback resumeCallBack;

//   LifecycleEventHandler({this.resumeCallBack});

//   @override
//   Future<Null> didChangeAppLifecycleState(AppLifecycleState state) async {
//     switch (state) {
//       case AppLifecycleState.inactive:
//       case AppLifecycleState.paused:
//       case AppLifecycleState.suspending:
//       case AppLifecycleState.resumed:
//         await resumeCallBack();
//         break;
//     }
//   }
// }

class MyApp extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<MyApp> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Show error message if initialization failed
    if (_error) {
      return Container();
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      return CircularProgressIndicator();
    }

    return MaterialApp(
      title: 'Bird Catalog',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: appTheme(),
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}

// class MyApp extends StatelessWidget {
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       // Initialize FlutterFire:
//       future: _initialization,
//       builder: (context, snapshot) {
//         // Check for errors
//         if (snapshot.hasError) {
//           return Container();
//         }

//         // Once complete, show your application
//         if (snapshot.connectionState == ConnectionState.done) {
//           return MaterialApp(
//             title: 'Bird Catalog',
//             debugShowCheckedModeBanner: false,
//             home: HomePage(),
//             theme: appTheme(),
//             onGenerateRoute: RouterGenerator.generateRoute,
//           );
//         }

//         // Otherwise, show something whilst waiting for initialization to complete
//         return Container();
//       },
//     );
//   }
// }
