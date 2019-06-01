import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  final List<int> _listData = List<int>.generate(100, (i) => i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[TopButtonsView(), HeaderRowListView()],
      ),
    );
  }
}

class TopButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.black45,
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              child: Text("First", textAlign: TextAlign.center),
              onTap: () {
                print("First");
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Text("Second", textAlign: TextAlign.center),
              onTap: () {
                print("Second");
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: Text("Third", textAlign: TextAlign.center),
              onTap: () {
                print("Third");
              },
            ),
          )
        ],
      ),
    );
  }
}

class HeaderRowListView extends StatelessWidget {
  final List<int> _listData = List<int>.generate(10, (i) => i);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: _listData.map((i) {
          return Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.account_box,
                    color: Colors.blue,
                    size: 26.0,
                  ),
                  title: Text(
                    "Globant Pune",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text("Flutter"),
                ),
                Divider(
                  color: Colors.blue,
                  indent: 16.0,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
