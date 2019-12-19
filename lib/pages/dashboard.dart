import 'package:flutter/material.dart';
import 'package:notify/pages/create_task.dart';
import 'package:notify/pages/manage_group.dart';

class Dashboard extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Image.asset('images/title.png', height: 85, width: 100,),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: 
          Padding(
            padding: const EdgeInsets.all(30.0),
            child:
              Column(
                children: <Widget>[
                  //Row create task ang manange groups
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                        height: 100.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage('images/create_task.png')
                          )
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CreateTask()),
                            );
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Create Task',
                          style: TextStyle(fontSize: 12.0),
                          ),
                        )
                      ],
                    ),
                    Column(
                        children: <Widget>[
                          Container(
                        height: 100.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage('images/manage_group.png')
                          )
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ManageGroup()),
                            );
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Manage Groups',
                          style: TextStyle(fontSize: 12.0),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                  SizedBox(height: 20),
                  //Some Motivation for learning column
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(text: 'Some ', style: TextStyle(fontFamily: 'Roboto', decoration: TextDecoration.none, color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold)),
                        TextSpan(text: 'motivation ', style: TextStyle(fontFamily: 'Roboto', decoration: TextDecoration.none, color: Colors.pink, fontSize: 30.0, fontWeight: FontWeight.bold)),
                        TextSpan(text: 'for learning: ', style: TextStyle(fontFamily: 'Roboto', decoration: TextDecoration.none, color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold)),
                      ]
                    )
                  ),
                  SizedBox(height: 20),
                    RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(text: '00 ', style: TextStyle(fontFamily: 'Roboto', decoration: TextDecoration.none, color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.w900)),
                        TextSpan(text: '00 ', style: TextStyle(fontFamily: 'Roboto', decoration: TextDecoration.none, color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.w900)),
                        TextSpan(text: '01', style: TextStyle(fontFamily: 'Roboto', decoration: TextDecoration.none, color: Colors.pink, fontSize: 50.0, fontWeight: FontWeight.w900)),
                      ]
                    )
                  ),
                  
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(text: 'Months      ', style: TextStyle(fontFamily: 'Roboto', decoration: TextDecoration.none, color: Colors.black, fontSize: 15.0,)),
                        TextSpan(text: 'Weeks        ', style: TextStyle(fontFamily: 'Roboto', decoration: TextDecoration.none, color: Colors.black, fontSize: 15.0,)),
                        TextSpan(text: 'Day(s)', style: TextStyle(fontFamily: 'Roboto', decoration: TextDecoration.none, color: Colors.pink, fontSize: 15.0,)),
                      ]
                    )
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Left in this semester',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)
                    )
                  ]
                ),
          )
        );
  }
}