import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:airbnb/bottom_item.dart';
import 'package:airbnb/menu_option.dart';
import 'package:airbnb/recommend_card.dart';

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

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Material(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
            child: Row(
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
                      color: Colors.grey[400],
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
          ),
        ),
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: <Widget>[

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
                      MenuOption(
                        title: "Flights", 
                        iconData: SimpleLineIcons.plane, 
                        selected: true,
                      ),
                      SizedBox(width: 24,),
                      MenuOption(
                        title: "Hotels", 
                        iconData: MaterialCommunityIcons.room_service_outline, 
                        selected: false,
                      ),
                      SizedBox(width: 24,),
                      MenuOption(
                        title: "Holidays", 
                        iconData: Feather.sun, 
                        selected: false,
                      ),
                    ],
                  ),

                  SizedBox(height: 24,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MenuOption(
                        title: "Bus", 
                        iconData: FontAwesome.bus, 
                        selected: false,
                      ),
                      SizedBox(width: 24,),
                      MenuOption(
                        title: "Cabs", 
                        iconData: FontAwesome.cab, 
                        selected: false,
                      ),
                      SizedBox(width: 24,),
                      MenuOption(
                        title: "Trains", 
                        iconData: MaterialCommunityIcons.train, 
                        selected: true,
                      ),
                    ],
                  ),

                  SizedBox(height: 24,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MenuOption(
                        title: "Homes", 
                        iconData: AntDesign.home, 
                        selected: false,
                      ),
                      SizedBox(width: 24,),
                      MenuOption(
                        title: "Gift Cards", 
                        iconData: MaterialIcons.card_giftcard, 
                        selected: false,
                      ),
                      SizedBox(width: 24,),
                      MenuOption(
                        title: "More", 
                        iconData: MaterialIcons.more_horiz, 
                        selected: false
                      ),
                    ],
                  ),

                ],
              ),

              SizedBox(
                height: 24,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Recommend",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 16,
              ),

              Container(
                height: 130,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    RecommendCard(
                      imageUrl: 'assets/images/plane.jpg',
                      title: "IndiGo, Spicejet & AirAsia Sale is LIVE!",
                      offerEnds: "Offer ends in 01d 13h 22m",
                      startPrices: r"Fares Starting at $890 Only!",
                    ),
                    RecommendCard(
                      imageUrl: 'assets/images/train.jpg',
                      title: "Irish Rail & Translink discounts!",
                      offerEnds: "Offer ends in 03d 05h 44m",
                      startPrices: r"Fares Starting at $199 Only!",
                    ),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
      
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Container(
          width: double.infinity,
          height: 56,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              SizedBox(width: 8,),
              BottomItem(
                title: "Home", 
                iconData: Icons.home, 
                selected: true,
              ),
              SizedBox(width: 4,),
              BottomItem(
                title: "Wallet", 
                iconData: SimpleLineIcons.wallet, 
                selected: false,
              ),
              SizedBox(width: 4,),
              BottomItem(
                title: "Suitcase", 
                iconData: FontAwesome.suitcase, 
                selected: false,
              ),
              SizedBox(width: 4,),
              BottomItem(
                title: "Settings", 
                iconData: Feather.settings, 
                selected: false,
              ),
              SizedBox(width: 8,),

            ],
          ),
        ),
      )
    
    );
  }
}
