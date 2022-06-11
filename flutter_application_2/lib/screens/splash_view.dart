// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors

import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);
  // we added the state bcs we want animation
  @override
  State<SplashView> createState() => _SplashViewState();
}

// SingleTicket... cause its just one animation controller
class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  // ? : switch the object from non nullable to nullable it means it can contains a null value
  AnimationController? animationController;
  // we added the double so the widget fadeTransition would accept it
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    // .2 is 2/10
    // ! cus it doenst accept a null value
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    // ? : check if its null or nah
    // animationController is sure not null bcs of !
    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 105, 154, 40),
      body: SizedBox(
        child: Column(
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 150,
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            FadeTransition(
              opacity: fadingAnimation!,
              child: Text(
                "BienVenue",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 51,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Image.network(
              'https://group-oriental.com/wp-content/uploads/2017/01/logo-oriental-group.jpg',
            ),
          ],
        ),
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 20), () {
      // 5s over, navigate to a new page
      Navigator.of(context).pushReplacementNamed('/');
    });
  }
}
