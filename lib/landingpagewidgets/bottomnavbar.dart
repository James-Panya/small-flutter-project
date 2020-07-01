import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print(' could not launch $command');
  }
}

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: GestureDetector(
                  child: InkWell(
                      onTap: () {
                        customLaunch(
                            'https://www.instagram.com/mesadevelopment/');
                      },
                      child: Container(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/instagram.png',
                          fit: BoxFit.cover,
                          width: 45,
                          height: 45,
                        ),
                      )))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: GestureDetector(
                  child: InkWell(
                      onTap: () {
                        customLaunch('https://twitter.com/mdevelopmenttm');
                      },
                      child: Container(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/twitter.png',
                          fit: BoxFit.cover,
                          width: 30,
                          height: 30,
                        ),
                      )))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
              child: GestureDetector(
                  child: InkWell(
                      onTap: () {
                        customLaunch('https://discord.gg/yavQcAY');
                      },
                      child: Container(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/discord.png',
                          fit: BoxFit.cover,
                          width: 32,
                          height: 32,
                        ),
                      )))),
            )
          ],
        ));
  }
}
