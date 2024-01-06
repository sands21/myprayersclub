import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

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
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.greenAccent,
          backgroundColor: Colors.blueGrey[800],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
              label: "Profile"
            ),
          ],
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only( top: 12.0),
          child: Column(
            children: [
              Container(
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
                      child: Text(loremIpsum(paragraphs: 1, words: 15),
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
              Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 200),
                child: Text("Trending Breathwork",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    Container(
                      height: 87,
                      width: 145,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 87,
                      width: 145,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(20)
                        ),
                        ),
                      ],
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 230),
                child: Text("Your Breathwork",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 87,
                      width: 145,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 87,
                      width: 145,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(right: 6),
                child: Container(
                  height: 95,
                  width: 385,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/sky-accent.jpg'),
                        fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                  loremIpsum(paragraphs: 1, words: 10),
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
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
                                  Text("Create video")
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}