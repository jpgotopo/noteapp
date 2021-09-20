import 'package:flutter/material.dart';
import 'package:notes_app/pages/home_page.dart';
import 'package:notes_app/pages/register_page.dart';
import 'package:notes_app/widgets/customHyperLink_widget.dart';
import 'package:provider/provider.dart';

import 'models/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //user provider
        Provider<User>(create: (context) => new User())
      ],
      child: MaterialApp(
        title: "Note App",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Center(
          child: CustomHyperLink(
              label: "myCustom Link ",
              callback: () {},
              hoverColor: Colors.purple,
              defaultColor: Colors.white),
        ),
      ),
    );
  }
}
