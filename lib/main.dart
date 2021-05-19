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
double dropDownHeight = 50.0;
double dropDownWidth = 100.0;
var sendBitcoinType = 'BTC';
var getBitcoinType = 'DGB';

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
          color: CupertinoColors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: SizeConfig.blockSizeHorizontal * 100,
                height: SizeConfig.blockSizeVertical * 22,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Sent Bitcoin Container...
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 100,
                      height: SizeConfig.blockSizeVertical * 10,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(color: CupertinoColors.systemRed),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: CupertinoColors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                    child: Text(
                                      'You Send',
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                                    child: Text(
                                      '0.1',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          ),
                          // DropDown Bitcoin Widget
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(
                                width: dropDownWidth,
                                height: dropDownHeight,
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  hint: Text(
                                    'Select Bitcoin',
                                    style: TextStyle(
                                        color: CupertinoColors.black,
                                        fontSize: 14),
                                  ),
                                  value: sendBitcoinType,
                                  items: <String>['BTC', 'DGB']
                                      .map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (newBitcoin) {
                                    print("Send Bitcoin: $sendBitcoinType");
                                    print("New Bitcoin: $newBitcoin");
                                    setState(() {
                                      sendBitcoinType = newBitcoin;
                                    });
                                  },
                                ),
                              ),
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                    // Bitcoin Got Container...
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 100,
                      height: SizeConfig.blockSizeVertical * 10,
                      decoration: BoxDecoration(
                          border: Border.all(color: CupertinoColors.systemRed),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: CupertinoColors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                    child: Text(
                                      'You Get',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.greenAccent),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                                    child: Text(
                                      '43223.3824',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          ),
                          // DropDown Bitcoin Widget
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(
                                width: dropDownWidth,
                                height: dropDownHeight,
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  hint: Text(
                                    'Select Bitcoin',
                                    style: TextStyle(
                                        color: CupertinoColors.black,
                                        fontSize: 14),
                                  ),
                                  value: getBitcoinType,
                                  items: <String>['BTC', 'DGB']
                                      .map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (newBitcoin) {
                                    print("Current Bitcoin: $getBitcoinType");
                                    print("New Bitcoin: $newBitcoin");
                                    setState(() {
                                      getBitcoinType = newBitcoin;
                                    });
                                  },
                                ),
                              ),
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
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
