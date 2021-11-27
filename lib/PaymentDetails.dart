import 'package:flutter/material.dart';
//enum Paymentmethod { cashOnDelivery, DebitcreditCard,Wallets,NetBanking }
class PaymentDetails extends StatefulWidget {
  @override
  _PaymentDetailsState createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int _value=6;
    int val = -1;


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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text("Male"),
                      leading: Radio(
                        value: 1,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            //val = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                    ),
                    ListTile(
                      title: Text("Female"),
                      leading: Radio(
                        value: 2,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            //val = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('Rs 270'),
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),
                    ),

                    Container(
                      width: 180,
                      child: FloatingActionButton(onPressed: (){ },
                        child:Text('PAY NOW'),
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
