import 'package:flutter/material.dart';
import 'dart:async';
import 'package:contactus/contactus.dart';
import 'Rivew.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyApp())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Image(
                image: AssetImage(
                    'images/aashir.png'),
                height:300),
            SizedBox(
              height: 20,
            ),
            Text("Impact Meter",style:TextStyle(fontSize: 25)),
          ],
        )
    );
  }
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(120.0),
            child: Container(
              child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Color.fromRGBO(54,83,148,1), // status bar color
                brightness: Brightness.dark,
                title: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Impact Meter',style: TextStyle(color: Colors.white),),
                      CircleAvatar(
                        child: Image.asset('images/aashir.png', height: 60.0,),
                      )
                    ],
                  ),

                ),
                bottom: TabBar(
                  labelColor: Colors.white,
                  tabs: [
                    Tab(text: "Requests",),
                    Tab(text: "My Schedule"),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 55,
                    width: size.width * 0.97,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color.fromRGBO(216,53,99,1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.attach_money_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: size.width * 0.05,
                          ),
                          Text(
                            'In Progress: Rs. 10,000',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: size.width * 0.97,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: 'Search'
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: size.width * 0.97,
                    decoration: BoxDecoration(
                    ),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Review()));
                      },
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Image.asset('images/aashir.png',),radius: 25,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Ali Muhammad',style: TextStyle(fontSize: 18),),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('4125465465465'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Tue 12 Feb, 6:00pm',style: TextStyle(fontSize: 14, color: Colors.pink.withOpacity(0.8)),),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Image.asset('images/aashir.png',),radius: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(' Forwarded by: Ali Khan Askeri • 2 Days ago',style: TextStyle(fontSize: 14),),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: [
                                  Icon(
                                    Icons.attach_money_sharp,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Rs. 1,500',style: TextStyle(fontSize: 18),),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: size.width * 0.97,
                    decoration: BoxDecoration(
                    ),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Review()));
                      },
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Image.asset('images/aashir.png',),radius: 25,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Ali Muhammad',style: TextStyle(fontSize: 18),),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('4125465465465'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Tue 12 Feb, 6:00pm',style: TextStyle(fontSize: 14, color: Colors.pink.withOpacity(0.8)),),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Image.asset('images/aashir.png',),radius: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(' Forwarded by: Ali Khan Askeri • 2 Days ago',style: TextStyle(fontSize: 14),),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: [
                                  Icon(
                                    Icons.attach_money_sharp,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Rs. 1,500',style: TextStyle(fontSize: 18),),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        ContactUs(
                          logo: AssetImage('images/aashir.png'),
                          email: 'mashr9980@gmail.com',
                          companyName: 'Aashir Tariq',
                          phoneNumber: '+923008808985',
                          githubUserName: 'aashir9980',
                          tagLine: 'Flutter Developer',
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}

