import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ShopHome extends StatefulWidget {
  static final  String id="shop_home";
  @override
  _ShopHomeState createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
  final List<String> _listItem=[
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        elevation: 0,//appbar ajralib turib soya berishi
        leading: Icon(Icons.menu),
        backgroundColor: Colors.orange,
        title: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, ShopHome.id);
          },
          child: Center(
            child: Text("Home"),
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),                              ),
            child: Center(child: Text(_listItem.length.toString()),),
            ),

          )



        ],

      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(

              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage("assets/images/1.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                    colors: [
                      Colors.black54,
                      Colors.black45,
                      Colors.black12,
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("LifeStyle",style: TextStyle(fontSize: 35,color: Colors.white),),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: CupertinoColors.white
                      ),
                      child: Center(
                        child: Text("Shop Now",style: TextStyle(color: Colors.grey[800],),),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
                child: GridView.count(
                  mainAxisSpacing: 10,//elementlar bir biridan boyiga joy tashab turad
                  crossAxisSpacing: 10,//elementlar bir biridan eniga joy tashab turad
                    crossAxisCount: 1,
                  children: _listItem.map((item) => cellofList(item)).toList(),
                )
            )
          ],
        ),
      ),

    );
  }
  Widget cellofList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover

          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,//boyiga

          children: [
            Icon(Icons.favorite,color: Colors.red,size: 35,)
          ],
        ),
      ),
    );
  }
}
