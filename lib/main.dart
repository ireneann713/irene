import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main()=> runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomePage(),

  )
);
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.lightBlue[900],
              Colors.lightBlue[800],
              Colors.lightBlue[400]

            ]


          ),
        ),
        child: Column(
          children:<Widget> [
            SizedBox(height: 80,),
            Padding(padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text("Login",
                    style: TextStyle(color:Colors.white,fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Welcome Back",style:TextStyle(color: Colors.white,fontSize: 20),),

                ],
              ),
            ),
            SizedBox(
              height:20 ,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0),topRight: Radius.circular(60.0),)
                  
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius:BorderRadius.circular(20) ,
                              boxShadow: [BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0,10)
                              )]


                            ),
                          child: Column(
                            children:<Widget> [
                              Container(
                                padding:EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border:Border(bottom: BorderSide(color:Colors.grey[200]))
                                ),
                                child: TextField(

                                  decoration: InputDecoration(
                                    hintText: "Email(Required)",
                                    hintStyle: TextStyle(
                                      color: Colors.blueGrey
                                    ),
                                    border: InputBorder.none
                                  ),
                                ),

                              ),
                              Container(
                                padding:EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                    border:Border(bottom: BorderSide(color:Colors.grey[200]))
                                ),
                                child: TextField(
                                  obscureText: true,

                                  decoration: InputDecoration(
                                      hintText: "Password(Required)",
                                      hintStyle: TextStyle(
                                          color: Colors.blueGrey
                                      ),
                                      border: InputBorder.none
                                  ),
                                ),

                              ),

                            ],
                          ),
                        ),
                        SizedBox(
                          height:40,
                        ),
                        Text("Forgot Password?",style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 40,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.lightBlue[900]
                          ),
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.arrowCircleRight,
                              color: Colors.lightBlue,
                            ),
                          ),

                        ),
                        SizedBox(height: 30,),
                        Text("Or Login With",style: TextStyle(color: Colors.grey),),

                        SizedBox(height: 30,),
                        Row(
                          children:<Widget> [
                            Expanded(
                                child: Container(
                              height: 45,
                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(50.0) ,
                              color: Colors.blueAccent

                            ),
                                  child: Container(
                                    child: Image(
                                      image: AssetImage(
                                        'assets/google_g.png',
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                    height: 5,
                                    width: 5,
                                  ),

                        ),
                                ),

                            SizedBox(width: 30,),
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Colors.blueAccent

                                ),
                                child: Icon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.white,
                                ),
                              ),

                              ),


                          ],
                        )
                      ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
