import 'package:flutter/cupertino.dart';
import 'package:pdpui/main.dart';
import 'package:flutter/material.dart';
import 'package:pdpui/package/home_page.dart';
class PdpUi extends StatefulWidget {
  static final String id="pdpui";
  @override
  _PdpUiState createState() => _PdpUiState();
}

class _PdpUiState extends State<PdpUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(

        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.green[900],
                Colors.green[500],
                Colors.green[400],
              ],
            ),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80,),
              //#loginword
              Padding(
                  padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text("Login",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("Welcome back",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
                    ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            children: [
                              SizedBox(height: 60,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(171, 171, 171,.7),
                                        blurRadius: 20,//shadow uzunligi
                                        offset: Offset(0,10)//shadow qalinligi
                                    ),
                                  ],
                                ),
                                child:Column(
                                 children: [
                                   Container(
                                   padding: EdgeInsets.all(10),
                                   decoration: BoxDecoration(border:Border(bottom: BorderSide(color: Colors.grey[200]))),
                                   child: TextField(
                                     decoration: InputDecoration(
                                       hintStyle: TextStyle(color: Colors.grey),
                                       hintText: "Email",
                                       border: InputBorder.none
                                     ),
                                   ),
                                 ),

                                   Container(
                                     padding: EdgeInsets.all(10),
                                     decoration: BoxDecoration(border:Border(bottom: BorderSide(color: Colors.grey[200]))),
                                     child: TextField(
                                       decoration: InputDecoration(
                                           hintStyle: TextStyle(color: Colors.grey),
                                           hintText: "Password",
                                           border: InputBorder.none
                                       ),
                                     ),
                                   )
                                 ],
                                ),

                              ),
                              SizedBox(height: 40,),
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green),
                                child: Center(
                                  child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                ),
                              ),
                              SizedBox(height: 30,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushReplacementNamed(context, Register.id);

                                },
                                child: Text("Login with SNS",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                              ),

                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.blue
                                      ),
                                      child: Center(
                                        child: Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.black
                                      ),
                                      child: Center(
                                        child: Text("Github",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      ),
                                    ),
                                  ),
                                ],


                              )

                            ],
                          ),
                        ),
                      )
                  ),
              )

            ],
          ) ,
        ),
      ),
    );
  }
}
