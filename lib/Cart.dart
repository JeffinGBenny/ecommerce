import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
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
                          child: Text('Cart',
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold))),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
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
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                            image: AssetImage('assets/wishlist1.jpg'),
                            height:200,
                            width: 100,
                          ),
                        ),
                        Column(
                          children: [
                            Text('Pink hoodie t-shirt'),
                            Text('by mango'),
                            Text('30'),
                            Row(
                              children: [
                                RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.favorite), label: Text('wishlist'),
                                ),
                                RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.delete), label: Text('Remove')),
                              ],
                            )


                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
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
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                            image: AssetImage('assets/men.jpg'),
                            height:200,
                            width: 100,
                          ),
                        ),
                        Column(
                          children: [
                            Text('Pink hoodie t-shirt'),

                            Text('by mango'),
                            Text('30'),
                            Row(
                              children: [RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.favorite), label: Text('wishlist')),

                                RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.delete), label: Text('Remove')),
                              ],
                            )

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
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
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                            image: AssetImage('assets/footwear.jpg'),
                            height:200,
                            width: 100,
                          ),
                        ),
                        Column(
                          children: [
                            Text('Pink hoodie t-shirt'),
                            Text('by mango'),
                            Text('30'),
                            Row(
                              children: [
                                RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.favorite), label: Text('wishlist')),
                                RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.delete), label: Text('Remove')),
                              ],
                            )


                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
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
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                            image: AssetImage('assets/kids.jpg'),
                            height:200,
                            width: 100,
                          ),
                        ),
                        Column(
                          children: [
                            Text('Pink hoodie t-shirt'),
                            Text('by mango'),
                            Text('30'),
                            Row(
                              children: [
                                RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.favorite), label: Text('wishlist')),
                                RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.delete), label: Text('Remove')),
                              ],
                            )



                          ],
                        ),
                      ],
                    ),
                  ),
                ),

               /* floatingActionButton:FloatingActionButton(
                  onPressed:(){},
                  child:Text('PLACE ORDER'),
                  backgroundColor:Color(0xFF4AD594),
                )*/
             ],

            )

        ),
      ),
    );
  }
}
