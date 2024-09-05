import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/screens/home/home.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8fbff),
      body: Container(
        // width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              child: Text('Choose from a wide range of  delicious meals',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.5)),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Image.asset('assets/images/groupmeal.png'),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 54,
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                   color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
