import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String data;
  const DetailPage({Key key, this.data}) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Future _future;

  @override
  void initState() {
    super.initState();
    refreshData();
  }

  void refreshData() {
    _future = null;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Text('123123'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          refreshData();
        },
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.green,
        child: Text('刷新'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
