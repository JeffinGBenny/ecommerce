import 'package:flutter/material.dart';
import 'package:multikart/Home.dart';
import 'package:multikart/forgotPassword.dart';
import 'package:multikart/homepage.dart';
import 'package:multikart/signup.dart';
import 'package:multikart/size_config.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  hintText:'Username or email',
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
              GestureDetector(
                child: Text('Forgot Password?',
                    style: TextStyle(
                      color:Color(0xFF4AD594),
                    )

                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
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
                  child:Text('SIGN IN'),
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
                        child:Image.asset('assets/google1.png'),
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
                    child:Image.asset('assets/apple1.png'),
                    backgroundColor: Color(0xFF4AD594),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),),

                ),
              ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 20, 0, 0),
                child: Row(
                  children: [
                    Text('If you are new ',
                        style: TextStyle(
                          color:Color(0xFF4AD594),
                        )

                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Sign up',
                            style: TextStyle(
                              color:Color(0xFF4AD594),
                            )

                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                    ),
                  ],
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
