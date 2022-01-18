import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'checkout_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: TabBar(
          indicatorColor: Colors.pink,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              child: Text(
                "Salads and Soup ",
                style: TextStyle(color: Colors.pink),
              ),
              // text: ("Status"),
            ),
            Tab(
              child: Text(
                "From the Barnyard",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Tab(
              child: Text(
                "From the",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 17),
            child: IconButton(
    icon: const Icon(Icons.shopping_cart,color:Colors.grey),
    color: Colors.white,
    onPressed: () {                   Navigator.of(context).pop();
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) =>  Checkout()));},
    ),

          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.grey,
                size: 33, //
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Muhammed Naseen",
                style: GoogleFonts.lato(color: Colors.black, fontSize: 17),
              ),
              accountEmail: Text(
                "ID : 410",
                style: GoogleFonts.lato(color: Colors.black, fontSize: 17),
              ),
              currentAccountPicture: GestureDetector(
                  child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/draw.jpg"))),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/green.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            ListTile(
              title: Text(
                "Log out",
                style: GoogleFonts.lato(color: Colors.grey, fontSize: 17),
              ),
              leading: Icon(Icons.logout),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15, left: 30),
                  child: Text(
                    "Spinach Salad\n"
                    "INR 7.95",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 35, left: 180),
                  child: Text(
                    "15 calories",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
                Container(
                  width: 380,
                  padding: EdgeInsets.only(top: 20, left: 300),
                  child: Image.asset("assets/images/salad.jpg"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 62, left: 30),
                  child: Text(
                    "Fresh spinach,mushrooms and hard-\n"
                    "boiled egg served with warm bacon\n"
                    "vinalgrette",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 250,
            height: 35,
            padding: EdgeInsets.only(top: 10,right: 150 ),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.green,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(Icons.minimize,size: 17,)),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      '0',
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 10),child: Icon(Icons.add,size: 17,)),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only( right: 130,top: 10),
            child: Text(
              'Customizations Available',
              style: GoogleFonts.lato(color: Colors.red,fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),






          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only( left: 30),
                  child: Text(
                    "Traditional New England Seafood\n"
                    "Chowder\n"
                    "INR 12.00"
                        ,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 35, left: 180),
                  child: Text(
                    "30 calories",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
                Container(
                  width: 380,
                  padding: EdgeInsets.only(top: 20, left: 300),
                  child: Image.asset("assets/images/soup.jpg"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 75, left: 30),
                  child: Text(
                    "with calms,scallops and shrmp",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 250,
            height: 35,
            padding: EdgeInsets.only(top: 10,right: 150 ),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.green,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(Icons.minimize,size: 17,)),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      '0',
                      style:
                      GoogleFonts.lato(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 10),child: Icon(Icons.add,size: 17,)),
                ],
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 10),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),









          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only( left: 30),
                  child: Text(
                    "Salad Bar Soup\n"

                        "INR 5.00"
                    ,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 35, left: 180),
                  child: Text(
                    "30 calories",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
                Container(
                  width: 380,
                  padding: EdgeInsets.only(top: 20, left: 300),
                  child: Image.asset("assets/images/bar.jpg"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 60, left: 30),
                  child: Text(
                    "Flour Mixed with fresh green leafy\n"
                    "vegetables",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 250,
            height: 35,
            padding: EdgeInsets.only(top: 5,right: 150 ),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.green,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(Icons.minimize,size: 17,)),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      '0',
                      style:
                      GoogleFonts.lato(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 10),child: Icon(Icons.add,size: 17,)),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),


          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only( left: 30),
                  child: Text(
                    "Chicken-Soup\n"

                        "INR 14.89"
                    ,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 35, left: 180),
                  child: Text(
                    "30 calories",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
                Container(
                  width: 380,
                  padding: EdgeInsets.only(top: 20, left: 300),
                  child: Image.asset("assets/images/chiken.jpg"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 55, left: 30),
                  child: Text(
                    "Fresh as home-made chicken soup"
                      ,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),



        ],
      ),
    );
  }
}
