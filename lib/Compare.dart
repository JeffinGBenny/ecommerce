import 'package:flutter/material.dart';
class Compare extends StatefulWidget {
  @override
  _CompareState createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:


        Scaffold(
        body:SafeArea(
      child: Container(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 100, 8, 8),
              child: Text(
                'No products',
                  style: TextStyle(

                      fontSize: 45,
                      )

        ),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
                'were added to',
                style: TextStyle(

                    fontSize: 45,
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
                'the compare',
                style: TextStyle(

                    fontSize: 45,
                   )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
                'table',
                style: TextStyle(

                    fontSize: 45,
                    )
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
