import 'package:flutter/material.dart';
class OrderPlaced extends StatefulWidget {
  @override
  _OrderPlacedState createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int _value=6;

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
                      child: Text('Order Placed',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    )),
                Image (image: AssetImage('assets/order.png'
                ), height:150,
                  width:150,),
                Text('Order Succesful',
                    style: TextStyle(
                    color: Color(0xFF4AD594),
              fontSize: 19,
              fontWeight: FontWeight.bold)),
                Text('Payment is successful and your order'),
                Text('is on the way'),
                Text('Order Details',
                    style: TextStyle(

                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text('Your order # is 458853',
                    style: TextStyle(

                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text('This order will be shipped to:',
                    style: TextStyle(
                        color: Color(0xFF4AD594),
                        fontSize: 19,
                        fontWeight: FontWeight.bold)),
                Text('3501 Malloy Court'),
                Text('NewYork City'),
                Text('Payment Method',
                    style: TextStyle(
                        color: Color(0xFF4AD594),
                        fontSize: 19,
                        fontWeight: FontWeight.bold)),
                Text('Google UPI'),
                Text('An email receipt including the details of the order '),
                Text('has been sent to your email id'),
                Row(
                  children: [
                    Container(
                      width: 180,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('Track Order'),
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),
                    ),

                    Container(
                      width: 180,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('Continue Shopping'),
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
