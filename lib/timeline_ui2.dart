import 'package:flutter/material.dart';

class TimelineUi2 extends StatefulWidget {
  const TimelineUi2({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TimelineUi2State();
  }
}

class TimelineUi2State extends State<TimelineUi2> {
  int selectedIndex = -1;
  List<String> items = <String>[
    "Today",
    "Tomorrow",
    "Pick a day",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: SafeArea(
          child: Container(
              width: double.infinity,
              height: 700,
              margin: const EdgeInsets.all(11.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(7)),
              ),
              child: Column(
                children: [
                  sectionFirst(),
                ],
              ))),
    );
  }

  Widget sectionFirst() {
    return Container(
      width: double.infinity,
      height: 600,
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const Text(
            "Schedule Summary",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 19,
                fontWeight: FontWeight.w600),
          ),
          const Divider(
            color: Colors.black,
            height: 36,
          ),
          sectionSecondUi()
        ],
      ),
    );
  }

  Widget sectionSecondUi() {
    return Container(
      width: double.infinity,
      height: 350,
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue.shade800),
        borderRadius: const BorderRadius.all(Radius.circular(7)),
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              "Geevida",
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue.shade800),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    child: Text(
                      "Patient Name",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Text(
                    "Patient Name",
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 12),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    child: Text(
                      "Membership plan",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 13,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Text(
                    "VIP Individual",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  const Icon(
                    Icons.edit,
                    color: Colors.orange,
                    size: 19,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    child: Text(
                      "Service Name",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Text(
                    "Management",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  const Icon(
                    Icons.edit,
                    color: Colors.orange,
                    size: 19,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          yourSessionUi(),
          const SizedBox(height: 20),
          SizedBox(
            width: 300,
            child: Text(
              "Please Test your connection at least 24 hours before your appointment."
                  .toUpperCase(),
              style: TextStyle(
                fontSize: 11,
                color: Colors.blue.shade900,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget yourSessionUi() {
    return Container(
      width: double.infinity,
      height: 140,
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(7)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your Session",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 19,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(Icons.watch_later_outlined, color: Colors.amber),
              Text('  30 mins'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today at HH:MM',
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                width: 150,
                height: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  gradient: LinearGradient(
                    colors: [Colors.orangeAccent, Colors.deepOrange],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                  ),
                ),
                child: FlatButton(
                  child: const Text(
                    'Re-schedule',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
