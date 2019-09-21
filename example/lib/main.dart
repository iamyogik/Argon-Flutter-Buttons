import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ArgonButtonExample(),
    );
  }
}

class ArgonButtonExample extends StatelessWidget {
  const ArgonButtonExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ArgonTimerButton(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.45,
              minWidth: MediaQuery.of(context).size.width * 0.30,
              highlightColor: Colors.transparent,
              highlightElevation: 0,
              roundLoadingShape: false,
              onTap: (startTimer, btnState) {
                if (btnState == ButtonState.Idle) {
                  startTimer(5);
                }
              },
              // initialTimer: 10,
              child: Text(
                "Resend OTP",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              loader: (timeLeft) {
                return Text(
                  "Wait | $timeLeft",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                );
              },
              borderRadius: 5.0,
              color: Colors.transparent,
              elevation: 0,
              borderSide: BorderSide(color: Colors.black, width: 1.5),
            ),
            SizedBox(
              height: 50,
            ),
            ArgonTimerButton(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.45,
              onTap: (startTimer, btnState) {
                if (btnState == ButtonState.Idle) {
                  startTimer(5);
                }
              },
              child: Text(
                "Resend OTP",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              loader: (timeLeft) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  child: Text(
                    "$timeLeft",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                );
              },
              borderRadius: 5.0,
              color: Color(0xFF7866FE),
            ),
            SizedBox(
              height: 50,
            ),
            ArgonTimerButton(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.45,
              minWidth: MediaQuery.of(context).size.width * 0.30,
              highlightColor: Colors.transparent,
              highlightElevation: 0,
              roundLoadingShape: false,
              splashColor: Colors.transparent,
              onTap: (startTimer, btnState) {
                if (btnState == ButtonState.Idle) {
                  startTimer(5);
                }
              },
              initialTimer: 10,
              child: Text(
                "Resend OTP",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              loader: (timeLeft) {
                return Text(
                  "Wait | $timeLeft",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                );
              },
              borderRadius: 5.0,
              color: Colors.transparent,
              elevation: 0,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
              height: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 50,
            ),
            ArgonButton(
              height: 50,
              roundLoadingShape: true,
              width: MediaQuery.of(context).size.width * 0.45,
              onTap: (startLoading, stopLoading, btnState) {
                if (btnState == ButtonState.Idle) {
                  startLoading();
                } else {
                  stopLoading();
                }
              },
              child: Text(
                "SignUp",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              loader: Container(
                padding: EdgeInsets.all(10),
                child: SpinKitRotatingCircle(
                  color: Colors.white,
                  // size: loaderWidth ,
                ),
              ),
              borderRadius: 5.0,
              color: Color(0xFFfb4747),
            ),
            SizedBox(
              height: 50,
            ),
            ArgonButton(
              height: 50,
              roundLoadingShape: false,
              width: MediaQuery.of(context).size.width * 0.45,
              minWidth: MediaQuery.of(context).size.width * 0.30,
              onTap: (startLoading, stopLoading, btnState) {
                if (btnState == ButtonState.Idle) {
                  startLoading();
                } else {
                  stopLoading();
                }
              },
              child: Text(
                "Continue",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              loader: Text(
                "Loading...",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              borderRadius: 5.0,
              color: Color(0xFF7866FE),
            ),
          ],
        ),
      ),
    );
  }
}
