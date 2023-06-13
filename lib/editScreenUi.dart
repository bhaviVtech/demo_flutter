import 'package:flutter/material.dart';
import 'medicalui.dart';

class EditScreenUi extends StatefulWidget {
  const EditScreenUi({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EditScreenUiState();
  }
}

class EditScreenUiState extends State<EditScreenUi> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Edit Screen",
      )),
      body: SafeArea(
        child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.shade900),
              borderRadius: const BorderRadius.all(Radius.circular(7)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Billing Address",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 19,
                              fontWeight: FontWeight.w700)),
                      GestureDetector(
                        onTap: () {
                          print("edit");
                        },
                        child: Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(
                                color: Colors.blue.shade900,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(7)),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.edit_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                editText("Address", "Address here"),
                editText(
                    "Apt / Ste", "Apartment name,street number and name here"),
                //   editText("Country", "Country name here"),
                //   editText("State", "State name here"),
                //   editText("City", "City name here"),
                //   editText("Zip code", "Zip code here"),
                deleteBox("Name1", "name@gmail.com", "Father",
                    "Added on 25-05-2023,20:02 pm"),

                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade900),
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "License Number",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.blue,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          labelBox("State", "", true),
                          labelBox("License no.", "", false),
                          labelBox("Status", " ", false),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          labelBox("State", "", true),
                          labelBox("License no.", "", false),
                          labelBox("Status", " ", false),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Hospital Affiliations",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.blue,
                            fontWeight: FontWeight.w700),
                      ),
                      const TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: "test-1",
                          hintStyle: TextStyle(fontSize: 13),
                          // enabledBorder: InputBorder.none,
                        ),
                      ),
                      const TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: "test-1",
                          hintStyle: TextStyle(fontSize: 13),
                          // enabledBorder: InputBorder.none,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
