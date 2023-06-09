import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unit3c_3/Screen/CategoryPage.dart';
import 'package:unit3c_3/Screen/ChartPage.dart';
import 'package:unit3c_3/Screen/NotificationPage.dart';
import 'package:unit3c_3/Screen/ProfilePage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _rating = 1.0;
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    CategoryPage(),
    ChartPage(),
    NotivicationPage(),
    Profile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Recommendation> recommendations = [
    Recommendation(
      image: 'assets/java.png',
      title: 'Java Application',
      level: 'Level Beginner',
      registered: '13.252 Registered',
    ),
    Recommendation(
      image: 'assets/c.png',
      title: 'C Fundamental',
      level: 'Level Intermediate',
      registered: '9.876 Registered',
    ),
    Recommendation(
      image: 'assets/go.png',
      title: 'Golang Project',
      level: 'Level Advanced',
      registered: '7.543 Registered',
    ),
    Recommendation(
      image: 'assets/c.png',
      title: 'C Fundamental',
      level: 'Level Intermediate',
      registered: '9.876 Registered',
    ),
    Recommendation(
      image: 'assets/go.png',
      title: 'Golang Project',
      level: 'Level Advanced',
      registered: '7.543 Registered',
    ),
  ];

  List<CarouselItem> carouselItems = [
    CarouselItem(
      image: 'assets/icHtml.png',
      title: 'HTML ',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.asgfergesrfg',
      level: 'Level Beginner',
      registered: '13.252 Registered',
      price: 'Rp. 99.000',
      containerColor: const Color.fromARGB(255, 222, 174, 100),
    ),
    // Add more CarouselItem objects here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20, top: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hello,',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  'John Doe',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 223, 217, 217),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search For Product...",
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: CarouselSlider.builder(
                  itemCount: carouselItems.length,
                  itemBuilder: (context, index, _) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Homepage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 700,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: carouselItems[index].containerColor,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 117, 116, 116)
                                    .withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                carouselItems[index].image,
                                width: 172,
                                height: 202,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25, left: 3, right: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        carouselItems[index].title,
                                        style: GoogleFonts.quicksand(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 21,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Flexible(
                                        child: Text(
                                          carouselItems[index].description,
                                          style: GoogleFonts.quicksand(
                                            textStyle: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                            ),
                                          ),
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        '${carouselItems[index].level} . ${carouselItems[index].registered}',
                                        style: GoogleFonts.quicksand(
                                          textStyle: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          RatingBar.builder(
                                            initialRating: _rating,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 1,
                                            itemSize: 30,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 4.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Color.fromARGB(
                                                  255, 247, 203, 70),
                                            ),
                                            onRatingUpdate: (rating) {
                                              setState(() {
                                                _rating = rating;
                                              });
                                            },
                                          ),
                                          Text(
                                            '$_rating',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: const Color.fromARGB(
                                                  255, 248, 247, 247),
                                              fontWeight: FontWeight.w100,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              bottom: 10, right: 10),
                                          child: Text(
                                            carouselItems[index].price,
                                            style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 200,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Rekomend For You',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: recommendations.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                              recommendation: recommendations[index]),
                        ),
                      );
                    },
                    child: buildRecommendationItem(recommendations[index]),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Widget buildRecommendationItem(Recommendation recommendation) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, right: 13, bottom: 8.0, left: 13),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 117, 116, 116).withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(recommendation.image),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recommendation.title,
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    recommendation.level + '. ' + recommendation.registered,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: _rating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 1,
                        itemSize: 30,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          setState(() {
                            _rating = rating;
                          });
                        },
                      ),
                      Text(
                        '$_rating',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Recommendation {
  final String image;
  final String title;
  final String level;
  final String registered;

  Recommendation({
    required this.image,
    required this.title,
    required this.level,
    required this.registered,
  });
}

class DetailPage extends StatelessWidget {
  final Recommendation recommendation;

  const DetailPage({required this.recommendation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(recommendation.image),
            SizedBox(height: 20),
            Text(
              recommendation.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              recommendation.level,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              recommendation.registered,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselItem {
  final String image;
  final String title;
  final String description;
  final String level;
  final String registered;
  final String price;
  final Color containerColor;

  CarouselItem({
    required this.image,
    required this.title,
    required this.description,
    required this.level,
    required this.registered,
    required this.price,
    required this.containerColor,
  });
}
