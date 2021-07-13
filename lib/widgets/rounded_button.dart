import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedButton extends StatelessWidget {
  final Color iconColor;
  final String titleText;
  final Widget tileIcon;
  final IconData titleIcons;

  const RoundedButton({
    Key key,
    this.iconColor,
    this.titleText,
    this.tileIcon,
    this.titleIcons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.08,
            width: SizeConfig.screenWidth * 0.17,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, offset: Offset.fromDirection(2, 2))
                ],
                borderRadius: BorderRadius.all(Radius.circular(14))),
            child: Center(
                child: Icon(
              titleIcons,
              size: 32,
              color: iconColor,
            )),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Text(titleText)
        ],
      ),
    );
  }
}
