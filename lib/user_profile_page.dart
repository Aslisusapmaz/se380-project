import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.redAccent, Colors.pinkAccent],

                  )
              ),
              child: Container(
                  width: double.infinity,
                  height: 320.0,
                  child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50.0,


                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'User Profile',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,

                          ),

                        ],

                      )
                  )
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Bio',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontStyle: FontStyle.normal,
                        fontSize: 28.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,

                    ),
                    Text(
                      'Bio Information',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),

                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
                width: 300,
                child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    elevation: 0.0,
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.pinkAccent, Colors.redAccent],
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Container(
                        constraints: BoxConstraints(
                            maxWidth: 300.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Follow Me',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    )

                )
            )
          ],
        )
    );
  }
}