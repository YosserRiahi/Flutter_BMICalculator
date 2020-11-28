//Yosser Riahi M2MPDAM
// Here you find the attributes related to the icons 

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {


//use the @required to annontate icon and onPressed into RoundIconButton function
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon; // to declare all the properties related to the icon we use "IconData" (see official doc)
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton( //according the icon to th button
      child: Icon(icon),
      onPressed: onPressed,
     // elevation: 10.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
     shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
  );
  }
}
