import 'package:flutter/material.dart';

class ManageGroup extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
            Column(
          
                    mainAxisAlignment: MainAxisAlignment.center,
          
                    children: <Widget>[
          
                      Text(
                        'Hakdogens',
                        style: TextStyle(fontSize: 20.0)
                        )
          
                    ]
          
                  ),
        ]
      ),
    );
  }
}