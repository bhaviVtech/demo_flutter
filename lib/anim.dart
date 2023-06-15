import 'package:flutter/material.dart';

class Anim extends StatefulWidget {
  const Anim({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimState();
  }
}

class AnimState extends State<Anim> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
