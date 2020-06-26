import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
        child: Column(
          children: <Widget>[

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Icon(
                  Icons.menu,
                  color: Color(0xFFFF5A5F),
                ),

                SizedBox(
                  height: 70,
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),

                Stack(
                  children: <Widget>[
                    Icon(
                      Icons.notifications_none,
                      color: Colors.grey[300],
                    ),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: Icon(
                        Icons.brightness_1, 
                        size: 8.0, 
                        color: Color(0xFFFF5A5F),
                      ),
                    ),
                  ]
                ),

              ],
            ),

            SizedBox(
              height: 8,
            ),

            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    width: 0, 
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Colors.grey[150],
                contentPadding: EdgeInsets.all(20),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                    size: 28,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Text(
        "bottomNavigationBar",
      ),
    );
  }
}
