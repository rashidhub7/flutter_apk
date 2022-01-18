import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp( MyApp(

));

/// This is the main application widget.
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
            child: Icon(Icons.shopping_cart, color: Colors.grey),
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

    );
  }
}



//
// accountName: Text(
// "Muhammed Naseen",
// style: GoogleFonts.lato(color: Colors.black, fontSize: 17),
// ),
// accountEmail: Text(
// "ID : 410",
// style: GoogleFonts.lato(color: Colors.black, fontSize: 17),
// ),
// currentAccountPicture: GestureDetector(
// child: const CircleAvatar(
// backgroundImage: AssetImage("assets/images/draw.jpg"))),
// decoration: const BoxDecoration(
// image: DecorationImage(
// image: AssetImage(
// "assets/images/green.jpg",
// ),
// fit: BoxFit.cover),