import 'package:flutter/material.dart';
import '../tool.dart';
import '../view/singleView.dart';
import '../page/detailPage.dart';

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
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hims'),
        centerTitle: true,
//        automaticallyImplyLeading: false, //无返回按钮  todo :这个跟Drawer冲突
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
                          callback: () {
                            Navigator.push<Object>(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return DetailPage(
                                    data: datas[index].toString(),
                                  );
                                },
                              ),
                            );
                          },
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
      drawer: Drawer(
//        semanticLabel: 'asdasdasd',
        child: ListView(
          padding: EdgeInsets.only(top: 120),
          children: <Widget>[
            ListTile(title: Text('Item 1'),
              leading: new CircleAvatar(child: new Icon(Icons.school),),
              onTap: () {
                Navigator.pop(context);
              },),
            ListTile(title: Text('Item 2'),
              leading: new CircleAvatar(child: new Text('B2'),),
              onTap: () {
                Navigator.pop(context);
              },),
            ListTile(title: Text('Item 3'),
              leading: new CircleAvatar(
                child: new Icon(Icons.list),),
              onTap: () {
                Navigator.pop(context);
              },),
          ],
        ),
      ),
    );
  }
}
