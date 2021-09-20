import 'package:flutter/material.dart';
import 'package:notes_app/models/user_model.dart';
import 'package:notes_app/widgets/DetailNote_widget.dart';
import 'package:provider/provider.dart';
import 'package:notes_app/widgets/MenuNote_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _customAppbar(context),
        body: Container(
            padding: EdgeInsets.all(25),
            child: Row(children: [
              Expanded(flex: 3, child: menuNote()),
              Expanded(flex: 1, child: Container(color: Colors.transparent)),
              Expanded(flex: 5, child: detailNote())
            ])));
  }

  _customAppbar(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Icon(Icons.person, color: Colors.blue)),
          Center(
            child: Text(Provider.of<User>(context, listen: false).username,
                style: TextStyle(color: Colors.black)),
          ),
          Spacer(),
          Center(
              child:
                  Text("Log out", style: TextStyle(color: Colors.blueAccent))),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app, color: Colors.blueAccent)),
          Container(
            width: 20.0,
          )
        ]);
  }
}
