import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Nunito"
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: LoginPage(),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  int _pageState=0;
  var _backgroundColor= Colors.white;
  var _headingColor = Color(0xFFB40284A);
  double _headingTop=100;
  double _loginYOffset=0;
  double windowWidth =0;
  double windowHeight=0;
  double _registerYOffset=0;
  double _loginXOffset=0;
  double _loginWidth=0;
   double _loginOpacity = 1;
   double _loginHeight=0;
   bool _keyboardVisible=false;
@override
  void initState() {
    super.initState();
    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        setState(() {
_keyboardVisible=visible;
print("Keyboard state changed:$visible");
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    windowHeight=MediaQuery.of(context).size.height;
    windowWidth=MediaQuery.of(context).size.width;
    _loginHeight=windowHeight-190;

    switch(_pageState){
      case 0:
        _backgroundColor=Colors.white;
        _headingColor=Color(0xFFB40284A);
        _loginYOffset=windowHeight;
        _registerYOffset=windowHeight;
        _loginXOffset=0;
        _loginWidth=windowWidth;
         _loginOpacity=1;
        _headingTop=100;

        break;
      case 1:
        _backgroundColor=Color(0xFFBA8ECF7);
        _headingColor=Colors.white;
        _loginYOffset= 200;
        _registerYOffset=windowHeight;
        _loginXOffset=0;
        _loginWidth=windowWidth;
         _loginOpacity=1;
        _headingTop=90;

            break;
      case 2:
        _backgroundColor=Color(0xFFBA8ECF7);
        _headingColor=Colors.white;
        _loginYOffset=200;
        _registerYOffset=230;
        _loginXOffset=20;
        _loginWidth=windowWidth-40;
        _loginOpacity=0.7;
        _headingTop=80;
        break;
    }

    return Stack(
      children:<Widget> [
        AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(
            milliseconds: 1000
          ),
          color: _backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  setState(() {
                    _pageState=0;
                  });
    },
                child: Container(
                    child: Column(
                  children: <Widget>[
                    AnimatedContainer(
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: Duration(
                        milliseconds: 1000
                    ),
                      child: Container(
                        margin:  EdgeInsets.only(
                           top:_headingTop,
                 ),
                          child: Text('Welcome!',
                            style: TextStyle(
                              color: _headingColor,
                              fontSize: 40
                            ),
                          ),
        ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 8
                      ),
                      child: Text("Let's join us...",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB40284A),
                        fontSize: 16
                      ),),
                    )
                  ],
                ),
        ),
              ),
              Container (
                padding: EdgeInsets.symmetric(
                  horizontal: 32
                ),
                child: Center(
                  child: Image.asset('assets/image/login_image.png'),
                ),
              ),
              Container(
                child:GestureDetector(
                onTap: (){
                  setState(() {
                  _pageState=1;
                });
               },

                child: Container(
                  margin: EdgeInsets.all(40),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFB40284A),
                  borderRadius: BorderRadius.circular(50)
                ),
                  child:Center(
                  child: Text("Get Started",
                  style: TextStyle(
                    color: Colors.white,
                        fontSize: 16
                  ),),),
                ),
              ),
              ),],
          ),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              _pageState=2;
            });
          },
          child: AnimatedContainer(
            padding: EdgeInsets.all(32),
            width: _loginWidth,
            height: _loginHeight,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
              milliseconds: 1000
            ),
            transform: Matrix4.translationValues(_loginXOffset, _loginYOffset, 1),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(_loginOpacity),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    children: <Widget>[
                     Container(
                      margin: EdgeInsets.only(bottom:10),
                      child: Text(
                        "Login To Continue",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
    //Commit
                ),
                      InputWithIcon(icon: Icons.email,
                        hint: "Enter email...",),
                      SizedBox(height: 8,),
                      InputWithIcon(icon: Icons.vpn_key,
                          hint: "Enter Password...")
              ],
                ),
                Column(
                  children:<Widget> [
                    PrimaryButton(
                      buttonText: "Login",
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    OutlineButton(
                      buttonText: "Create New Account",
                    ),
                  ],

                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              _pageState=1;
            });
          },
          child: AnimatedContainer(
            padding: EdgeInsets.all(32),
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
                milliseconds: 1000
            ),
            transform: Matrix4.translationValues(0, _registerYOffset, 1),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Column(
                    children:<Widget> [
                      Container(
                        margin: EdgeInsets.only(bottom:20),
                        child: Text(
                         "Create a New Account",
                        style: TextStyle(
                          fontSize: 20
                        ),
                       ),
                      ),
                      InputWithIcon(icon: Icons.email,
                      hint: "Enter email...",),
                      SizedBox(height: 8,),
                      InputWithIcon(icon: Icons.vpn_key,
                      hint: "Enter Password...")
                    ],
                ),
                Column(
                  children:<Widget> [
                    PrimaryButton(
                      buttonText: "Create Account",
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    OutlineButton(
                      buttonText: "Back to Login",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
class InputWithIcon extends StatefulWidget {
   final IconData icon;
   final String hint;
  InputWithIcon({this.icon,this.hint});

  @override
  _InputWithIconState createState() => _InputWithIconState();
}

class _InputWithIconState extends State<InputWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Color(0xFFBC7C7C7),
        width: 2),
            borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        children:<Widget> [
          Container(
            width: 60,
      child: Icon(widget.icon,size: 20,
      color: Color(0xFFBB9B9B9),
      ),

    ),

          Expanded(
          child:TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              border: InputBorder.none,
              hintText: widget.hint
            ),

          )
    ),
        ],
      ),

    );
  }
}



class PrimaryButton extends StatefulWidget {
  final String buttonText;
  PrimaryButton({this.buttonText});
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFB40284A),
        width: 2),

        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child:Text(
        widget.buttonText,
        style: TextStyle(
          color: Color(0xFFB40284A),
          fontSize: 16
        ),),
    ),
      );

  }
}
class OutlineButton extends StatefulWidget {
  final String buttonText;
  OutlineButton({this.buttonText});
  @override
  _OutlineButtonState createState() => _OutlineButtonState();
}

class _OutlineButtonState extends State<OutlineButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: Color(0xFFB40284A),
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(20),
          child: Center(
            child:Text(
              widget.buttonText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),
          ),
        );

  }
}


