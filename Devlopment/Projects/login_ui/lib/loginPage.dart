import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late Animation animation, delayedAnimation, muchdelayedAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    muchdelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    animationController.forward();

    return AnimatedBuilder(animation: animationController, builder: (BuildContext (context), Widget child)

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          Icons.android,
          size: 100,
        ),
        SizedBox(
          height: 60,
        ),
        //Hello again!
        Text(
          'Hello Again!',
          style: GoogleFonts.bebasNeue(fontSize: 52),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Welcome back, you have been missed!',
          style: TextStyle(color: Colors.grey[800], fontSize: 20),
        ),

        SizedBox(
          height: 20,
        ),
        //email verification
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 10, top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: const TextField(
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: 'Email'),
            ),
          ),
        ),

        SizedBox(
          height: 10,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 10, top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Password'),
            ),
          ),
        ),

        SizedBox(
          height: 60,
        ),

        //sign in button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                'Sign In',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 25,
        ),

        //not a member? Register here(Sign up)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Not a member? ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              ' Register Now',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            )
          ],
        )
      ]),
    );
  }
}
