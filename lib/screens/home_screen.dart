import 'package:flutter/material.dart';
import 'package:travel_app/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            backgroundColor: primaryColor,
            expandedHeight: size.height / 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            title: Row(
              children: [
                const Spacer(),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image.asset(
                    'assets/images/appbar-background.png',
                    width: size.width / 2.5,
                  ),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: AppBar().preferredSize.height,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Welcome,',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: '\nCharlie',
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: accentColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextField(
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(19),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(19),
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
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
        ],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Saved Place',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.count(
                  primary: false,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 3 / 2,
                  physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(0),
                  children: [
                    Image.asset('assets/images/place-japan.png'),
                    Image.asset('assets/images/place-barcelona.png'),
                    Image.asset('assets/images/place-greece.png'),
                    Image.asset('assets/images/place-rome.png'),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Travel Buddies',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 243,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 215,
                            width: 161,
                            decoration: BoxDecoration(
                              color: Color(0xFF00664F),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(11),
                                bottomLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11),
                                topRight: Radius.circular(111),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 19,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Name',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Alex',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Age',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '28',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Status',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Friend',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: -50,
                            bottom: 0,
                            child: Image.asset(
                              'assets/images/person1.png',
                              width: 140,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 215,
                            width: 161,
                            decoration: BoxDecoration(
                              color: Color(0xFF9BA1FF),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(11),
                                bottomLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11),
                                topRight: Radius.circular(111),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 19,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Name',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Jack',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Age',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '27',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Status',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Friend',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: -50,
                            bottom: 0,
                            child: Image.asset(
                              'assets/images/person2.png',
                              width: 140,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
