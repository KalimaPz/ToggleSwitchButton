# ToggleSwitchButton
Help Me Find a bugs

##__Parameter__

  double fontSize;

  Color fontColor;

  double indicatorHeight;

  double indicatorWidth;

  bool value; @required

  double width;

  double height;

  double borderRadius;

  String mainText;

  String subText;

  Color background;

  Color onEnabledColor;

  Color onDisabledColor;

  VoidCallback onPressed; @required
  
  #__How to use__?
  
  eg. ToggleButton(
                      onPressed: () {},
                      value: true,
                      borderRadius: 10,
                      mainText: 'Turn On / Off',
                      subText: 'Lorem ipsum',
                      fontColor: Colors.white,
                      background: Colors.blueAccent,
                      onEnabledColor: Colors.green,
                      onDisabledColor: Colors.redAccent,
      ),
