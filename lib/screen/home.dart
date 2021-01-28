

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/model/dummy.dart';
import 'package:test_app/service/dummydata.service.dart';
import 'package:test_app/widget/dummy-item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() =>_HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  final DummyService service = DummyService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text('TEST APP',textAlign: TextAlign.center,),
        // leading: Icon(Icons.menu)
      ),
      body: FutureBuilder(
        future: service.getData(),
        builder: (BuildContext context, AsyncSnapshot<List<DummyModel>> snapshot) {
          List<DummyModel> data = snapshot.data;
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Container(
            padding: EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for(var i in data)
                    DummyItem(
                      item: i,
                    )
                ],
              ),
            ),
          );
        },
      )
    );
  }
}