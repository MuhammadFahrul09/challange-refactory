// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_design_button/Home/assignment.dart';
import 'package:slicing_design_button/Home/home.dart';
import 'package:slicing_design_button/Home/messege.dart';
import 'package:slicing_design_button/Home/profil.dart';

class Rangking extends StatelessWidget {
  const Rangking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is Assignment Rangking'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color(0xFFCFCFCF),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              Home(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    },
                    child: Image.asset('assets/lobby-off.png')),
                label: "Home"),
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            Messege(),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    );
                  },
                  child: Image.asset('assets/Chat-off.png'),
                ),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              Assignment(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    },
                    child: Image.asset('assets/Assignment-off.png')),
                label: "assignment"),
            BottomNavigationBarItem(
                icon: Image.asset('assets/rangking.png'), label: "rangking"),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              Profil(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    },
                    child: Image.asset('assets/Profil-off.png')),
                label: "profil")
          ]),
    );
  }
}