//Yosser Riahi M2MPDAM
// Here you find the attributes related to bottom button or "Calculate"  

import 'package:flutter/material.dart';
import 'package:yosserriahi_bmicalculator/constants.dart';

class BottomButton extends StatelessWidget {
  //We use the onTap interaction
    //BottomButton({ this.onTap, this.buttonTitle});

  //use the @required to annontate onTap and buttonTitle into ButtonBottom function
   BottomButton({@required this.onTap, @required this.buttonTitle});
    final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
  //We use the GestureDetector widget to respond to the interactions with this button
    return  GestureDetector(
      onTap: onTap,
      child: Container(
    child: Center(
     child: Text(
       buttonTitle,
   style: LargeButtonTextStyle, //already declared in contants
    ),
       ),

    color: BottomContainerColour, //already declared in contants

   padding: EdgeInsets.only(bottom: 20.0),
    margin: EdgeInsets.only(top: 15.0),
      width: double.infinity,
        height: BottomContainerHeight, //already declared in contants
      ),
          );
  }
}
