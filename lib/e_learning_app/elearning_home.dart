import 'package:flutter/material.dart';

class ELearningHome extends StatelessWidget {
  const ELearningHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("E-Learning"),),
      body: Center(
        child: Text("E-Learning \n Home Page"),
      ),
    );
  }
}
