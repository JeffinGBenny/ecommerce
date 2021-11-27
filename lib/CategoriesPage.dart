import 'package:flutter/material.dart';

import 'Filters.dart';
class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  String dropdownValue1 = 'Fusion wear';
  String dropdownValue2 = 'Western wear';
  String dropdownValue3 = 'Lingerie and sleepwear';
  String dropdownValue4 = 'Footwear';
  String dropdownValue5 = 'Sports and activewear';
  String dropdownValue6 = 'Beauty and personal care';
  String dropdownValue7 = 'jewellery';
  String dropdownValue8 = 'Gadgets';
  String dropdownValue9 = 'Plus size';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        home:Scaffold(body: SafeArea(
        child: SingleChildScrollView(
        child: Container(
        child:Column(
        children: [
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
    children: [
    SizedBox(width: 10),

    Container(
    width: 26,
    alignment: Alignment.center,
    child: Icon(
    Icons.arrow_back,

    ),

    /* decoration: BoxDecoration(
                                        color: Colors.black12,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.deepOrange ,width : 1)
                                    ),*/),
    SizedBox(width: 10),
    Container(
    //color: Colors.black,
    alignment: Alignment.centerLeft,
    width: size.width *.73,// .58,
    height: 30,
    //color: Colors.red,
    child: Text('Categories>Women',
    style: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.bold))),

    ],
    ),
    ),
          Container(

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                        spreadRadius: 5,
                        color: Colors.black12)
                  ]),
              child:Row(
                children:[
                  FloatingActionButton(onPressed: (){ Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => filters()),
                  ); },
                    child:Text('Filters'),
                    backgroundColor: Color(0xFF4AD594),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),),
                  Column(
                    children: [
                      Text('Men',
                          style: TextStyle(

                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('T-shirts,tops,bottoms..'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image (image: AssetImage('assets/women.jpg'
                    ), height:150,
                      width:150,),
                  ),
                ],
              )
          ),
              DropdownButton<String>(
              value: dropdownValue1,
    icon: const Icon(Icons.arrow_drop_down_outlined),
    iconSize: 24,
    elevation: 16,
    style: const TextStyle(
    color: Colors.black
    ),
   underline: Container(
    height: 2,
    //color: Colors.deepPurpleAccent,
    ),
    onChanged: (String? newValue) {
    setState(() {
    dropdownValue1 = newValue!;
    });
    },
    items: <String>['Fusion wear', 'Two', 'Free', 'Four']
        .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    })
    .toList(),
    ),

          DropdownButton<String>(
            value: dropdownValue2,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
                color: Colors.black
            ),
            underline: Container(
              height: 2,
              //color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue2 = newValue!;
              });
            },
            items: <String>['Western wear', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
                .toList(),
          ),
          DropdownButton<String>(
            value: dropdownValue3,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
                color: Colors.black
            ),
            underline: Container(
              height: 2,
              //color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue3 = newValue!;
              });
            },
            items: <String>['Lingerie and sleepwear', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
                .toList(),
          ),
          DropdownButton<String>(
            value: dropdownValue4,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
                color: Colors.black
            ),
            underline: Container(
              height: 2,
              //color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue4 = newValue!;
              });
            },
            items: <String>['Footwear', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
                .toList(),
          ),
          DropdownButton<String>(
            value: dropdownValue5,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
                color: Colors.black
            ),
            underline: Container(
              height: 2,
              //color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue5 = newValue!;
              });
            },
            items: <String>['Sports and activewear', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
                .toList(),
          ),
          DropdownButton<String>(
            value: dropdownValue6,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
                color: Colors.black
            ),
            underline: Container(
              height: 2,
              //color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue6 = newValue!;
              });
            },
            items: <String>['Beauty and personal care', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
                .toList(),
          ),
          DropdownButton<String>(
            value: dropdownValue7,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
                color: Colors.black
            ),
            underline: Container(
              height: 2,
              //color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue7 = newValue!;
              });
            },
            items: <String>['jewellery', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
                .toList(),
          ),
          DropdownButton<String>(
            value: dropdownValue8,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
                color: Colors.black
            ),
            underline: Container(
              height: 2,
              //color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue8 = newValue!;
              });
            },
            items: <String>['Gadgets', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
                .toList(),
          ),
          DropdownButton<String>(
            value: dropdownValue9,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
                color: Colors.black
            ),
            underline: Container(
              height: 2,
              //color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue9 = newValue!;
              });
            },
            items: <String>['Plus size', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
                .toList(),
          ),
    ],
    ),
    ),
    ),
    ),
    ),
    );




  }
}
