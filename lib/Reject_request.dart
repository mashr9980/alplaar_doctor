import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:alplaar1/Consultation.dart';

class Reject_request extends StatefulWidget {
  @override
  _Reject_requestState createState() => _Reject_requestState();
}

class _Reject_requestState extends State<Reject_request> {
  int _groupValue = -1;
  Widget _myRadioButton({String title, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title),
    );
  }

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
                      Text('Reject Request',style: TextStyle(color: Colors.black, fontSize: 20),),
                    ],
                  ),

                ),
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Reason of Rejection',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Expanded(
                    child: Column(
                      children: [
                        _myRadioButton(
                          title: "Fake CNIC",
                          value: 0,
                          onChanged: (newValue) => setState(() => _groupValue = newValue),
                        ),
                        _myRadioButton(
                          title: "Time Slot is already book by another patient",
                          value: 1,
                          onChanged: (newValue) => setState(() => _groupValue = newValue),
                        ),
                        _myRadioButton(
                          title: "Other",
                          value: 2,
                          onChanged: (newValue) => setState(() => _groupValue = newValue),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Explain your Reason',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.97,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 80.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Write here'
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
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
                              'Confirm',
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
          ),
        )
    );
  }
}

