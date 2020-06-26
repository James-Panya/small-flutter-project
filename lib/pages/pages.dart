import 'package:flutter/material.dart';
import 'package:projectone/landingpagewidgets/bodythings/bodytext.dart';
import 'package:projectone/landingpagewidgets/navbar.dart';
import 'package:projectone/allpagesneed/navbar/bottomnavbar.dart';
import 'package:projectone/loginpages/signin.dart';
import 'package:projectone/loginpages/signup.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/colorado.jpg'),
        fit: BoxFit.fill,
      )),
      child: Column(
        children: [
          Navbar(),
          Expanded(
            child: Row(
              children: [
                BodyText(),
              ],
            ),
          ),
          BottomNavbar(),
        ],
      ),
    ));
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey[600],
                  Colors.grey[700],
                  Colors.grey[800],
                  Colors.grey[900]
                ],
                stops: [0.1, 0.3, 0.5, 0.9]
              )
            ),
            child: Column(
              children: [
                Navbar(),
                Expanded(
                  child: Column(
                    children: [
                      SignInBody()
                    ],
                  ),
                ),
                ],
            )));
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/colorado.jpg'),
              fit: BoxFit.fill,
            )),
            child: Column(
              children: [Navbar()],
            )));
  }
}

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/colorado.jpg'),
              fit: BoxFit.fill,
            )),
            child: Column(
              children: [Navbar()],
            )));
  }
}
