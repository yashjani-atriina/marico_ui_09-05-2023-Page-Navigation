import 'package:flutter/material.dart';
import 'package:pagenavigation/page_content.dart';

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
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
                      onTap: () {
                        pageController.animateToPage(
                          pageChanged = 0,
                          duration: const Duration(milliseconds: 10),
                          curve: Curves.bounceInOut,
                        );
                      },
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
                        isTapped = true;
                        print(isTapped);
                        if (pageChanged > 1) {
                          pageController.animateToPage(
                            pageChanged = 1,
                            duration: const Duration(milliseconds: 10),
                            curve: Curves.bounceInOut,
                          );
                        }
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
                      onTap: () {
                        if (pageChanged > 2) {
                          pageController.animateToPage(
                            pageChanged = 2,
                            duration: const Duration(milliseconds: 10),
                            curve: Curves.bounceInOut,
                          );
                        }
                        // pageController.animateToPage(
                        //   pageChanged = 2,
                        //   duration: const Duration(milliseconds: 10),
                        //   curve: Curves.bounceInOut,
                        // );
                      },
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
                      onTap: () {
                        if (pageChanged > 3) {
                          pageController.animateToPage(
                            pageChanged = 3,
                            duration: const Duration(milliseconds: 10),
                            curve: Curves.bounceInOut,
                          );
                        }
                        // pageController.animateToPage(
                        //   pageChanged = 3,
                        //   duration: const Duration(milliseconds: 10),
                        //   curve: Curves.bounceInOut,
                        // );
                      },
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
                      onTap: () {
                        if (pageChanged > 4) {
                          pageController.animateToPage(
                            pageChanged = 4,
                            duration: const Duration(milliseconds: 10),
                            curve: Curves.bounceInOut,
                          );
                        }
                      },
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
                      onTap: () {
                        if (pageChanged > 5) {
                          pageController.animateToPage(
                            pageChanged = 5,
                            duration: const Duration(milliseconds: 10),
                            curve: Curves.bounceInOut,
                          );
                        }
                      },
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
                      onTap: () {
                        if (pageChanged > 6) {
                          pageController.animateToPage(
                            pageChanged = 6,
                            duration: const Duration(milliseconds: 10),
                            curve: Curves.bounceInOut,
                          );
                        }
                      },
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
                      onTap: () {
                        if (pageChanged > 7) {
                          pageController.animateToPage(
                            pageChanged = 7,
                            duration: const Duration(milliseconds: 10),
                            curve: Curves.bounceInOut,
                          );
                        }
                      },
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
                      onTap: () {
                        if (pageChanged > 8) {
                          pageController.animateToPage(
                            pageChanged = 8,
                            duration: const Duration(milliseconds: 10),
                            curve: Curves.bounceInOut,
                          );
                        }
                      },
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
                      onTap: () {
                        if (pageChanged > 9) {
                          pageController.animateToPage(
                            pageChanged = 9,
                            duration: const Duration(milliseconds: 10),
                            curve: Curves.bounceInOut,
                          );
                        }
                      },
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
                      onTap: () {
                        if (pageChanged > 10) {
                          pageController.animateToPage(
                            pageChanged = 10,
                            duration: const Duration(milliseconds: 10),
                            curve: Curves.bounceInOut,
                          );
                        }
                      },
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
                    height: screenHeight * 0.8,
                    width: screenWidth * 0.8,
                    child: PageView(
                      // physics: const NeverScrollableScrollPhysics(),
                      controller: pageController,
                      onPageChanged: (index) {
                        setState(() {
                          pageChanged = index;
                        });
                      },
                      children: [
                        const pageContent(
                          text: "This is\nFirst Page",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        const pageContent(
                          text: "This is\nSecond Page",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        const pageContent(
                          text: "This is\nThird Page",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        const pageContent(
                          text: "This is\nFourth Page",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        const pageContent(
                          text: "This is\nFifth Page",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        const pageContent(
                          text: "This is\nSixth Page",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        const pageContent(
                          text: "This is\nSeventh Page",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        const pageContent(
                          text: "This is\nEight Page",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        const pageContent(
                          text: "This is\nNinth Page",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        const pageContent(
                          text: "This is\nTenth Page",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                pageController.animateToPage(
                                  pageChanged = 0,
                                  duration: const Duration(milliseconds: 10),
                                  curve: Curves.bounceInOut,
                                );
                              },
                              child: const Text("Click Here"),
                            ),
                            const Text(
                              "This is\nEleventh Page",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
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
  // widget function
  // Center(
  //                         child: Text(
  //                           "This is\nFirst Page",
  //                           style: TextStyle(
  //                               fontSize: 30, fontWeight: FontWeight.bold),
  //                         ),
  //                       ),
  // Widget pageText() {
  //   return
  // }
}

// class pageContent extends StatelessWidget {
//   const pageContent({
//     Key? key,
//     required this.text,
//     this.fontSize = 30,
//     this.fontWeight = FontWeight.bold,
//   }) : super(key: key);

//   final String text;
//   final double fontSize;
//   final FontWeight fontWeight;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         text,
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: fontSize,
//           fontWeight: fontWeight,
//         ),
//       ),
//     );
//   }
// }

// GestureDetector(
//                       onTap: () {},
//                       child: const CircleAvatar(
//                         radius: 30,
//                         backgroundColor: Colors.green,
//                         child: Icon(
//                           Icons.battery_0_bar,
//                           size: 35,
//                         ),
//                       ),
//                     ),

// class navigationIcon extends StatelessWidget {
//   const navigationIcon({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
