import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
  bool _buttonTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.battery_0_bar,
                          size: 35,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.animateToPage(
                          pageChanged = 0,
                          duration: const Duration(milliseconds: 0),
                          curve: Curves.bounceInOut,
                        );
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            pageChanged > 0 ? Colors.green : Colors.grey,
                        child: const Icon(
                          Icons.storage_outlined,
                          size: 35,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            pageChanged > 1 ? Colors.green : Colors.grey,
                        child: const Icon(
                          Icons.mail,
                          size: 35,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            pageChanged > 2 ? Colors.green : Colors.grey,
                        child: const Icon(
                          Icons.run_circle_rounded,
                          size: 60,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            pageChanged > 3 ? Colors.green : Colors.grey,
                        child: const Icon(
                          Icons.curtains_rounded,
                          size: 35,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            pageChanged > 4 ? Colors.green : Colors.grey,
                        child: const Icon(
                          Icons.center_focus_strong_sharp,
                          size: 35,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            pageChanged > 5 ? Colors.green : Colors.grey,
                        child: const Icon(
                          Icons.book_online_outlined,
                          size: 35,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            pageChanged > 6 ? Colors.green : Colors.grey,
                        child: const Icon(
                          Icons.bookmark_added_sharp,
                          size: 35,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            pageChanged > 7 ? Colors.green : Colors.grey,
                        child: const Icon(
                          Icons.person,
                          size: 35,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            pageChanged > 8 ? Colors.green : Colors.grey,
                        child: const Icon(
                          Icons.location_city,
                          size: 35,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            pageChanged > 9 ? Colors.green : Colors.grey,
                        child: const Icon(
                          Icons.room_preferences_outlined,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("START OF THE DAY"),
                      IconButton(
                        onPressed: () {
                          pageController.animateToPage(
                            pageChanged--,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.bounceInOut,
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_circle_left,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          pageController.animateToPage(
                            pageChanged++,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.bounceInOut,
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_circle_right,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 700,
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: pageController,
                      onPageChanged: (index) {
                        setState(() {
                          pageChanged = index;
                        });
                      },
                      children: [
                        Container(
                          height: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "This is\nFirst Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "This is\nSecond Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "This is\nThird Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "This is\nFourth Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "This is\nFifth Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "This is\nSixth Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "This is\nSeventh Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "This is\nEight Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "This is\nNineth Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "This is\nTenth Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "This is\nEleventh Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
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