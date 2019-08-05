import 'package:flutter/material.dart';
import '../tool.dart';
import '../view/singleView.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  Future _future;

  @override
  void initState() {
    super.initState();
    refreshData();
  }

  void refreshData() {
    _future = getMaindata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hims'),
        centerTitle: true,
        automaticallyImplyLeading: false, //无返回按钮
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: FutureBuilder<List<int>>(
            future: _future,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Widget> widgets = List();
                List<int> datas = snapshot.data;
                datas.forEach((item) {
                  widgets.add(SingleView(
                    data: item,
                    callback: () {
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                                builder: (context) => ListPage(
//                                  data: item,
//                                )));
                    },
                  ));
                });
                return Wrap(
                  spacing: 10,
                  runSpacing: 30,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.end,
                  children: widgets,
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }),
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
