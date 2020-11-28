//Yosser Riahi M2MPDAM
// Here you find the attributes related to the cardlike

import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //  ReusableCard({this.colour, this.cardChild, this.onPress});
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

//declared annotations
final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {

    return GestureDetector( //use GeastureDectector's onTap fro the interactions
    onTap: onPress, 
     child: Container(
    child: cardChild,
     margin: EdgeInsets.all(15.0),
     
   decoration: BoxDecoration(
      color: colour,
       borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
