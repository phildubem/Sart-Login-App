import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
       height: ScreenUtil.getInstance().setHeight(540),
       decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 15.0),
            blurRadius: 15.0,
          ),
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, -10.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setHeight(40),
                fontWeight: FontWeight.bold,
                letterSpacing: .6,
                color: Colors.blue
              ),
            ),

            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
              ],
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                    color: Colors.grey, fontSize: 12.0
                ),
              ),
            ),

            SizedBox(
              height: ScreenUtil.getInstance().setHeight(40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.lock,
                  color: Colors.blue,
                ),
              ],
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "password",
                hintStyle: TextStyle(
                    color: Colors.grey, fontSize: 12.0
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                    fontSize: ScreenUtil.getInstance().setHeight(28),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}