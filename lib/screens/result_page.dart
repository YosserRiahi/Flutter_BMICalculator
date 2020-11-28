//Yosser Riahi M2MPDAM
// Here you find the attributes related to the resultPage


import 'package:flutter/material.dart';
import 'package:yosserriahi_bmicalculator/constants.dart';
import 'package:yosserriahi_bmicalculator/ui_components/reusable_card.dart';
import 'package:yosserriahi_bmicalculator/ui_components/bottom_button.dart';




class ResultsPage extends StatelessWidget {
 ResultsPage({@required this.bmiResults, @required this.resultText, @required this.interpretation});
//ResultsPage({ this.bmiResults, this.resultText,  this.interpretation});

  final String bmiResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          Expanded(
           child: Container(
          padding: EdgeInsets.all(15.0),
         
         child: Text(
           
                'YOUR RESULT',
                textAlign: TextAlign.center, //doesnt work 
                style: TitleTextStyle,
                
          ),
          ),
            ),

          Expanded(
           flex: 5,
            child: ReusableCard(
              colour: ActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

              //THE RESULT INTERPRETATIOn
                  Text(
                    resultText.toUpperCase(), 
                    style: resultTextStyle,
                  ),


                  Text(
                    bmiResults,
                    style: BMITextStyle,
                  ),


               //Results interpretation text
                  Text(
                
                    interpretation,
                    textAlign: TextAlign.center,
                    style: BodyTextStyle,
                    
                  ),
                ],


              ),
            ),
          ),

     //BottomButton already decalred in BottomButton()
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RECALCULATE'
              
              )
            ],
     ),
    );
  }
}
