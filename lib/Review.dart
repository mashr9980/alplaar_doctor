import 'package:alplaar1/Verification.dart';
import 'package:flutter/material.dart';
import 'package:alplaar1/Consultation.dart';

class Review extends StatefulWidget {
  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Container(
              child: AppBar(
                bottomOpacity: 0.0,
                elevation: 0.0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white, // status bar color
                brightness: Brightness.dark,
                title: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Color.fromRGBO(216,53,99,1)),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Text('Review',style: TextStyle(color: Colors.black, fontSize: 20),),
                    ],
                  ),

                ),
              ),
            ),
          ),
          body: Container(
            width: size.width * 0.97,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Impactee Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: [
                          CircleAvatar(
                            child: Image.asset('images/aashir.png',),radius: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Ali Muhammad',style: TextStyle(fontSize: 18),),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.attach_money_sharp,
                                  color: Colors.pink,
                                ),
                                Text(
                                  '35571-4569855-5',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Contact Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.call,
                              color: Colors.pink,
                            ),
                            Text(
                              '0300-88478985',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Date & Time',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.calendar_today_rounded,
                              color: Colors.pink,
                            ),
                            Text(
                              'February 22, 2021',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.timelapse,
                              color: Colors.pink,
                            ),
                            Text(
                              '5:00 PM',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Location',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.pink,
                            ),
                            Text(
                              'PAECH Hospital',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Fees',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.remove_sharp,
                              color: Colors.pink,
                            ),
                            Text(
                              'Rs. 1,500',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: size.width * 0.43,
                          height: 55,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Consultation()));
                            },
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Reject Request',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.pink.withOpacity(0.8),
                                  ),
                                ),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * 0.43,
                          height: 55,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Verification()));
                            },
                            color: Colors.blue[800],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Accept Request',
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
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
