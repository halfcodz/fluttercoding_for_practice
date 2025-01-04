import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(45)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Text(
          text,
          style: TextStyle(fontSize: 22, color: textColor),
        ),
      ),
    );
  }
}

/*

위 값들은 절대로 const 이면 안된다.
컴파일 전에 알고있으면 const여도 되는데
이건 값을 받아와야 알게되기 때문에
const가 아닌 상태로 코드를 작성해줘야 한다.

*/
