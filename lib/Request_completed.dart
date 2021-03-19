import 'package:flutter/material.dart';
import 'package:alplaar1/Consultation.dart';

class Request_completed extends StatefulWidget {
  @override
  _Request_completedState createState() => _Request_completedState();
}

class _Request_completedState extends State<Request_completed> {
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
                            Text('Request Complete!', style: TextStyle(fontSize: 26),),
                            SizedBox(height: 15,),
                            Text("An amount of 1,500 has been credited in your account.", style: TextStyle(fontSize: 10),),
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
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => Consultation()));
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
