import 'package:flutter/material.dart';
import 'package:notify/pages/home.dart';

//First Page

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 0.0),
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(text: 'Schoolwork Anywhere', style: TextStyle(fontFamily: 'Roboto', decoration: TextDecoration.none, color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.bold)),
                          TextSpan(text: '.', style: TextStyle(fontFamily: 'Roboto', decoration: TextDecoration.none, color: Colors.pinkAccent, fontSize: 50.0, fontWeight: FontWeight.w900)),
                        ]
                      )
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 35.0, 35.0, 0.0),
                    child: TextField(
                            decoration: InputDecoration(
                                labelText: 'EMAIL',
                                labelStyle: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green))),
                          ), 
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 35.0, 0.0),
                    child: TextField(
                            decoration: InputDecoration(
                                labelText: 'PASSWORD',
                                labelStyle: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green))),
                          ), 
                  ),
                  
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 35.0, 0.0),
                      alignment: Alignment(1.0, 0.0),
                      child: InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              decoration: TextDecoration.underline),
                        )
                      )
                  ),
                  
                  
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
            ),    
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 130.0),
                  textColor: Colors.white,
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ), 
                  child: Text('LOGIN',
                    style: TextStyle(fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold)     
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),

                SizedBox(height: 20),

                RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 120.0),
                  textColor: Colors.white,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    side: BorderSide(color: Colors.black87, width: 2.5)
                  ), 
                  child: Text('SIGN UP',
                    style: TextStyle(fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black)     
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ],
            ), 
          ),
        ], 
      ),
    );
  }
}