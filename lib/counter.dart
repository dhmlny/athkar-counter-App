// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  int index = 0;
  List<String> athkar = [
    " أَسْتَغْفِرُ اللَّهَ",
    "سُبْحَانَ اللَّهِ",
    "الْحَمْدُ لِلَّهِ",
    "اللهُ أكبرُ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 40, 43),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 40, 43),
        shadowColor: Colors.white,
        elevation: 1.5,
        title: Text(
          "{ وَاذْكُر رَّبَّكَ إِذَا نَسِيتَ }",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 180,
            width: 250,
            margin: EdgeInsets.only(top: 35, left: 35, right: 35),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      },
                      icon: Icon(
                        Icons.change_circle,
                        color: Colors.red[600],
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "$counter",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            width: 350,
            height: 270,
            margin: EdgeInsets.only(
              top: 35,
              left: 35,
              right: 35,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 120,
                  child: Center(
                    child: Text(
                      athkar[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue),
                      child: Center(
                        child: FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              if (index > 0) {
                                index--;
                                counter = 0;
                              }
                            });
                          },
                          backgroundColor: Colors.blue[700],
                          child: Center(
                            child: Icon(
                              Icons.arrow_left_rounded,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue),
                      child: Center(
                        child: FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              if (index < athkar.length - 1) {
                                index++;
                                counter = 0;
                              }
                            });
                          },
                          backgroundColor: Colors.blue[700],
                          child: Center(
                            child: Icon(
                              Icons.arrow_right_rounded,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    maximumSize: Size(80, 80),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
