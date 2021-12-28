import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DialButton extends StatelessWidget {
  const DialButton({
    Key? key,
    required this.iconSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String iconSrc, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    //全屏宽度和高度
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: 100,
      child: FlatButton(
        onPressed: press,
        child: Column(
          children: [
            SvgPicture.asset(
              iconSrc,
              color: Colors.white,
              height: 40,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
