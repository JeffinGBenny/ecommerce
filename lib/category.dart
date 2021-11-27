import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multikart/size_config.dart';

class Category  extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
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
                    child: Text('Categories',
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
                  child:Row(
                    children:[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image (image: AssetImage('assets/wishlist1.jpg'
                     ), height:150,
                          width:150,),
                      ),
                      Column(
                        children: [
                          Text('Men',
                              style: TextStyle(

                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Jackets,denims,jeans..'),
                          ),
                        ],
                      ),

                    ],
                  )
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
                    child:Row(
                      children:[

                        Column(
                          children: [
                            Text('women',
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
                    child:Row(
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image (image: AssetImage('assets/kids.jpg'
                          ), height:150,
                            width:150,),
                        ),
                        Column(
                          children: [
                            Text('Kids',
                                style: TextStyle(

                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('clothing,toys,books..'),
                            ),
                          ],
                        ),

                      ],
                    )
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
                    child:Row(
                      children:[

                        Column(
                          children: [
                            Text('Fotwear',
                                style: TextStyle(

                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('shoes,sandle,activewear..'),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image (image: AssetImage('assets/footwear.jpg'
                          ), height:150,
                            width:150,),
                        ),

                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
