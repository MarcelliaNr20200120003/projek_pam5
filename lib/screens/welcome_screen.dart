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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/icons/urban.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              /// title
              Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    "We Provide High Quality Products Just for You",
                    style: GoogleFonts.notoSansChakma(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  )),
              const Spacer(),

              /// button to navigate to home screen`
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 24,
                  ),
                ),
                child: Text(
                  "GET STARTED",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: ThemeColor.black),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account ?",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: ThemeColor.white),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login Here !",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: ThemeColor.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
