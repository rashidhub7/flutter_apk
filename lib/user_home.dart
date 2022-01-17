import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Flutter()));

class Flutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.shopping_cart, color: Colors.grey),
          ),
        ],
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
