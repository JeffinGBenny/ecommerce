import 'package:flutter/material.dart';
import 'package:multikart/Home.dart';
import 'package:multikart/homepage.dart';
import 'package:multikart/signup.dart';
import 'package:multikart/size_config.dart';
class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  MaterialApp(
      home:Scaffold(body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(

                    child: Column(
                      children: [


                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(

                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),




              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText:'Email address',
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.black12))
                  ),
                ),
              ),

              SizedBox(height: SizeConfig.blockSizeVertical * 7.5),

              Padding(
                padding: const EdgeInsets.fromLTRB(12, 50, 12, 12),
                child: Container(
                  height: 50,
                  width:400,
                  child: FloatingActionButton(onPressed: (){ Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );},
                    child:Text('SEND OTP'),
                    backgroundColor: Color(0xFF4AD594),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),),

                ),
              ),



            ],
          ),
        ),
      ),
      ),
    );
  }
}
