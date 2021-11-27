import 'package:flutter/material.dart';
class filters extends StatefulWidget {
  @override
  _filtersState createState() => _filtersState();
}

class _filtersState extends State<filters> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int _value=6;
    String dropdownValue1 = 'Popularity';
    return MaterialApp(
        home:Scaffold(body:SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child:Column(
            children:[
            Container(
              //color: Colors.black,
                alignment: Alignment.centerLeft,
                width: size.width *.73,// .58,
                height: 40,
                //color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Filters',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                )),
              Text('Sort by',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold)),
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
                items: <String>['Popularity', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                })
                    .toList(),
              ),
              Text('Brand',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('Here and now'),
                       backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),
                    ),

                Container(
                  height: 50,
                  width: 150,
                  child: FloatingActionButton(onPressed: (){ },
                    child:Text('Zara'),
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),),
                ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('Mast & Harbour'),
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),
                    ),

                Container(
                  height: 50,
                  width: 150,
                  child: FloatingActionButton(onPressed: (){ },
                    child:Text('Tokyo Talkies'),
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),),
                ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(height: 50,
                      width: 150,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('Vogue'),
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),
                    ),

                Container(height: 50,
                  width: 150,
                  child: FloatingActionButton(onPressed: (){ },
                    child:Text('Gucci'),
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),),
                ),
                  ],
                ),
              ),
              Text('Sort by',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('Small'),
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),
                    ),

                    Container(
                      height: 50,
                      width: 100,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('Medium'),
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('Large'),
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 15, 15, 15),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('XL'),
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),
                    ),

                    Container(
                      height: 50,
                      width: 100,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('2XL'),
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),
                    ),

                  ],
                ),
              ),
              Text('Sort by',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold)),
              Slider(
                value:_value.toDouble(),
                min:1.0,
                max:20.0,
                divisions: 10,
                activeColor: Color(0xFF4AD594),
                inactiveColor: Color(0xFF0B1C28),
                label: 'Price',
                onChanged: (double newValue){
                  setState(() {
                    _value=newValue.round();
                  });
                },
                semanticFormatterCallback:  (double newValue){
                  return '${newValue.round()}dollars';
                },
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                    child: FloatingActionButton(onPressed: (){ },
                      child:Text('RESET'),
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),),
                  ),

                  Container(
                    width: 180,
                    child: FloatingActionButton(onPressed: (){ },
                      child:Text('APPLY FILTERS'),
                      backgroundColor: Color(0xFF4AD594),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),),
                  ),

                ],
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
