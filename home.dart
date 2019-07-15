import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        fixedColor: Color(0xff00FA9A),
        currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState(() {
            _bottomNavIndex=index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.home)),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.local_offer)),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.message)),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.notifications)),

        ],
      ),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.green),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
            child: new Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Text(
                      "Explore",
                      style: new TextStyle(
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                new SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    new Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: new Container(
                      height: 100.0,
                      decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Colors.redAccent),
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.drive_eta,
                              color: Colors.white,
                            ),
                            new Text(
                              "Motor",
                              style: new TextStyle(color: Colors.white),
                            )
                          ],
                      ),
                    ),
                        )),
                    new Expanded(
                        child: new Container(
                            height: 100.0,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 2.5,right: 2.5),
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          color: Colors.greenAccent,
                                          borderRadius:
                                              new BorderRadius.circular(5.0)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8.0),
                                            child: new Icon(
                                              Icons.local_offer,
                                              color: Colors.white,
                                            ),
                                          ),
                                          new Text(
                                            "Classified",
                                            style: new TextStyle(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:2.5,right: 2.5),
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              new BorderRadius.circular(5.0)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8.0),
                                            child: new Icon(
                                              Icons.beenhere,
                                              color: Colors.white,
                                            ),
                                          ),
                                          new Text(
                                            "Service",
                                            style: new TextStyle(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ))),
                    new Expanded(
                        child: new Container(
                            height: 100.0,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:2.5,bottom: 2.5),
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          color: Colors.lightBlueAccent,
                                          borderRadius:
                                              new BorderRadius.circular(5.0)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8.0),
                                            child: new Icon(
                                              Icons.account_balance,
                                              color: Colors.white,
                                            ),
                                          ),
                                          new Text(
                                            "Properties",
                                            style: new TextStyle(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 2.5,top: 2.5),
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          color: Colors.orangeAccent,
                                          borderRadius:
                                              new BorderRadius.circular(5.0)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8.0),
                                            child: new Icon(
                                              Icons.art_track,
                                              color: Colors.white,
                                            ),
                                          ),
                                          new Text(
                                            "Jobs",
                                            style: new TextStyle(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ))),
                  ],
                ),
                new SizedBox(height: 15.0,),

                Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Popular Trending",style: new TextStyle(fontSize:18.0 ),),
                    ),
                    new Expanded(
                      child: new Text("View All",style: new TextStyle(color: Colors.greenAccent),textAlign: TextAlign.end,),
                    )
                  ],
                ),
                new SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 160.0,

                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 120.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(image: new NetworkImage('https://images.g2a.com/newlayout/323x433/1x1x0/0017f67ada95/59e60aeaae653a34fe0e9633')
                                      ,fit: BoxFit.cover

                                  )

                              ),


                            ),
                            new Text("PUBG",style: new TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),




                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 160.0,

                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 120.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(image: new NetworkImage('https://images.g2a.com/newlayout/323x433/1x1x0/3d8213d17acd/59b286e95bafe322d6293412')
                                      ,fit: BoxFit.cover

                                  )

                              ),


                            ),
                            new Text("COD",style: new TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),




                    ),
                    new SizedBox(
                      width: 5.0,
                    ),

                    new Expanded(
                      child: Container(
                        height: 160.0,

                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 120.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(image: new NetworkImage('https://static-cdn.jtvnw.net/ttv-boxart/Mobile%20Legends%3A%20Bang%20bang.jpg')
                                      ,fit: BoxFit.cover

                                  )

                              ),


                            ),
                            new Text("Mobile Legends",style: new TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),




                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Educational",style: new TextStyle(fontSize:18.0 ),),
                    ),
                    new Expanded(
                      child: new Text("View All",style: new TextStyle(color: Colors.greenAccent),textAlign: TextAlign.end,),
                    )
                  ],
                ),
                new SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 160.0,

                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 120.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(image: new NetworkImage('https://store-images.s-microsoft.com/image/apps.6007.14599852896494176.6a23f863-5fc1-443c-9578-78937fdfd4ae.3596bc0f-d22d-4665-8f24-73e9884bcb94?mode=scale&q=90&h=1080&w=1920')
                                      ,fit: BoxFit.cover

                                  )

                              ),


                            ),
                            new Text("w3School",style: new TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),




                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 160.0,

                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 120.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(image: new NetworkImage('https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png')
                                      ,fit: BoxFit.cover

                                  )

                              ),


                            ),
                            new Text("GeeksforGeeks",style: new TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),




                    ),
                    new SizedBox(
                      width: 5.0,
                    ),

                    new Expanded(
                      child: Container(
                        height: 160.0,

                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 120.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(image: new NetworkImage('https://www.learnpython.org/static/img/share-logos/learnpython.org.png')
                                      ,fit: BoxFit.cover

                                  )

                              ),


                            ),
                            new Text("Learn Python",style: new TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),




                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Take Better Photos",style: new TextStyle(fontSize:18.0 ),),
                    ),
                    new Expanded(
                      child: new Text("View All",style: new TextStyle(color: Colors.greenAccent),textAlign: TextAlign.end,),
                    )
                  ],
                ),
                new SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 160.0,

                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 120.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(image: new NetworkImage('https://lh3.googleusercontent.com/eqkbG00skAcMecPqexaLSlZKlmH8OFlKbFwkZ7e8A78s4_8Fuo8xswrYlz0H4YRD8Xg')
                                      ,fit: BoxFit.cover

                                  )

                              ),


                            ),
                            new Text("B612",style: new TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),




                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 160.0,

                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 120.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(image: new NetworkImage('https://lh3.googleusercontent.com/evc-4ioGfX6VPYNCMAJCNi4FH4cDMB_JZKHS6nivPb1mzektPYEmPbRSdp5osq9HAzA')
                                      ,fit: BoxFit.cover

                                  )

                              ),


                            ),
                            new Text("BeautiPlus",style: new TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),




                    ),
                    new SizedBox(
                      width: 5.0,
                    ),

                    new Expanded(
                      child: Container(
                        height: 160.0,

                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 120.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(image: new NetworkImage('https://images-na.ssl-images-amazon.com/images/I/51iMEcLnk2L._SY355_.png')
                                      ,fit: BoxFit.cover

                                  )

                              ),


                            ),
                            new Text("Retrica",style: new TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),




                    )
                  ],
                )

              ],
            ),
          ),
        )
      ],
    );
  }
}
