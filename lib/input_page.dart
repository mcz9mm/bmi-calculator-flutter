import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor =  Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      iconText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      iconText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            )
          ),
          Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
          ),
          Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,),
                  ),
                ],
              )
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

