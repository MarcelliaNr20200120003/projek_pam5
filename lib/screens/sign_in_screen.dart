import 'package:flutter/material.dart';
import 'package:projek_pam5/produk/components/produk.dart';
import 'package:projek_pam5/produk/produk_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 227, 227),
        elevation: 0,
        leadingWidth: 30,
        title: Text("Sign in",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w800,
                color: Colors.black)),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  labelText: 'Email Address',
                  labelStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0),
                ),
              ),
              const SizedBox(height: 40.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProdukScreen(),
                      ));
                },
                child: Container(
                    height: 30.0,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Center(
                      child: Text('Sign In',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0)),
                    )),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: Text('Forgot Password?',
                    style: TextStyle(
                        color: Color(0xFF653bbf),
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0)),
              ),
              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 80, height: 1.0, color: Colors.black12),
                  const SizedBox(width: 20.0),
                  Text('OR',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0)),
                  const SizedBox(width: 20.0),
                  Container(width: 80, height: 1.0, color: Colors.black12),
                ],
              ),
              const SizedBox(height: 50.0),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        height: 60.0,
                        width: size.width / 2 - 40,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          border: Border.all(width: 0.5, color: Colors.grey),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/google.png",
                                  width: 20.0),
                              const SizedBox(width: 15.0),
                              Text("Google",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.0)),
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(width: 20.0),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        height: 60.0,
                        width: size.width / 2 - 40,
                        decoration: BoxDecoration(
                            color: Color(0xFF4267B2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/fb.png", width: 20.0),
                              const SizedBox(width: 15.0),
                              Text("Facebook",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.0)),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
