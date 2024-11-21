// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main()
{
  return(
    runApp(MyApp())
  );
}

class MyApp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
  
}

class MyAppState extends State<MyApp>
{
  TextEditingController emailUser=TextEditingController();
  TextEditingController passUser=TextEditingController();
  String email="tareq@gmail.com";
  String password="112233";
  String text="";
  @override
  Widget build(BuildContext context) {
    return(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            leading: IconButton(
              icon:Icon(Icons.menu,color: Colors.white,),
              onPressed: (){},
            ),
            title: Text(
              "Login Page",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                icon:Icon(Icons.settings),
                onPressed: (){},
              )
            ],
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: emailUser,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    hintText: "x@gmail.com",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passUser,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    hintText: "your password",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: ()
                  {
                    setState(() {
                      if((emailUser.text).toLowerCase()==email && password==passUser.text)
                      {
                        text="Welcome";
                      }
                      else
                      {
                        text="Invalid Email or Password";
                      }
                    });
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.red,
                    ),
                  )
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  )
              ],
            ),
          )
        ),
      )
    );
  }
  
}