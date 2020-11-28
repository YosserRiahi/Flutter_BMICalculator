//Yosser Riahi M2MPDAM
// Here you find the attributes related to the inputpage 


import 'package:flutter/material.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yosserriahi_bmicalculator/ui_components/icon_content.dart';

import 'package:yosserriahi_bmicalculator/constants.dart';
//import 'package:yosserriahi_bmicalculator/screens/input_page.dart';
//import 'package:yosserriahi_bmicalculator/screens/result_page.dart';
import 'package:yosserriahi_bmicalculator/ui_components/bottom_button.dart';
import 'package:yosserriahi_bmicalculator/ui_components/round_icon_button.dart';
import 'package:yosserriahi_bmicalculator/bmi_calcul.dart';
import 'package:yosserriahi_bmicalculator/ui_components/reusable_card.dart';
import 'package:yosserriahi_bmicalculator/screens/result_page.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI FLUTTER CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          //configuration of the GENDER == "Male" PICK PART
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
               child: ReusableCard(
         onPress: () {
             setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? ActiveCardColour  : InactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars, //icon name of the female gender 
                      label: 'MALE ',
                    ),
                  ),
                ),



              //configuration of the GENDER == "Female" PICK PART

                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? ActiveCardColour : InactiveCardColour,
                    cardChild: IconContent(
                      
                      icon: FontAwesomeIcons.venus, //icon name of the female gender 
                      label: 'FEMALE',
                    ),
                  ),  
                ),
              ],
            ),
          ),



          // Height Pick configuration 
          Expanded(
            child: ReusableCard(
              colour: ActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: LabelTextStyle, // Already declared in contants
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: NumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: LabelTextStyle, // Already declared in contants
                      ),
                    ],
                  ),

              //Slider of the weight pick 

                  SliderTheme(
  data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
               inactiveTrackColor: Color(0xFF8D8E98),
               thumbColor: Color(0xFFEB1555),
            overlayColor: Color(0x29EB1555),
             thumbShape:
                RoundSliderThumbShape(enabledThumbRadius: 15.0),
             overlayShape:
             RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
             value: height.toDouble(),
             min: 120.0, //the Minimum HUMAN Height
              max: 220.0, //the Maximum HUMAN Height

           activeColor: Color(0xFFEB1555),
             inactiveColor: Color(0xFF8D8E98),
                onChanged: (double newValue) {
                 setState(() {
                          height = newValue.toInt();
                        });
                            },
                       ),
                        ),
                   ],
              ),
            ),
          ),

          //Weight pick configuration
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: ActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: LabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: NumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                  RoundIconButton(
                        icon: FontAwesomeIcons.minus, //"-" icon
                      onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus, //"+" icon
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),


          //Age pick configuration

                Expanded(
                  child: ReusableCard(
                    colour: ActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: LabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: NumberTextStyle,
                        ),
                        Row(  
                      mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       // AGE --
                            RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                      onPressed: () {
                       setState(() {
                       age--;  // 
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                       ),
                        // AGE ++
                       RoundIconButton(
                         icon: FontAwesomeIcons.plus,
                        onPressed: () {
                         setState(() {
                          age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


          //configuration of the SUBMIT BUTTON
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResults: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
