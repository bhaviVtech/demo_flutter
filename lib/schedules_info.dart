import 'package:flutter/material.dart';

class SchedulesInfo extends StatefulWidget {
  const SchedulesInfo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SchedulesInfoState();
  }
}

class SchedulesInfoState extends State<SchedulesInfo>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedules Info"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              margin: const EdgeInsets.all(11.0),
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: const BorderRadius.all(Radius.circular(7)),
              ),
              child: Column(
                children: [
                  firstBox(),
                  const Padding(
                    padding: EdgeInsets.all(9),
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Additional info',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomBox(),
          ],
        ),
      ),
    );
  }

  Widget firstBox() {
    return Container(
      width: double.infinity,
      height: 140,
      //  margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 8,
              ),
              const Text(
                "March 23 2023",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "01:00 PM - 01:30 PM PST",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade800),
              ),
            ],
          ),
          const VerticalDivider(
            color: Colors.grey,
            thickness: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 90,
                    child: Text(
                      "Patient Name",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Patient Name1",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue.shade800),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 90,
                    child: Text(
                      "Email Address",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Patient@gmail1.com",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue.shade800),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 90,
                    child: Text(
                      "Created at",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    "03-10-2023 4:30 PM",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue.shade800),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 90,
                    child: Text(
                      "Category",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Health issues",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue.shade800),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 90,
                    child: Text(
                      "Status",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Active",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue.shade800),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget bottomBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "File info",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(
                25.0,
              ),
              border: Border.all(
                color: Colors.blue.shade900,
                width: 1,
              ),
            ),
            child: TabBar(
              controller: _tabController!,
              indicator: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue.shade200, Colors.blueAccent.shade700],
                ),

                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                // color: Colors.blue,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.blue.shade900,
              tabs: const [
                Tab(
                  text: 'This schedule',
                ),
                Tab(
                  text: 'All files',
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 80,
          margin: const EdgeInsets.all(11.0),
          padding: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(7)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.history,
                size: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "March 23 2023",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "01:00 PM - 01:30 PM PST",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue.shade800),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 25,
              ),
            ],
          ),
        )
      ],
    );
  }
}
