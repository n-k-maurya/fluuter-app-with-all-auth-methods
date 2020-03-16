import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cursorColor: Colors.amber[700]
      ),
      home: Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors:[Colors.amber[900],Colors.amber[300]]
                )
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          title: Text('Auth-All',style: TextStyle(fontFamily: 'Oxanium',fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          child: SingleChildScrollView(

            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                TextFormField(

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color: Colors.amber[500],),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber[400],width: 2.0),
                      borderRadius: BorderRadius.circular(50.0)


                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber[900],width: 2.0),
                        borderRadius: BorderRadius.circular(50.0)


                    )
                  )
                ),
                SizedBox(height: 20,),
                TextFormField(

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_open,color: Colors.amber[500],),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber[400],width: 2.0),
                          borderRadius: BorderRadius.circular(50.0)


                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber[900],width: 2.0),
                            borderRadius: BorderRadius.circular(50.0)


                        )
                    )
                ),
                SizedBox(height: 40,),
                SizedBox(
                  width: 200,
                  height: 55,
                  child: RaisedButton(
                    color: Colors.amber[200],
                    elevation: 0.0,
                    splashColor: Colors.amber[900],
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(50.0)
                   ),
                    child: Text('LOG IN') ,
                    onPressed: (){

                    },

                  ),
                ),
                SizedBox(height: 10,),
                Text('Or connect using', style: TextStyle(color: Colors.black38),),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    SizedBox(
                      height: 45,
                      width: 125,
                      child: FlatButton.icon(
                        label: Text('Facebook',style: TextStyle(color: Colors.white),),
                        onPressed: (){

                        },
                        color: Color.fromRGBO(66, 103, 178, 1.0),
                        icon: Icon(FontAwesomeIcons.facebook,color: Colors.white,),
                      ),
                    ),
                    SizedBox(width: 20,),
                    SizedBox(
                      width: 120,
                      height: 45,
                      child: FlatButton.icon(
                        label: Text('Google',style: TextStyle(color: Colors.white),),
                        onPressed: (){

                        },
                        color: Color.fromRGBO(219, 68, 55, 1.0),

                        icon: Icon(FontAwesomeIcons.google,size: 20,color: Colors.white,),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),),
    );
  }
}