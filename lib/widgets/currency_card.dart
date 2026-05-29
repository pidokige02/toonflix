import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {

  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order; // ⭐ 몇 번째 카드인지 나타내는 파라미터 추가

  final _blackColor = Color(0xFF1F2123);  //private member

  CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    this.isInverted = false,
    this.order = 1, // ⭐ 기본값은 1층(오프셋 없음)으로 설정
  });


  @override
  Widget build(BuildContext context) {
    // ⭐ order 값에 따라 카드를 위로 올릴 오프셋 계산 (y축 이동)
    // order 1 = 0, order 2 = -20, order 3 = -40
    final double cardOffsetY = (order - 1) * -20.0;

    return Transform.translate(
      offset: Offset(0, cardOffsetY), // ⭐ 계산된 오프셋 적용
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted? Colors.white:
          _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted? _blackColor:
                      Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(amount,
                          style: TextStyle(
                            color: isInverted? _blackColor:
                            Colors.white,
                            fontSize: 20)
                      ),
                      SizedBox(
                          width: 5,
                      ),
                      Text(code,
                          style: TextStyle(
                            color: isInverted? _blackColor:
                            Colors.white,
                            fontSize: 20)
                      )
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
                    color: isInverted? _blackColor:
                    Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
