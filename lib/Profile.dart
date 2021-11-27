import 'package:flutter/material.dart';
import 'package:multikart/Topbar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(



        body: SafeArea(
          child:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                          child: Text('Profile',
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold))),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Container(
                      height: size.height * .40,

                      color: Color(0xFF4AD594),
                      child: Column(
                        children: [

                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/customer.jpg'),
                                radius: 50.0,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('Paige Turner',

                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text('paigeturner@gmail.com',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 0.0, 0.0),
                          child: Icon(Icons.article,),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              20.0, 40.0, 0.0, 0.0),
                          child: Text('Orders'),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 20),
                      child: Text("Onoing orders,recent orders"),
                    ),
                  ],
                ),
                Divider(color: Colors.black12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Icon(Icons.favorite,),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              20.0, 20.0, 0.0, 0.0),
                          child: Text('Your Wishlist'),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 20),
                      child: Text("Your saved products"),
                    ),
                  ],
                ),
                Divider(color: Colors.black12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Icon(Icons.account_balance_wallet_outlined,),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              20.0, 20.0, 0.0, 0.0),
                          child: Text('Payment'),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 20),
                      child: Text("Saved cards,wallets"),
                    ),
                  ],
                ),
                Divider(color: Colors.black12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Icon(Icons.add_location,),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              20.0, 20.0, 0.0, 0.0),
                          child: Text('Saved Address'),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 20),
                      child: Text("Home,Office.."),
                    ),
                  ],
                ),
                Divider(color: Colors.black12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Icon(Icons.flag),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              20.0, 20.0, 0.0, 0.0),
                          child: Text('Language'),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 20),
                      child: Text("Select your laguage here"),
                    ),
                  ],
                ),
                Divider(color: Colors.black12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Icon(Icons.notification_add,),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              20.0, 20.0, 0.0, 0.0),
                          child: Text('Notifications'),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 20),
                      child: Text("Offers,order tracking messaegs"),
                    ),
                  ],
                ),
                Divider(color: Colors.black12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Icon(Icons.settings,),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              20.0, 20.0, 0.0, 0.0),
                          child: Text('Settings'),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 20),
                      child: Text("App settings,dark mode"),
                    ),
                  ],
                ),
                Divider(color: Colors.black12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Icon(Icons.account_circle,),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              20.0, 20.0, 0.0, 0.0),
                          child: Text('Profile Settings'),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 20),
                      child: Text('Full name,Password'),
                    ),
                  ],
                ),




              ],
            ),
          ),
        ),

      ),
    );
  }

}