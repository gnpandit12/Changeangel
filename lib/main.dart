import 'package:code/utils/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var appBarTitle = "changeangel";
var buttonColor = new Color(0xff32D278);
var appBarBackgroundImage = 'assets/CA_White_Logo.png';
var drawerHeaderBackgroundImage = 'assets/CA_Color_Banner.png';

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
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.black,
        flexibleSpace: Image(
          image: AssetImage(appBarBackgroundImage),
          fit: BoxFit.contain,
        ),
      ),
      body: Container(
        width: SizeConfig.blockSizeHorizontal * 100,
        height: SizeConfig.blockSizeVertical * 100,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: SizeConfig.blockSizeHorizontal * 100,
            height: SizeConfig.blockSizeVertical * 10,
            color: buttonColor,
            child: Center(
              child: exchangeButtonWidget(),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: CupertinoColors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Center(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(drawerHeaderBackgroundImage),
                        fit: BoxFit.contain)),
              ),
              ListTile(
                leading:
                    Icon(CupertinoIcons.home, color: CupertinoColors.white),
                title: Text(
                  'Home',
                  style: TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(height: 0.5, color: Colors.blueGrey),
              ListTile(
                leading: Icon(Icons.history, color: CupertinoColors.white),
                title: Text(
                  'History',
                  style: TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(height: 0.5, color: Colors.blueGrey),
              ListTile(
                leading: Icon(Icons.people, color: CupertinoColors.white),
                title: Text(
                  'About changeangel',
                  style: TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(height: 0.5, color: Colors.blueGrey),
              ListTile(
                leading: Icon(Icons.person, color: CupertinoColors.white),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(height: 0.5, color: Colors.blueGrey),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CupertinoColors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Exchange'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        ],
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
      ),
    );
  }

  Widget exchangeButtonWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Exchange',
          style: TextStyle(
              color: CupertinoColors.white,
              fontSize: 22,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: CupertinoColors.white,
        )
      ],
    );
  }
}
