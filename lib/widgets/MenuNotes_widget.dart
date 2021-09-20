import 'package:flutter/material.dart';

Widget menuNotes(BuildContext context) {
  Iterable<List> myArray = [];
  return Card(
      elevation: 8.0,
      color: Colors.blue[50],
      child: Column(children: [
        Container(
            height: 80.0,
            width: double.infinity,
            color: Colors.blue[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: "tag0",
                  onPressed: () {},
                  elevation: 2.0,
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.add),
                ),
                Text("Menu Notes"),
                SizedBox(width: 30.0)
              ],
            )),
        Expanded(
            child: Container(
                child: StreamBuilder<List<dynamic>>(
          builder: (context, snapshot) {
            if (snapshot.data!.length == 0) {
              return Container(
                  child: ListTile(
                onTap: null,
                leading: Icon(Icons.file_copy, color: Colors.blueGrey),
                title: Text("No data..."),
              ));
            } else {
              return Scrollbar(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, i) => ListTile(
                    title: snapshot.data![i],
                  ),
                ),
              );
            }
          },
          stream: Stream.fromIterable(myArray),
          initialData: [],
        ))),
        buildFooter(),
      ]));
}

buildFooter() {
  return Container(
      color: Colors.blueGrey[300],
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.arrow_drop_down_sharp, color: Colors.blueGrey[400]),
        Icon(Icons.arrow_drop_down_sharp, color: Colors.blueGrey[400]),
      ]));
}
