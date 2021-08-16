import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/items/drawer_items.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../../const.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 0.0,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 8,
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: ListTile(
                    title: Align(
                      alignment: Alignment(-1, -.9),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height / 13,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "HI GUEST",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text("Egypt"),
                          ],
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.settings,
                      size: 27,
                      color: Colors.black,
                    ),
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                    )),
              ),
            ),
            Container(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.all(10.0),
                itemCount: listViewData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                        child: _currentSelected == index
                            ? Row(
                                children: [
                                  Container(
                                    width: 9,
                                    height: 50,
                                    decoration: drawerSelectedItem,
                                  ),
                                  listViewData[index]
                                ],
                              )
                            : listViewData[index]),
                    onTap: () {
                      setState(() {
                        _currentSelected = index;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.search,
              color: Colors.black.withOpacity(0.6),
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Delivering to",
              style:
                  TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.6)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "El-GALLA Street",
                  style: TextStyle(fontSize: 16, color: Color(0xFF601BC8)),
                ),
                Icon(
                  Icons.arrow_downward,
                  color: Color(0xFF601BC8),
                )
              ],
            )
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20.0,left: 20),
        children: [
          Text(
            "What would you like to order, Ahmed?",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          "assets/images/1.png",
                          height: 150,
                          width: 160,
                        )),
                    Text(
                      "Food",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                       Image.asset(
                          "assets/images/2.png",
                          height: 150,
                          width: 160,
                        ),
                    Text("Grocries", style: TextStyle(fontSize: 20))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/images/3.png",
                          height: 150,
                          width: 160,
                        )),
                    Text("Sweet", style: TextStyle(fontSize: 20))
                  ],
                ),



              ],
            ),
          ),
          SizedBox(
              height:MediaQuery.of(context).size.height/10,
              child: Carousel(
                dotPosition: DotPosition.bottomCenter,
               autoplay: false,
                dotBgColor: Colors.transparent,

                images: [
                  AssetImage("assets/images/4.png"),
                  AssetImage("assets/images/4.png"),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(top:26 ),
            child: Text(
              "Popular brands near you",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 143,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(right: 20,top: 20),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                         Image.asset(
                          "assets/images/5.PNG",
                          height: 100,
                          width: 100,
                        ),
                    Text(
                      "Gad",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/6.PNG",
                      height: 100,
                      width: 100,
                    ),
                    Text("Heart Attack", style: TextStyle(fontSize: 16))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/images/7.PNG",
                          height: 100,
                          width: 100,
                        )),
                    Text("Pizza Hut", style: TextStyle(fontSize: 16))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/images/8.png",
                          height: 100,
                          width: 100,
                        )),
                    Text("Buffalo Burger", style: TextStyle(fontSize: 16))
                  ],
                ),



              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:26 ),
            child: Text(
              "Groceries",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 428,
            child: ListView(
              scrollDirection: Axis.horizontal,

              padding: EdgeInsets.only(right: 20,top: 16),
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/9.png",width: 336,height: 156,),
                    // Container(
                    //   height: 80,
                    //   child: ListTile(
                    //     leading: Column(children: [
                    //       Text("2GO Supermarket")
                    //     ],),
                    //
                    //   ),
                    // )

                  ],
                ),

              ],
            ),
          )



        ],
      ),
    );
  }
}
