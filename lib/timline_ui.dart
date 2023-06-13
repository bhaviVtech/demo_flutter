import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class TimelineUi extends StatefulWidget {
  const TimelineUi({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TimelineUiState();
  }
}

class TimelineUiState extends State<TimelineUi> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trip Timeline"),
      ),
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Timeline(
          //  physics: ScrollPhysics,
          reverse: false,
          children: [
            TimelineModel(
              Card(
                elevation: 2,
                child: Container(
                  color: Colors.white,
                  height: 110,
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.all(5.0),
                  child: Column(children: [
                    Image.network(
                      "https://picsum.photos/seed/picsum/200/300",
                      width: 95,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "2002",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    Text(
                      "Japan",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
              ),
              icon: const Icon(Icons.receipt, color: Colors.white),
              iconBackground: Colors.blue,
            ),
            TimelineModel(
              Card(
                elevation: 2,
                child: Container(
                  color: Colors.white,
                  height: 110,
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.all(5.0),
                  child: Column(children: [
                    Image.network(
                      "https://picsum.photos/id/237/200/300",
                      width: 95,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "2004",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    Text(
                      "Greece",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
              ),
              icon: const Icon(Icons.receipt, color: Colors.white),
              iconBackground: Colors.pinkAccent,
            ),
            TimelineModel(
              Card(
                elevation: 2,
                child: Container(
                  color: Colors.white,
                  height: 110,
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.all(5.0),
                  child: Column(children: [
                    Image.network(
                      "https://picsum.photos/id/238/200/300",
                      width: 95,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "2008",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    Text(
                      "Paris",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
              ),
              icon: const Icon(Icons.receipt, color: Colors.white),
              iconBackground: Colors.yellow,
            ),
            TimelineModel(
              Card(
                elevation: 2,
                child: Container(
                  color: Colors.white,
                  height: 110,
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.all(5.0),
                  child: Column(children: [
                    Image.network(
                      "https://picsum.photos/id/239/200/300",
                      width: 95,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "2009",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    Text(
                      "Canada",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
              ),
              icon: const Icon(Icons.receipt, color: Colors.white),
              iconBackground: Colors.deepOrangeAccent,
            ),
            TimelineModel(
              Card(
                elevation: 2,
                child: Container(
                  color: Colors.white,
                  height: 110,
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.all(5.0),
                  child: Column(children: [
                    Image.network(
                      "https://picsum.photos/id/240/200/300",
                      width: 95,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "2011",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    Text(
                      "USA",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
              ),
              icon: const Icon(Icons.receipt, color: Colors.white),
              iconBackground: Colors.green,
            ),
            TimelineModel(
              Card(
                elevation: 2,
                child: Container(
                  color: Colors.white,
                  height: 110,
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.all(5.0),
                  child: Column(children: [
                    Image.network(
                      "https://picsum.photos/id/241/200/300",
                      width: 95,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "2014",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    Text(
                      "Dubai",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
              ),
              icon: const Icon(Icons.receipt, color: Colors.white),
              iconBackground: Colors.cyanAccent,
            ),
            TimelineModel(
              Card(
                elevation: 2,
                child: Container(
                  color: Colors.white,
                  height: 110,
                  width: 100,
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.all(5.0),
                  child: Column(children: [
                    Image.network(
                      "https://picsum.photos/200",
                      width: 95,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "2022",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    Text(
                      "Nepal",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
              ),
              icon: const Icon(Icons.receipt, color: Colors.white),
              iconBackground: Colors.deepPurple,
            ),
          ],
          position: TimelinePosition.Center,
          iconSize: 40,
          lineColor: Colors.blue,
        ),
      ) //TimelinePage(
          ),
    );
  }
}
