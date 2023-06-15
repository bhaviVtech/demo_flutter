import 'package:flutter/material.dart';

class ErrorUI extends StatefulWidget {
  const ErrorUI({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ErrorUIState();
  }
}

class ErrorUIState extends State<ErrorUI> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Image.asset(
              'assets/error.png',
              height: 400,
              width: 400,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Refresh",
              style: TextStyle(
                fontSize: 15,
                color: Colors.blue,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Apologies, but it seems like something went wrong",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Please try again,If the problem persists ,please contact our support team for assistance",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(Icons.email_outlined, color: Colors.blue),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'info@geevida.com',
                  style: TextStyle(color: Colors.blue.shade900),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
