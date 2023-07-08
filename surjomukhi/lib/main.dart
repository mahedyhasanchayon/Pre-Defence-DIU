import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';
import 'login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Builder(
                builder: (context) => InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  ),
                  child: Image.asset(
                    "assets/images/1.png",
                    width: 300,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              SpinKitFoldingCube(
                color: Colors.greenAccent,
                size: 50.0,
              )
            ],
          ),
        ),

        // GestureDetector(
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(builder: (context) => LoginScreen()),
        //     );
        //   },
        //   child: SizedBox(
        //     width: double.infinity,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Image.asset(
        //           "assets/images/1.png",
        //           width: 300,
        //         ),
        //         SizedBox(
        //           height: 30.0,
        //         ),
        //         SpinKitFoldingCube(
        //           color: Colors.greenAccent,
        //           size: 50.0,
        //         )
        //       ],
        //     ),
        //   ),
        // )
      )),
    );
  }
}
