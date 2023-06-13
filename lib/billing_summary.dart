import 'package:flutter/material.dart';

import 'medicalui.dart';

class billingSummary extends StatefulWidget {
  const billingSummary({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return billingSummaryState();
  }
}

class billingSummaryState extends State<billingSummary> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.shade900),
          borderRadius: const BorderRadius.all(Radius.circular(7)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Text("Billing Summary",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 19,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Membership",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.w600)),
                Text("650",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 19,
                        fontWeight: FontWeight.w700)),
              ],
            ),
            Divider(
              thickness: 1.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.w600)),
                Text("650",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 19,
                        fontWeight: FontWeight.w700)),
              ],
            ),
            Divider(
              thickness: 2.0,
              color: Colors.blue.shade900,
            ),
            SizedBox(
              height: 15,
            ),
            Text("Promotion Code",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 19,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 4,
            ),
            Text(
                "If you have your promotional code. Just Enter it to form and apply",
                style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 12,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 250,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Promo Code',
                    ),
                  ),
                ),
                Container(
                  //   width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade100,
                        Colors.blue.shade900,
                      ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                    ),
                  ),
                  child: FlatButton(
                    child: const Text(
                      'Apply',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2.0,
              color: Colors.blue.shade900,
            ),
            Text("Choose Your Preferred Foundation to Donate",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 19,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 7,
            ),
            Text(
                "You have an option to contribute 10% of your payment to the Charity",
                style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 12,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 15,
            ),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade900),
                  borderRadius: const BorderRadius.all(Radius.circular(7)),
                ),
                child: Column(children: [
                  billingAddress("Name"),
                  billingAddress("Phone no."),
                ])),
          ],
        ),
      )),
    );
  }
}
