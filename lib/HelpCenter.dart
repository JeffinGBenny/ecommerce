import 'package:flutter/cupertino.dart';

class HelpCenter extends StatefulWidget {
  @override
  _HelpCenterState createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Text(
            'Help Center|Customer care support',
          ),
          Text(
            'The hapitate Help Center page  ',
          ),
          Text('lists out  various types of issues '),
          Text('that you may have encountered so '),

             Text( 'that there cann be quick resolution '),
              Text('and you cn go back to shopping online.'),
             Text( ' Our support exeecutive will ensure '),
              Text('speddy asssisstance so that  your '),
              Text('shopppig experience is osittive and enjoyable'),
        ],
      ),
    );
  }
}
