import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projectone/loginpagewidgets/socialbuttons.dart';

class BoxInsides extends StatelessWidget {

  Widget horizontalLine() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      width: 200,
      height: 1,
      color: Colors.black87.withOpacity(.2)
    )
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Login",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                    letterSpacing: .8)),
            SizedBox(height: 60),
            Text('Username or Email',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            TextField(
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 18)),
            ),
            SizedBox(height: 60),
            Text('Password',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            TextField(
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 18)),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot your password?',
                    style: TextStyle(color: Colors.blue, fontSize: 18)
                    )
              ],
            ),
            Center(
              child: InkWell(
                  child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white70, Colors.white]),
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0.0, 8.0),
                                blurRadius: 8)
                          ]),
                      child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                              onTap: () {},
                              child: Center(
                                  child: Text('Sign In',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18))))))),
            ),
            SizedBox(
              height:50
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                horizontalLine(),
                Text(
                  'or',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                horizontalLine()
                ],
            ),
            SizedBox(
              height: 40
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
              ],
            )
          ],
        ));
  }
}
