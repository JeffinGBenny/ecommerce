import 'package:flutter/material.dart';
import 'package:multikart/Home.dart';
import 'package:multikart/Login.dart';
import 'package:multikart/homepage.dart';
import 'package:multikart/size_config.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                            "Hey ",
                            style: TextStyle(

                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Login Now",
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
                      hintText:'Name',
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.black12))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText:'Email/Phone',
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.black12))
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText:'Password',
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
                    child:Text('SIGN UP'),
                    backgroundColor: Color(0xFF4AD594),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Or sign in with',
                    style: TextStyle(
                      color:Color(0xFF4AD594),
                    )

                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 20, 12, 12),
                    child: Container(
                      height: 50,
                      width:50,
                      child: FloatingActionButton(onPressed: (){},
                        child:Image.asset('assets/google.png'),
                        backgroundColor: Color(0xFF4AD594),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
                    child: Container(
                      height: 50,
                      width:50,
                      child: FloatingActionButton(onPressed: (){},
                        child:Icon(Icons.facebook),
                        backgroundColor: Color(0xFF4AD594),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
                    child: Container(
                      height: 50,
                      width:50,
                      child: FloatingActionButton(onPressed: (){},
                        child:Image.asset('assets/apple.png'),
                        backgroundColor: Color(0xFF4AD594),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),),

                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Already have an account n',
                        style: TextStyle(
                          color:Color(0xFF4AD594),
                        )

                    ),

                  ),
                  GestureDetector(
                    child: Text('Sign in',
                        style: TextStyle(
                          color:Color(0xFF4AD594),
                        )

                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
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
