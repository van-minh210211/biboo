import 'package:biboo/Widget/searchbook.dart';
import 'package:flutter/material.dart';
class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child:  SingleChildScrollView(
          child: Column(
            children: [
              Searchbook(),
            ],
          ),
        ),
      ),
    );
  }
}
