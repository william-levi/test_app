

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/model/dummy.dart';

class DummyItem extends StatelessWidget {
  final DummyModel item;
  DummyItem({ this.item });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/details',arguments: item);
      },
      child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(bottom: 10.0),
          height: 100.0,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(23, 43, 77, 1.0),
                    spreadRadius: -10,
                    blurRadius: 12,
                    offset: Offset(0,5)
                )
              ],
              color: Colors.white,
              border: Border.all(
                  color: Colors.transparent
              ),
              borderRadius: BorderRadius.all(Radius.circular(40))
          ),

          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      image:DecorationImage(
                          image: NetworkImage(item.pictureUrl),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(40))
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.designation, style: TextStyle(fontSize: 20)),
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.manufacturer,style: TextStyle(fontSize: 12.0)),
                              Text(item.category, style: TextStyle(fontSize: 10.0),)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    children: [
                      Text('Vegan: ${item.vegan}')
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}