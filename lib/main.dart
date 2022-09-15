import 'package:flutter/material.dart';
import 'package:you/Animations/FadeAnimation.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _scale2Controller;
  late AnimationController _widthController;
  late AnimationController _positionController;
  late AnimationController _scaleController;

  late Animation<double> _scaleAnimation;
  late Animation<double> _scale2Animation;
  late Animation<double> _widthAnimation;
  late Animation<double> _positionAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    
    _scaleAnimation = Tween<double>(
      begin: 1.0, end: 0.8
    ).animate(_scaleController)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _widthController.forward();
      }
    });




  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 1, 13, 1),
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -50,
              left: 0,
              child: FadeAnimation(
                  1,
                  Container(
                    width: width,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/one.png'),
                            fit: BoxFit.cover)),
                  )),
            ),
            Positioned(
              top: -100,
              left: 0,
              child: FadeAnimation(
                  1.3,
                  Container(
                    width: width,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/one.png'),
                            fit: BoxFit.cover)),
                  )),
            ),
            Positioned(
              top: -150,
              left: 0,
              child: FadeAnimation(
                  1.6,
                  Container(
                    width: width,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/one.png'),
                            fit: BoxFit.cover)),
                  )),
            ),
            Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                        1,
                        Text(
                          "Welcome",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    FadeAnimation(
                        1.3,
                        Text(
                          "Data will talk if you're willing to listen...",
                          style: TextStyle(color: Colors.white70, height: 1.4),
                        )),
                    SizedBox(
                      height: 180,
                    ),
                    FadeAnimation(
                        1.6,AnimatedBuilder(
                          animation: _scaleController,
                          builder: (context, child) => Transform.scale(
                            scale: _scaleAnimation.value,
                          child: Center(
                            child: Container(
                              width: 80,
                              height: 80,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(.4),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.blue, shape: BoxShape.circle),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )),
                        )),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
