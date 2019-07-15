import 'package:flutter/material.dart';

import 'login.dart';

void main() => runApp(QuickBee());

class QuickBee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kashata',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.green),
                  child: new Icon(
                    Icons.local_offer,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(right: 50.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.red),
                  child: new Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 30.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.blue),
                  child: new Icon(
                    Icons.local_car_wash,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 90.0, top: 40.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.yellow),
                  child: new Icon(
                    Icons.place,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top:8.0, bottom: 80.0),
                    child: new Text(
                      "Kashata",
                      style: new TextStyle(fontSize: 30.0),
                    ))
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder:( context)=> LoginPage(),
                      ));

                    },
                    child: new Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        width: 70.0,
                        decoration: new BoxDecoration(
                            color: Colors.green,
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text(
                          "Sign in With Email",
                          style:
                              new TextStyle(fontSize: 20.0, color: Colors.white),
                        )),
                  ),
                ))
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 5.0, top: 10.0),
                  child: new Container(
                      alignment: Alignment.center,
                      height: 70.0,
                      width: 70.0,
                      decoration: new BoxDecoration(
                          color: Color(0xFF3b5998),
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text(
                        "Facebook",
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      )),
                )),
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  child: new Container(
                      alignment: Alignment.center,
                      height: 70.0,
                      width: 70.0,
                      decoration: new BoxDecoration(
                          color: Color(0xFFDD4B39),
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text(
                        "Google",
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      )),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
