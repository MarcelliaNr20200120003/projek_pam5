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
                margin: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 80,
                ),
                height: 200,
                width: 350,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
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
                      padding: EdgeInsets.only(top: 1, left: 29, right: 20),
                      child: Text(
                        "Discover Your Own Dream House",
                        style: GoogleFonts.acme(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 29, right: 20),
                      child: Text(
                        "Make your home a minimalist look at an affordable price",
                        style: GoogleFonts.acme(
                          fontSize: 15,
                          color: Colors.grey,
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
                        primary: Colors.brown,
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
                    SizedBox(height: 120),
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
