import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/sky-dusk.jpg'),
                    fit: BoxFit.fill
                ),
                  borderRadius: BorderRadius.circular(12)
              ),
              height: 210,
              width: 400,
              padding: EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Column(
                children: [
                  Text(
                    "My Prayers.Club",
                    style: TextStyle(fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9),
                    child: Text("Create AI generated personalized breathing exercise videos as per your feelings",
                      style: TextStyle(fontSize: 17,
                          color: Colors.white,),
                      textAlign: TextAlign.center,
                    ),
                  ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10.0),
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.greenAccent,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20)
                           )
                         ),
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(CupertinoIcons.sparkles),
                              Text("CREATE YOUR VIDEO")
                            ],
                          )),
                     ),
                ],
              ),
              ),
            ),
          )
        ),
      );
  }
}