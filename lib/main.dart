import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainView());
  }
}

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TIG333 TODO'),
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondView()));
              })
        ],
      ),
      body: _checkList(),
    );
  }

  Widget _checkList() {
    return Column(children: [
      Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => _row(_list()[index]),
              itemCount: _list().length)),
      const Align(
          alignment: Alignment.bottomRight,
          child: Icon(
            Icons.add,
            size: 75.0,
          ))
    ]);
  }

  List _list() {
    return ['Write a book', 'Do homework', 'Tidy room', 'Watch TV'];
  }

  Widget _row(text) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (bool? value) {}),
          Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              child: Text(text)),
          const Expanded(
              child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.delete_outline,
                    ),
                  ))),
        ],
      ),
    );
  }
}

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TIG333 TODO'),
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondView()));
              })
        ],
      ),
    );
  }
}
