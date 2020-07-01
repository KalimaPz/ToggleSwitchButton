import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {

  final double fontSize;

  final Color fontColor;

  final double indicatorHeight;

  final double indicatorWidth;

  final bool value;

  final double width;

  final double height;

  final double borderRadius;

  final String mainText;

  final String subText;

  final Color background;

  final Color onEnabledColor;

  final Color onDisabledColor;

  final VoidCallback onPressed;

  ToggleButton({
    this.fontSize,
    this.fontColor,
    this.indicatorHeight,
    this.indicatorWidth,
    @required this.value,
    this.width,
    this.height,
    this.borderRadius,
    this.mainText,
    this.subText,
    this.background,
    this.onEnabledColor,
    this.onDisabledColor,
    @required this.onPressed,
  });
  @override
  _ToggleButtonState createState() => _ToggleButtonState(
      fontSize,
      fontColor,
      indicatorHeight,
      indicatorWidth,
      value,
      width,
      height,
      borderRadius,
      mainText,
      subText,
      background,
      onEnabledColor,
      onDisabledColor,
      onPressed
    );
}

class _ToggleButtonState extends State<ToggleButton> {
  double fontSize;

  Color fontColor;

  double indicatorHeight;

  double indicatorWidth;

  bool value;

  double width;

  double height;

  double borderRadius;

  String mainText;

  String subText;

  Color background;

  Color onEnabledColor;

  Color onDisabledColor;

  VoidCallback onPressed;

  _ToggleButtonState(
      this.fontSize,
      this.fontColor,
      this.indicatorHeight,
      this.indicatorWidth,
      this.value,
      this.width,
      this.height,
      this.borderRadius,
      this.mainText,
      this.subText,
      this.background,
      this.onEnabledColor,
      this.onDisabledColor,
      this.onPressed);
  Color status;

  @override
  void initState() {
    onEnabledColor ??= Colors.redAccent;
    onDisabledColor ??= Colors.green;
    super.initState();
    if(value == true){
      setState(() {
        status = onDisabledColor;
      });
    }
    else if(value == false){
      setState(() {
        status = onEnabledColor;
      });
    }
  }
  void statusSwap(){
    if(value == true) {
      setState(() {
        value = false;
        status = onDisabledColor;
      });
    }
    else if(value == false) {
      setState(() {
        value = true;
        status = onEnabledColor;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    fontSize ??= 14;
    indicatorHeight ??= 20;
    indicatorWidth ??= 5;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: background),
      width: width,
      height: height,
      child: MaterialButton(
        child: Container(      
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  width: indicatorWidth,
                  height: indicatorHeight,
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  color: status,
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('$mainText',style: TextStyle(color: fontColor,fontSize: fontSize,fontWeight: FontWeight.bold),),
                      Text('$subText',style: TextStyle(color: fontColor,fontSize: fontSize - 2),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: () => {
          onPressed(),
          statusSwap(),
        },
      ),
    );
  }
}
