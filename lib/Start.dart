import 'package:cometo_app/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';


class Start extends StatefulWidget {

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  navigateToLogin()async{
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 300.0,),

            RichText(text: TextSpan(text: 'Welcome Buddy!', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black),
            )),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                SizedBox(height: 300.0),
                RaisedButton(
                  onPressed: navigateToLogin,
                  child: Text('LOGIN',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color:Colors.pink,
                ),
                SizedBox(width: 20.0,),
                RaisedButton(onPressed: (){},
                  child: Text('REGISTER',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color:Colors.pink,
                ),

              ],
            ),
            SizedBox(height: 20.0,),
            SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: (){},
            ),
          ],

        ),
      ),
    );
  }
}
