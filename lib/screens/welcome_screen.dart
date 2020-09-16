import 'package:flutter_chat/screens/login_screen.dart';
import 'package:flutter_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_chat/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {

  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  // AnimationController controller;
  // Animation animation;

  Color gradientStart = Color(0xff086972);
  Color gradientEnd = Color(0xff071a52);

  @override
  void initState() {
    super.initState();
    // controller = AnimationController(
    //   duration: Duration(seconds: 5),
    //   vsync: this
    // );
  //   controller.forward();

  //   controller.addListener(() {
  //     setState(() {});
  //     print(animation.value);
  //   });
  }

  
  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [gradientStart, gradientEnd],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0,1.0],
          tileMode: TileMode.clamp
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset('images/logo2.png'),
                  height: 60.0,
                ),
              ),
              SizedBox(height: 28.0),
              Center(
                child: TypewriterAnimatedTextKit(
                  text: ['Conversation'],
                  textStyle: TextStyle(
                    color: Colors.green,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              RedButton(
                title: 'Sign In', 
                color: Colors.green, 
                onPressed: (){
                  Navigator.pushNamed(context, LoginScreen.id);
                }
              ),
              RedButton(
                title: 'Sign Up', 
                color: Colors.green, 
                onPressed: (){
                  Navigator.pushNamed(context, RegistrationScreen.id);
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
