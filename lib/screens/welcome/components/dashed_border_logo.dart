import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DashedBorderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      radius: Radius.circular(20),
      dashPattern: [12, 8],
      color: Colors.white,
      strokeWidth: 1.5,
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 40, right: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/logo-white.png'),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Largest Property Platform',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    'in Africa',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 17,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
