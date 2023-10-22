import 'package:flutter/material.dart';
import 'package:food/screens/detail.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<String> images = [
    "assets/burger.jpg",
    "assets/chicken_g.jpg",
    "assets/chiken_f.jpeg",
    "assets/pizza.jpg",
    "assets/spaghetti.jpg",
  ];

  final foodnames = [
    "burger",
    "alfoorna chicken",
    "geriile chicken",
    "pasto",
    "Pizza"
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.fastfood,
              ),
              label: 'Cunto'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions,
              ),
              label: 'subscriptions'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'settings'),
        ],
        iconSize: 30,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // container for header
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Looking for your favorite meal",
                          style: GoogleFonts.playfairDisplay(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.grey[800],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),

                //container noocyada cuntada
                Container(
                  height: size.height * 0.25,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return AspectRatio(
                          aspectRatio: 0.9 / 1,

                          // screen widht
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  child: ClipRRect(
                                    child: Image.asset(
                                      images[index],
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                              //
                              SizedBox(
                                height: 8,
                              ),

                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Text(
                                  "${foodnames[index]} Recipes",
                                  style: GoogleFonts.roboto(
                                    color: Colors.grey[800],
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                            width: 16,
                          ),
                      itemCount: 4),
                ),
                // vertical spacing

                SizedBox(
                  height: 32,
                ),

                //list tiga cuntada

                Container(
                  height: size.height * 0.4,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  // images[4 - index],
                                  image: [
                                    4 - index,
                                  ],
                                ),
                              ),
                            );
                          },
                          child: AspectRatio(
                            aspectRatio: 0.9 * 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Hero(
                                    tag: images[4 - index],
                                    child: Container(
                                      child: ClipRRect(
                                        child: Image.asset(
                                          images[4 - index],
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Text(
                                    "${foodnames[4 - index]}",
                                    style: GoogleFonts.roboto(
                                      color: Colors.grey[800],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Text(
                                    "Recipe by Abdirahman sayidali",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[800], fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, _) => SizedBox(
                            width: 16,
                          ),
                      itemCount: 4),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
