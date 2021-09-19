import 'package:flutter/material.dart';

onAlertWait(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
            title: Center(
          child: Column(
            children: [
              Text("Please Wait...."),
              Container(
                  width: 150, height: 150, child: Image.asset("loading.gif"))
            ],
          ),
        ));
      });
}
