import 'package:flutter/material.dart';

class Request_rejected extends StatefulWidget {
  @override
  _Request_rejectedState createState() => _Request_rejectedState();
}

class _Request_rejectedState extends State<Request_rejected> {
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
                  ),

                ),
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset('images/req_comp.PNG', width: size.width * 0.90,),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Request Rejected!', style: TextStyle(fontSize: 26),),
                            SizedBox(height: 30,),
                            Text("View Request History", style: TextStyle(fontSize: 15,color: Color.fromRGBO(216,53,99,1)),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: size.width * 0.94,
                              height: 55,
                              child: RaisedButton(
                                onPressed: () {
                                },
                                color: Color.fromRGBO(54,83,148,1),
                                child: Text(
                                  'Done',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
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
              ],
            ),
          ),
        )
    );
  }
}
