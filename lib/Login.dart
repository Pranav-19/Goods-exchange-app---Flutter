import 'package:flutter/material.dart';
import 'Home.dart';
import 'SignUp.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  final myFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
              image:  DecorationImage(
            image: AssetImage("images/bg_img.jpg"),
            fit: BoxFit.cover,
               ),
            ),
          padding: EdgeInsets.only(top: 25),
          
          child: Form(         
            key: myFormKey,
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                child: Column(     
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: TextFormField(
                                          
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'Username',
                        labelStyle:TextStyle(fontSize: 20,fontStyle: FontStyle.italic) ,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 2,
                          ),
                        ),
                      ),
                      
                      textCapitalization: TextCapitalization.words,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(12),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'Password',
                         labelStyle:TextStyle(fontSize: 20,fontStyle: FontStyle.italic) ,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 2,
                          ),
                        ),
                      ),
                      textCapitalization: TextCapitalization.words,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    width: 180,
                    child: MaterialButton(
                      color: Color.fromRGBO(90, 56, 167,1.0),
                      shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(23.0),
                        side: BorderSide(color: Color.fromRGBO(213, 196, 105,1.0),width: 1.5),                    
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 21,color: Color.fromRGBO(213, 196, 105,1.0)),
                      ),
                      elevation: 4,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      },
                      height: 45,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),                    
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account? ",
                      style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),),
                      FlatButton(
                     onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                      },
                        child: Text
                        ('Sign up',style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline, fontStyle: FontStyle.italic)),
                      )
                  ],)
                ],
              ),
            ),
          ),
        ),
    );
  }

}