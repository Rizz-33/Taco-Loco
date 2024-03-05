import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tacoloco/components/button.dart';
import 'package:tacoloco/themes/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 242, 242),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center, // Adjusted mainAxisAlignment
            children: [
              SizedBox(height: 25),

              // icon
              Padding(
                padding: EdgeInsets.all(50.0),
                child: Image.asset('lib/images/taco-truck.png', width: 100),
              ),

              // shop name
              Text(
                'TacoLoco',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),

              // slogan
              Text(
                'Crave the Craze',
                style: GoogleFonts.quicksand(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(
                      primaryColor.red, primaryColor.green, primaryColor.blue, 0.75),
                ),
              ),

              SizedBox(height: 65),

              // button
              Button(
                text: 'Get Started',
                ontap: () {
                  Navigator.pushNamed(context, '/menu');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
