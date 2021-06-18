import 'package:flutter/material.dart';
import 'package:travel_app/const.dart';
import 'package:travel_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward().whenComplete(() async {
      await Future.delayed(Duration(seconds: 1));
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });

  late final Tween<Offset> _offsetTween = Tween<Offset>(
    begin: const Offset(0.0, 1.0),
    end: Offset.zero,
  );

  late final Tween<Offset> _offsetAirPlanTween = Tween<Offset>(
    begin: const Offset(2.0, -2.0),
    end: Offset.zero,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          FadeTransition(
            opacity: CurvedAnimation(
              parent: _controller,
              curve: Interval(
                0.75,
                1,
                curve: Curves.ease,
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/cloud.png',
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 40,
            child: SlideTransition(
              position: _offsetAirPlanTween.animate(CurvedAnimation(
                parent: _controller,
                curve: Interval(
                  0.75,
                  1,
                  curve: Curves.easeInOut,
                ),
              )),
              child: Image.asset(
                'assets/images/AirPlane.png',
                width: 60,
              ),
            ),
          ),
          SlideTransition(
            position: _offsetTween.animate(
              CurvedAnimation(
                parent: _controller,
                curve: Interval(
                  0.1,
                  0.5,
                  curve: Curves.easeInOut,
                ),
              ),
            ),
            child: Image.asset(
              'assets/images/building.png',
            ),
          ),
          Positioned(
            top: size.height / 8,
            left: 0,
            right: 0,
            child: FadeTransition(
              opacity: CurvedAnimation(
                parent: _controller,
                curve: Interval(
                  0.75,
                  1,
                  curve: Curves.easeIn,
                ),
              ),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Get Ready for',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      children: [
                        TextSpan(
                          text: '\nNew Adventures',
                          style: TextStyle(
                            color: accentColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Pack your things and make more memories Outdoor',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SlideTransition(
            position: _offsetTween.animate(
              CurvedAnimation(
                parent: _controller,
                curve: Interval(
                  0,
                  0.3,
                  curve: Curves.easeInOut,
                ),
              ),
            ),
            child: Image.asset(
              'assets/images/grass.png',
            ),
          ),
          FadeTransition(
            opacity: CurvedAnimation(
              parent: _controller,
              curve: Interval(
                0.5,
                0.75,
                curve: Curves.ease,
              ),
            ),
            child: Image.asset(
              'assets/images/girl.png',
            ),
          ),
        ],
      ),
    );
  }
}
