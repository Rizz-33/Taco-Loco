import 'package:flutter/material.dart';
import 'package:tacoloco/themes/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function()? ontap;

  const Button({
    Key? key,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryColor, Color.fromRGBO(
                    primaryColor.red, primaryColor.green, primaryColor.blue, 0.75),],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),

            const SizedBox(width: 20,),

            //icon
            const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20,)
          ],
        ),
      ),
    );
  }
}