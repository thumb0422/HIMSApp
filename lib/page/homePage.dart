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
    setState(() {

    });
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
        child: FutureBuilder(
            future: _future,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<int> datas = snapshot.data;
                return Container(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(5),
                    children: List.generate(datas.length, (index) {
                      return Center(
                        child: SingleView(
                          data: datas[index],
                          callback: () {},
                        ),
                      );
                    }),
                  ),
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
