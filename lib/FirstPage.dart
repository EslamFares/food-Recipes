import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/img/breakfast.jpg',
                    ),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
            padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
            child: Material(
              color: Colors.white30,
              elevation: 10.0,
              borderRadius: BorderRadius.circular(50.0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    contentPadding: EdgeInsets.only(
                        left: 20.0, right: 15.0, top: 20.0, bottom: 20),
                    hintText: '  Search for recipes and channels',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width - 50,
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'ROASTED',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontFamily: 'Timesroman',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'LAMB',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontFamily: 'Timesroman',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 320,
                  child: Text(
                      'There’s a lot happening around you! Our mission is to provide what’s happening near you!"',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                          height: 1.7,
                          letterSpacing: 1.2)),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 50,
                              fontFamily: 'Timesroman',
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 35,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 35,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 35,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(top: 15.0, left: 30.0, bottom: 10),
              height: 175.0,
//                      color: Colors.pink,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  foodCard(),
                  SizedBox(
                    width: 20,
                  ),
                  foodCard(),
                  SizedBox(
                    width: 20,
                  ),
                  foodCard(),
                  SizedBox(
                    width: 20,
                  ),
                  foodCard(),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget foodCard() {
    return Container(
      height: 100.0,
      margin: EdgeInsets.only(bottom: 10),
      width: 350.0,
      decoration: BoxDecoration(
//        boxShadow: [
//          BoxShadow(
//            color: Colors.blueGrey,
//            offset: Offset(2.0, 1.0), //(x,y)
//            blurRadius: 6.0,
//          ),
//        ],
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white70.withOpacity(.8),
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/img/pasta.jpg')),
                shape: BoxShape.circle),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Grilled Chicken',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'with Fruit Salad',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 2.0,
                width: 75.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/img/1.jpg'))),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Eslam Fares',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand'))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
