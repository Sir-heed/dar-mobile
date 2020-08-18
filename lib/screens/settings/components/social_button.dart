import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  SocialButton({this.icon, this.boxColour, this.buttonText});
  final IconData icon;
  final Color boxColour;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(4),
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: boxColour,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(icon, color: Colors.white, size: 25),
                SizedBox(width: 5),
                Text(buttonText,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                    ))
              ],
            )
            // ListTile(
            //   leading: Icon(
            //     icon,
            //     color: Colors.white,
            //     size: 25,
            //   ),
            //   title: Text(
            //     buttonText,
            //     textAlign: TextAlign.start,
            //     style: TextStyle(
            //       color: Color(0xFFFFFFFF),
            //       fontSize: 18,
            //     ),
            //   ),
            // ),
            ),
      ),
    );
  }
}
