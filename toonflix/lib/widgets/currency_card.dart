import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final double x, y;

  final bool isInverted;

  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInverted,
      required this.x,
      required this.y,
      });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(x, y),
      child: Container(
        clipBehavior: Clip.hardEdge, //컨테이너 밖으로 넘치는 부분 잘라내는 위젯 (오버플로우 됐을 때)
        decoration: BoxDecoration(
            color: isInverted ? Colors.white : const Color(0xFF1F2123),
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 32,
                      color: isInverted ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          fontSize: 20,
                          color: isInverted ? Colors.black : Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          fontSize: 20,
                          color: isInverted ? Colors.black : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                  scale: 2.2,
                  child: Transform.translate(
                    offset: const Offset(-5, 12),
                    child: Icon(
                      icon,
                      color: isInverted ? Colors.black : Colors.white,
                      size: 88,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
