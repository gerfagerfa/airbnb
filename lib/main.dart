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
                fillColor: Colors.grey[200],
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

            SizedBox(
              height: 24,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    menuOption("Flights", SimpleLineIcons.plane, true),
                    SizedBox(width: 24,),
                    menuOption("Hotels", MaterialCommunityIcons.room_service_outline, false),
                    SizedBox(width: 24,),
                    menuOption("Holidays", Feather.sun, false),
                  ],
                ),

                SizedBox(height: 24,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    menuOption("Bus", FontAwesome.bus, false),
                    SizedBox(width: 24,),
                    menuOption("Cabs", FontAwesome.cab, false),
                    SizedBox(width: 24,),
                    menuOption("Trains", MaterialCommunityIcons.train, false),
                  ],
                ),

                SizedBox(height: 24,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    menuOption("Homes", AntDesign.home, false),
                    SizedBox(width: 24,),
                    menuOption("Gift Cards", MaterialIcons.card_giftcard, false),
                    SizedBox(width: 24,),
                    menuOption("More", MaterialIcons.more_horiz, false),
                  ],
                )

              ],
            )

          ],
        ),
      ),
      bottomNavigationBar: Text(
        "bottomNavigationBar",
      ),
    );
  }

  Widget menuOption(String title, IconData iconData, bool selected){
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            color: selected ? Color(0xFFFF5A5F) : Colors.grey[200],
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: selected ? Color(0xFFFF5A5F).withOpacity(0.2) : Colors.transparent,
                spreadRadius: 4,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                iconData,
                size: 32,
                color: selected ? Colors.white : Colors.grey[500],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: TextStyle(
                  color: selected ? Colors.white : Colors.grey[500],
                  fontSize: 18,
                )
              )
            ],
          )
        ),
      ),
    );
  }
}
