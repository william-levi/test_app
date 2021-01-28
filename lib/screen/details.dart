
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/model/dummy.dart';

class DummyDetails extends StatelessWidget {
  final DummyModel arguments;

  DummyDetails(this.arguments);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          title: Text('TEST APP')
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
                image:DecorationImage(
                    image: NetworkImage(arguments.pictureUrl),
                    fit: BoxFit.cover
                ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 20.0,
              left: 20.0,
              bottom: 10.0
            ),
            child: Text(arguments.designation, style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 20.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Hersteller: ',
                              style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.0)
                          ),
                          TextSpan(
                              text: arguments.manufacturer,
                              style: TextStyle(color: Colors.black,fontSize: 16.0)
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Kategorie: ',
                              style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.0)
                          ),
                          TextSpan(
                              text: arguments.category,
                              style: TextStyle(color: Colors.black,fontSize: 16.0)
                          ),
                        ]
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Portion: ',
                              style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.0)
                          ),
                          TextSpan(
                              text: arguments.portionInGrams.toString(),
                              style: TextStyle(color: Colors.black,fontSize: 16.0)
                          ),
                          TextSpan(
                              text: arguments.unit,
                              style: TextStyle(color: Colors.black,fontSize: 16.0)
                          ),
                        ]
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Zucker: ',
                                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.0)
                              ),
                              TextSpan(
                                  text: arguments.sugar.toString(),
                                  style: TextStyle(color: Colors.black,fontSize: 16.0)
                              ),
                            ]
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Kalorien: ',
                                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.0)
                              ),
                              TextSpan(
                                  text: arguments.calories.toString(),
                                  style: TextStyle(color: Colors.black,fontSize: 16.0)
                              ),
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Eiweiss: ',
                                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.0)
                              ),
                              TextSpan(
                                  text: arguments.protein.toString(),
                                  style: TextStyle(color: Colors.black,fontSize: 16.0)
                              ),
                            ]
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Carbs: ',
                                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.0)
                              ),
                              TextSpan(
                                  text: arguments.carbs.toString(),
                                  style: TextStyle(color: Colors.black,fontSize: 16.0)
                              ),
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Fett: ',
                                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.0)
                              ),
                              TextSpan(
                                  text: arguments.fat.toString(),
                                  style: TextStyle(color: Colors.black,fontSize: 16.0)
                              ),
                            ]
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Wasser: ',
                                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 16.0)
                              ),
                              TextSpan(
                                  text: arguments.water.toString(),
                                  style: TextStyle(color: Colors.black,fontSize: 16.0)
                              ),
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}