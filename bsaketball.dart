import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text ('    Basketball Score Counter '),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamApoints',
                        style: const TextStyle(
                          fontSize: 140,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints += 1;
                          });
                        },
                        child: const Text('+1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints += 2;
                          });
                        },
                        child: const Text(
                          '+2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        child: const Text(
                          '+3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamBpoints',
                        style: const TextStyle(
                          fontSize: 140,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints += 1;
                          });
                        },
                        child: const Text(
                          '+1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints += 2;
                          });
                        },
                        child: const Text(
                          '+2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints += 3;
                          });
                        },
                        child: const Text(
                          '+3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white24,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamBpoints = 0;
                    teamApoints = 0;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
