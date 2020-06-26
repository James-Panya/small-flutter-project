import 'package:flutter/material.dart';
import 'package:projectone/pages/pages.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/images/mesa.png',
                        fit: BoxFit.cover,
                        width: 75,
                        height: 75,
                      ),
                    )))),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _OtherButtons('About Us'),
                SizedBox(
                  width: 12,
                ),
                _SignIn('Sign In'),
                SizedBox(width: 37),
              ],
            )
          ],
        ));
  }
}

class _SignIn extends StatelessWidget {
  final String title;
  const _SignIn(this.title);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(5),
      )),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SignIn(),
        ));
      },
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child:
              Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black))),
    );
  }
}

class _OtherButtons extends StatelessWidget {
  final String title;
  const _OtherButtons(this.title);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(5),
      )),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AboutUsPage(),
        ));
      },
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child:
              Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white))),
    );
  }
}
