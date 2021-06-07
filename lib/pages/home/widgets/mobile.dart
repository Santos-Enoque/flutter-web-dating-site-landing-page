import 'package:flutter/material.dart';
import 'package:flutter_web_example/constants/content.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:flutter_web_example/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 450,
              constraints: BoxConstraints(
                maxWidth: 450
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Get noticed for ",
                      ),
                      TextSpan(
                          text: "who",
                          style: GoogleFonts.roboto(
                              color: active)),
                      TextSpan(
                        text: " you are, ",
                      ),
                      TextSpan(
                          text: "not what",
                          style: GoogleFonts.roboto(
                              color: active)),
                      TextSpan(
                        text: " you look like.",

                      ),
                    ],

                    style: GoogleFonts.roboto(
                        fontSize:28, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),

        Container(
          width: 550,
          constraints: BoxConstraints(maxWidth: 550),
          child: Text(
            mainParagraph,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                letterSpacing: 1.5,
                height: 1.5
            ),),
        ),
        SizedBox(height: 20,),

        Container(
          constraints: BoxConstraints(maxWidth: 550),
          padding: EdgeInsets.all(4),
          margin:EdgeInsets.symmetric(horizontal:20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: Offset(0, 40),
                    blurRadius: 80
                )
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenSize.width / 4,
                padding: EdgeInsets.only(left:4),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      hintText: "Email",
                      border: InputBorder.none
                  ),
                ),
              ),

              CustomButton(text: "Get started",)
            ],
          ),
        ),


      ],
    );
  }
}
