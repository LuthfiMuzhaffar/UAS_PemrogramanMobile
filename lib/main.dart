import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Luthfi',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'What do you want to cook today?',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 129, 129, 129),
                          ),
                        ),
                      ],
                    ),
                    AvatarFrame(
                      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKKOdmJz8Z2pDtYgFgR2u9spABvNNPKYYtGw&usqp=CAU',
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recipes Recommendation',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: AvatarFrame(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUXzQvo20IRS3pDdR_2jlcwRjRRaThx-E48w&usqp=CAU',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 0),
                      Text(
                        'Get your personalized recipe ',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 129, 129, 129),
                        ),
                      ),
                      Text(
                        'recommendation in 4 steps',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 129, 129, 129),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print('Get Recipe button pressed');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 50),
                              primary: Color.fromARGB(255, 255, 193, 60),
                            ),
                            child: Text('Get started'),
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              print('Skip button pressed');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 50),
                            ),
                            child: Text('Skip'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular recipes',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle the "See All" action here
                        print('See All Popular Recipe pressed');
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 219, 140, 20), 
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RecipeCard(
                        imageUrl: 'https://api-lotte.hollacode.com/api/static/inspirasi/1660657926382-cara-memasak-spaghetti-bolognese-yang-benar-dijamin-lezat.jpg',
                        dishName: 'Spaghetti Bolognese',
                        time: '30-45 Minutes',
                        difficulty: 'Medium',
                        chefName: 'Mariam belina',
                      ),
                      SizedBox(width: 20),
                      RecipeCard(
                        imageUrl: 'https://www.foodandwine.com/thmb/DKCB4vmC9xCs2Zkj8july78FYnk=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/garlic-butter-prime-rib-FT-RECIPE0621-fca73e5fa8e046b0b03982757db51628.jpg',
                        dishName: 'Classic Beef Steak',
                        time: '45-60 Minutes',
                        difficulty: 'Easy',
                        chefName: 'James Nikidaw',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Actor',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle the "See All" action here
                        print('See All Popular Actor pressed');
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 219, 140, 20), 
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AvatarRecipeCard(
                        imageUrl: 'https://cdn.techjuice.pk/wp-content/uploads/2015/02/wallpaper-for-facebook-profile-photo-1130x712.jpg',
                        chefName: 'James Nikidaw',
                        time: '124',
                        difficulty: '41391',
                        dishName: 'James Nikidaw',
                      ),
                      SizedBox(width: 10),
                      AvatarRecipeCard(
                        imageUrl: 'https://khalil-shreateh.com/khalil.shtml/images/FB_PROFILE.jpg',
                        chefName: 'Mariam belina',
                        time: '98',
                        difficulty: '7323',
                        dishName: 'Mariam belina',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 14, 14, 14),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
  icon: Padding(
    padding: EdgeInsets.only(top: 8.0), 
    child: Container(
      width: 50,
      height: 18,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(189, 169, 130,0), 
            blurRadius: 0,
            spreadRadius: 18,
          ),
        ],
      ),
      child: Icon(Icons.home, color: Colors.black),
    ),
  ),
  label: 'Home',
),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Item 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Item 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Item 3',
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String imageUrl;
  final String dishName;
  final String time;
  final String difficulty;
  final String chefName;

  RecipeCard({
    required this.imageUrl,
    required this.dishName,
    required this.time,
    required this.difficulty,
    required this.chefName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.network(
              imageUrl,
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dishName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 129, 121, 121),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 14,
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 4),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 14,
                  color: Colors.black,
                ),
                SizedBox(width: 4),
                Text(
                  difficulty,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: 14,
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 4),
                Text(
                  chefName,
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 129, 129, 129),
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

class AvatarRecipeCard extends StatelessWidget {
  final String dishName;
  final String time; 
  final String difficulty; 
  final String imageUrl; 
final String chefName;
  AvatarRecipeCard({
    required this.dishName,
    required this.time,
    required this.difficulty,
    required this.imageUrl,
    required this.chefName
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: const Color.fromARGB(255, 218, 218, 218), 
            ),
            child: Center(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  imageUrl, 
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dishName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.book, 
                  size: 14,
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 6),
                Text(
                  time, 
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.favorite, 
                  size: 14,
                  color: Colors.black,
                ),
                SizedBox(width: 4),
                Text(
                  difficulty,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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

class AvatarFrame extends StatelessWidget {
  final String imageUrl;

  AvatarFrame({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}