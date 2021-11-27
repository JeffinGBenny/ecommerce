import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multikart/CategoriesPage.dart';
import 'package:multikart/HelpCenter.dart';
import 'package:multikart/NewArrivals.dart';
import 'package:multikart/slider.dart';

import 'Compare.dart';
import 'forgotPassword.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> images = [
      "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
      "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
      "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
      "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
    ];
    return Scaffold(
       drawer: Drawer(
           child:ListView(
             // Important: Remove any padding from the ListView.
             padding: EdgeInsets.zero,
             children: [

               Padding(
                 padding: const EdgeInsets.only(top: 30),
                 child: ListTile(
                   title: const Text('Value of the day'),
                   onTap: () {
                     // Update the state of the app.
                     // ...
                   },
                 ),
               ),

               ListTile(
                 title: const Text('Top 100 offers'),
                 onTap: () {
                   // Update the state of the app.
                   // ...
                 },
               ),

               ListTile(
                 title: const Text('New arrivals'),
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => NewArrivals()),
                   );
                 },
               ),
               ListTile(
                 title: const Text('My orders'),
                 onTap: () {
                   // Update the state of the app.
                   // ...
                 },
               ),

               ListTile(
                 title: const Text('Compare'),
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) =>Compare()),
                   );
                 },
               ),
               ListTile(
                 title: const Text('My wishlist'),
                 onTap: () {
                   // Update the state of the app.
                   // ...
                 },
               ),
               ListTile(
                 title: const Text('Track your orders'),
                 onTap: () {
                   // Update the state of the app.
                   // ...
                 },
               ),
               ListTile(
                 title: const Text('Lost Password'),
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) =>ForgotPassword()),
                   );
                 },
               ),
               ListTile(
                 title: const Text('Help Center'),
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) =>HelpCenter()),
                   );
                 },
               ),
             ],
           ), // Populate the Drawer in the next step.
       ),
        appBar: AppBar(
        backgroundColor:Color(0xFF4AD594) ,

        title: Text('Hapitate'),
    ),
    body:SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "Search products...",

                  fillColor: Colors.white70),
            ),
          ),
      SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius:40,
                    backgroundImage: AssetImage('assets/men.jpg'),
                  ),
                ),
                Text('Men'),
              ],
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: CircleAvatar(
                      radius:40,
                      backgroundImage: AssetImage('assets/women.jpg'),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CategoriesPage()),
                      );
                    },
                  ),
                ),
                Text('Women'),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius:40,
                    backgroundImage: AssetImage('assets/kids.jpg'),
                  ),
                ),
                Text('Kids'),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius:40,
                    backgroundImage: AssetImage('assets/footwear.jpg'),
                  ),
                ),

                Text('Footwear'),
              ],
            ),
          ],
        ),
      ),
          SliderBox(),
          Container(
            //color: Colors.black,
              alignment: Alignment.centerLeft,
              width: size.width *.73,// .58,
              height: 30,
              //color: Colors.red,
              child: Text('Wishlist',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold))),




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
          RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.add_shopping_cart), label: Text('cart')),
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
          image: AssetImage('assets/women.jpg'),
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
          RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.add_shopping_cart), label: Text('cart')),
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
          children: [
          RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.add_shopping_cart), label: Text('cart')),
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
      RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.add_shopping_cart), label: Text('cart')),
      RaisedButton.icon(onPressed:(){}, icon: Icon(Icons.delete), label: Text('Remove')),
      ],
      )



      ],
      ),
      ],
      ),
            ),
          ),

          ],
      ),
    ),

     );
  }
}
