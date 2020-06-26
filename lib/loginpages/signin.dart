import 'package:flutter/material.dart';
import 'package:projectone/loginpages/signinboxinsides.dart';

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Container(
          width: 1000,
          height: 750,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(-7.0, 15.0),
                blurRadius: 15
              ),
              BoxShadow(
                color: Colors.black54,
                offset: Offset(10.0, -5.0),
                blurRadius: 10
              )
            ], 
          ),
          child: BoxInsides(),
        ),
      ),
    );
  }
}