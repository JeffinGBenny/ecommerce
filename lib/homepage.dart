

import 'package:flutter/material.dart';
import 'Home.dart';
import 'wishlist.dart';

import 'Cart.dart';
import 'Profile.dart';
import 'category.dart';



class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late TabController _tabController;


  var email;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
  }






  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();

    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:


               Scaffold(
                body:
                    TabBarView(
                      children: <Widget>[
                        Home(),
                        Category(),
                        Cart(),
                        Wishlist(),
                        ProfilePage(),

                      ],
                      physics: NeverScrollableScrollPhysics(),
                      controller: _tabController,
                    ),

                bottomNavigationBar: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(
                    32,
                  )),
                  child: Container(
                    decoration: BoxDecoration(
                      //Border.all

                      border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.none), //Border.all

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                      ),
                      boxShadow: [
                        //background color of box
                        BoxShadow(
                          color: Colors.grey,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 400,
                          spreadRadius: -8.0,
                        ),

                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 0.0, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 10  horizontally
                            0.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                    ),
                    child: TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Color(0xFF949494),
                      labelStyle: TextStyle(fontSize: 10.0),
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(color: Colors.black, width: 0.0),
                        insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 10.0),
                      ),
                      indicatorColor: Colors.black,
                      tabs: <Widget>[
                        Tab(
                          icon: Icon(
                            Icons.home,
                            size: 24.0,
                          ),
                          text: "HOME",
                        ),
                        Tab(
                          icon: Icon(
                            Icons.grid_view_outlined,
                            size: 24.0,
                          ),
                          text: "CATEGORY",
                        ),
                        Tab(
                          icon: Icon(
                            Icons.add_shopping_cart,
                            size: 24.0,
                          ),
                          text: "CART",
                        ),
                        Tab(
                          icon: Icon(
                            Icons.favorite,
                            size: 24.0,
                          ),
                          text: "WISHLIST",
                        ),
                        Tab(
                          icon: Icon(
                            Icons.account_circle_outlined,
                            size: 24.0,
                          ),
                          text: "PROFILE",
                        ),
                      ],
                      controller: _tabController,
                    ),
                  ),
                ),
                ),

    );
  }
}
