import 'package:code/utils/SizeConfig.dart';
import 'package:code/view/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

var onboardingAsset = 'assets/CA_Color_Logo.png';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    homeScreenNavigation();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Container(
      width: SizeConfig.blockSizeHorizontal * 100,
      height: SizeConfig.blockSizeVertical * 100,
      margin: EdgeInsets.all(25),
      child: Center(child: Image.asset(onboardingAsset)),
    ));
  }

  void homeScreenNavigation() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(pageRouteBuilder());
    });
  }

  PageRouteBuilder pageRouteBuilder() {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return HomeScreen();
      },
      transitionDuration: Duration(milliseconds: 500),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return SlideTransition(
          position: new Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: new SlideTransition(
            position: new Tween<Offset>(
              begin: Offset.zero,
              end: const Offset(-1.0, 0.0),
            ).animate(secondaryAnimation),
            child: child,
          ),
        );
      },
    );
  }
}
