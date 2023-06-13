import 'package:flutter/material.dart';

class MedicalUI extends StatefulWidget {
  const MedicalUI({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MedicalUIState();
  }
}

class MedicalUIState extends State<MedicalUI> {
  int? selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

// Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.blue),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text('Schedules your virtual consultation',
            style: TextStyle(
                color: Colors.blue, fontSize: 17, fontWeight: FontWeight.w700)),
      ), //A
      body: SafeArea(
          child: Container(
              width: double.infinity,
              height: 700,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(7)),
              ),
              child: Column(
                children: [
                  sectionFirst(),
                  sectionSecond(),
                ],
              ))),
    );
  }
}

Widget sectionSecond() {
  return Container(
    width: double.infinity,
    height: 300,
    margin: const EdgeInsets.all(11.0),
    padding: const EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blueAccent),
      borderRadius: const BorderRadius.all(Radius.circular(7)),
    ),
    child: Container(
      margin: const EdgeInsets.all(11.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Enter details",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.blue),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Reason for cancelling",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.blue.shade800),
          ),
          const SizedBox(
            height: 15,
          ),
          const TextField(
            maxLines: 3,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'your comment here...',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              gradient: LinearGradient(
                colors: [Colors.pink, Colors.yellow],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
              ),
            ),
            child: FlatButton(
              child: const Text(
                'Cancel Event',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    ),
  );
}

Widget sectionFirst() {
  return Container(
      width: double.infinity,
      height: 210,
      margin: const EdgeInsets.all(11.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: const BorderRadius.all(Radius.circular(7)),
      ),
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Patient Name",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Management",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue.shade800),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const [
                Icon(Icons.watch_later_outlined, color: Colors.amber),
                Text('30 mins'),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const [
                Icon(
                  Icons.pin_drop,
                  color: Colors.amber,
                ),
                Text('Ahmedabad'),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Please Text your connection least 24 hours before your appointment"
                  .toUpperCase(),
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue.shade800),
            ),
          ],
        ),
      ));
}

Widget editText(String labelName, String hintText) {
  return Container(
    padding: const EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: TextStyle(
              color: Colors.blue.shade900, fontWeight: FontWeight.w700),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 13),
            // enabledBorder: InputBorder.none,
          ),
        )
      ],
    ),
  );
}

Widget deleteBox(
    String labelName, String emailText, String relationship, String addOn) {
  return Card(
    elevation: 5,
    shape: const RoundedRectangleBorder(
      side: BorderSide(
        color: Colors.blue,
      ),
    ),
    child: Container(
      width: 200,
      padding: const EdgeInsets.all(7),
      margin: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                labelName,
                style: TextStyle(
                    color: Colors.blue.shade900, fontWeight: FontWeight.w700),
              ),
              const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email-ID",
                style: TextStyle(
                    color: Colors.blue.shade900, fontWeight: FontWeight.w700),
              ),
              Text(
                emailText,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                "Relationship",
                style: TextStyle(
                    color: Colors.blue.shade900, fontWeight: FontWeight.w700),
              ),
              Text(
                relationship,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  addOn,
                  style: const TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.w200),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget labelBox(String labelName, String str, bool dropBoxBool) {
  return Column(
    children: [
      SizedBox(
        width: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelName,
              style: TextStyle(
                  color: Colors.blue.shade900, fontWeight: FontWeight.w700),
            ),
            if (dropBoxBool) ...[
              // SizedBox(
              //   width: 80,
              //   child: DropdownButton<String>(
              //     onChanged: (String? value) async {},
              //     focusColor: Colors.white,
              //     value: _chosenValue,
              //     //elevation: 5,
              //     style: TextStyle(color: Colors.white),
              //     iconEnabledColor: Colors.black,
              //     items: <String>[
              //       'Android',
              //       'IOS',
              //       'Flutter',
              //       'Node',
              //       'Java',
              //       'Python',
              //       'PHP',
              //     ].map<DropdownMenuItem<String>>((String value) {
              //       return DropdownMenuItem<String>(
              //         value: value,
              //         child: Text(
              //           value,
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       );
              //     }).toList(),
              //     hint: Text(
              //       "Please choose a langauage",
              //       style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 14,
              //           fontWeight: FontWeight.w500),
              //     ),
              //   ),
              // ),
            ] else ...[
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  hintText: str,
                  hintStyle: const TextStyle(fontSize: 13),
                  // enabledBorder: InputBorder.none,
                ),
              ),
            ]
          ],
        ),
      ),
    ],
  );
}

Widget billingAddress(String Name) {
  return Container(
    child: Column(
      children: [
        Row(
          children: [
            Image.network(
              "https://picsum.photos/200/300",
              width: 45,
              height: 45,
            ),
            SizedBox(
              width: 10,
            ),
            Text(Name),
          ],
        ),
        Divider(
          thickness: 1.0,
          color: Colors.grey,
        ),
      ],
    ),
  );
}
