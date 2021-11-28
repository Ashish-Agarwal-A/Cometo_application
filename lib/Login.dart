import 'package:cometo_app/HomeScreen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  navigateToHome() async{
    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 300.0,),
              Container(
                child: Form(

                  child: Column(
                    children: <Widget>[
                      Container(
                        child: TextFormField(
                          validator: (input) {
                            if (input!.isEmpty){
                              return 'Enter Email';
                            }

                          },
                          decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email)
                          ),

                        ),
                      ),
                      Container(
                        child: TextFormField(
                          validator: (input) {
                            if (input!.length <= 6)
                              return 'Provide Min. 6 Characters';
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                          obscureText: true,

                        ),
                      ),
                      RaisedButton(
                        onPressed: navigateToHome,
                        child: Text('LOGIN',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )
                        ,
                      )


                    ],
                  ),
                ),)
            ],
          ),
        ),
      ),
    );
  }
}