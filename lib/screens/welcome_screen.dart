import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projek_pam5/main.dart';
import 'package:projek_pam5/route/app_route.dart';
import 'package:projek_pam5/screens/sign_in_screen.dart';
import 'package:projek_pam5/screens/themecolor.dart';
import 'package:projek_pam5/screens/textstyle.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(35),
                height: 220,
                width: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/icons/getstar.jpg",
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                child: SafeArea(
                    child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Text(
                        "Discover Your Own Dream House",
                        style: GoogleFonts.notoSansChakma(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 22,
                        ),
                      ),
                      child: Text(
                        "Get Started",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: ThemeColor.black),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
