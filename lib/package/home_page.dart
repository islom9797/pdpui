import 'package:flutter/material.dart';
import 'package:pdpui/package/pdpui.dart';
import 'package:pdpui/package/shop_home.dart';
class Register extends StatefulWidget {
  static final String id="register";
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, ShopHome.id);
          },
          child: Center(
            child: Text("Home"),
          ),
        ),
        actions: [

        ],

      ),
      body: Center(

        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black,
                Colors.black45,
                Colors.black12,
              ],
            ),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.end,
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
                                          hintText: "Fullname",
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
                                          hintText: "Phone",
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
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 40,),
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.black45),
                              child: Center(
                                child: Text("SignUp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              ),
                            ),
                            SizedBox(height: 30,),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacementNamed(context, PdpUi.id);

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
                                        color: Colors.red
                                    ),
                                    child: Center(
                                      child: Text("Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
                                      child: Text("apple",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
