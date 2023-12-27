import 'package:flutter/material.dart';
import 'navigator.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async{
    await Future.delayed(Duration(seconds: 2));
     Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => Navigators(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 16, 26, 100),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 250,
                        width: 250,
                      child: Image.asset('assets/images/img_logo_1.png', fit: BoxFit.contain),
                      )
                      
                    ]))));
  }
}