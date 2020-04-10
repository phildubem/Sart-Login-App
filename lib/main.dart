import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginflutterapp/SignUp.dart';
import 'FormCard.dart';
import 'SignUp.dart';


void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget horizontalLine() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      width: ScreenUtil.getInstance().setWidth(120),
      height: 1.0,
      color: Colors.black26.withOpacity(.2),
    ),
  );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334, /*allowFontScaling: true*/);
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
        Container(
          width: ScreenUtil.getInstance().setWidth(330),
          height: ScreenUtil.getInstance().setHeight(100),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
        ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 2.0),
                child: Image.asset(""),
              ),
              Expanded(
                child: Container(),
              ),
              Image.asset(""),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 30.0),
              child: Column(
                children: <Widget>[
                  Row (
                    children: <Widget>[Image.asset("",
                    width: ScreenUtil.getInstance().setWidth(110),
                    height: ScreenUtil.getInstance().setHeight(110),
                    ),
                    Text("",
                    style: TextStyle()),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(180),
                  ),
                  FormCard(),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 12.0,
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      width: ScreenUtil.getInstance().setWidth(330),
                      height: ScreenUtil.getInstance().setHeight(100),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF17ead9),
                            Color(0xFF6078ea)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF6078ea).withOpacity(.3),
                              offset: Offset(0.0, 8.0),
                              blurRadius: 8.0
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text("SIGN IN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setWidth(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      horizontalLine(),
                      Text("OR", style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),),
                      horizontalLine()
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't Have an Account?",
                        style: TextStyle(color:Colors.white, fontWeight: FontWeight.w300),
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Sign up",
                            style:
                            TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),),
                        ),
                      ),





                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

