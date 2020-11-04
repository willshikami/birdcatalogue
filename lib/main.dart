import 'package:birdcatalogue/routes/route_generator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:birdcatalogue/ui/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bird Catalog',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: appTheme(),
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
