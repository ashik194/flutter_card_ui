import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xFF353f93),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
              boxShadow: [new BoxShadow(
                color: Color(0xFF363f93).withOpacity(0.3),
                offset: new Offset(-10.0, 10.0),
                blurRadius: 20.0,
                spreadRadius: 4.0,
              )]
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                    left: 0,
                    child: Container(
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                ),
                Positioned(
                    top: 50,
                    left: 20,
                    child: Text("Your Title", style: TextStyle(fontSize: 30, color: Color(0xFf363f93), fontWeight: FontWeight.bold),)
                )
              ],
            ),
          ),
          SizedBox(height: height*0.1,),
          Container(
            height: 200,
            child: Stack(
              children: [
                Positioned(
                  // top: 35,
                  // left: 20,
                  child: Material(
                    child: Container(
                      height: 180,
                      width: width*0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0.0),
                          boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          offset: new Offset(-10.0, 10.0),
                          blurRadius: 20.0,
                          spreadRadius: 4.0
                        )]
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                    child: Card(
                      elevation: 10.0,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 170,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("asset/images/felix.jpg"),
                          )
                        ),
                      ),
                    ),
                ),
                Positioned(
                    top: 35,
                    left: 170,
                    child: Container(

                      height: 170,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Starting Text", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF363f93)),),
                          Text("John Smith", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),),
                          Divider(color: Colors.black,),
                          Text("It's longer than life", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
                        ],
                      ),
                    )
                )
              ],
            ),
          ),
          Expanded(
            child: MediaQuery.removePadding(context: context,
                removeTop: true,
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      height: 150,
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF363f93),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(80.0),
                            ),
                            boxShadow: [new BoxShadow(
                              color: Color(0xFF363f93).withOpacity(0.3),
                              offset: new Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            )]
                        ),
                        padding: const EdgeInsets.only(left: 22, top: 35, bottom: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("THE BEST", style: TextStyle(color: Colors.white, fontSize: 12),),
                            SizedBox(height: 2,),
                            Text("Now select your Choice", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      height: 150,
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF363f93),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(80.0),
                            ),
                            boxShadow: [new BoxShadow(
                              color: Color(0xFF363f93).withOpacity(0.3),
                              offset: new Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            )]
                        ),
                        padding: const EdgeInsets.only(left: 22, top: 35, bottom: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("THE BEST", style: TextStyle(color: Colors.white, fontSize: 12),),
                            SizedBox(height: 2,),
                            Text("Now select your Choice", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            )

          )
        ],
      ),
    );
  }
}

