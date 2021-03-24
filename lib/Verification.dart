import 'package:flutter/material.dart';
import 'package:alplaar1/Consultation.dart';
import 'package:flutter/services.dart';
import 'package:usage/usage_io.dart';


class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}
final _formKey = GlobalKey<FormState>();
class _VerificationState extends State<Verification> {
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
                      Text('Verification',style: TextStyle(color: Colors.black, fontSize: 20),),
                    ],
                  ),

                ),
              ),
            ),
          ),
          body: Form(
            key: _formKey,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    width: size.width * 0.97,
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Enter unique ID provided by Impactee',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: size.width * 0.97,
                          child: TextFormField(
                            maxLength: 5,
                            inputFormatters: [
                              WhitelistingTextInputFormatter(RegExp("[0-9]"))
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),

                                ),

                                hintText: 'Enter Unique ID'
                            ),
                            textAlign: TextAlign.center,
                            validator: (text) {
                              if (text != "55555" || text.isEmpty) {
                                return 'Invalid ID';
                              }
                              return null;
                            },
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Consultation()));
                            }
                          },
                          color: Color.fromRGBO(54,83,148,1),
                          child: Text(
                            'Submit',
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
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        )
    );
  }
}
