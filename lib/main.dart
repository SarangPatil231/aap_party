
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


void main() => runApp(const HomePage(title: '',));

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: slider(),
    );
  }
}

class slider extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(fixedSize: const Size(185, 50),
    );
    return Scaffold(
      appBar: AppBar(title: Text("AAM AAMDI PARTY")),
      body: ListView(

        children: [

          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Aam_Aadmi_Party_Flag.svg/2560px-Aam_Aadmi_Party_Flag.svg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Aam_Aadmi_Party_Flag.svg/2560px-Aam_Aadmi_Party_Flag.svg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Aam_Aadmi_Party_Flag.svg/2560px-Aam_Aadmi_Party_Flag.svg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Aam_Aadmi_Party_Flag.svg/2560px-Aam_Aadmi_Party_Flag.svg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Aam_Aadmi_Party_Flag.svg/2560px-Aam_Aadmi_Party_Flag.svg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            ],
            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('News'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('Event'),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('Gallery'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text('Complaints'),
                  ),
                ),
              ],
            ),
          )
        ],

      ),

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: NetworkImage('https://m.media-amazon.com/images/I/51v-vI2cR4S.jpg'),
                      fit: BoxFit.cover)
              ),
              child: Text(''),
            ),

            ListTile(
              title: const Text('Home'),

              onTap: () {
                // Update the state of the app

                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('News'),

              onTap: () {
                // Update the state of the app

                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Event'),

              onTap: () {
                // Update the state of the app

                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Gallery'),

              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Profile'),

              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Complaints'),

              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Notification'),

              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),

              onTap: () {

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}