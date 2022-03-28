import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({String? title, int? index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index!;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title!,
              style: GoogleFonts.openSansCondensed(
                fontSize: 20,
                fontWeight:
                    index == selectedIndex ? FontWeight.w700 : FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              width: 90,
              height: 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == selectedIndex
                      ? Colors.black
                      : Colors.transparent),
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  child: (Row(
                    children: [
                      Image.asset(
                        'assets/images/Component 1 - 1.png',
                        height: 100,
                        width: 50,
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      navItem(
                        title: 'HOME',
                        index: 0,
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      navItem(title: 'MENUS', index: 1),
                      SizedBox(
                        width: 100,
                      ),
                      navItem(title: 'LOCATIONS', index: 2),
                      SizedBox(
                        width: 100,
                      ),
                      navItem(title: 'CONTACT US', index: 3),
                    ],
                  )),
                ),
                //main welcome page

                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 50,
                    ),
                    child: Center(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Opacity(
                            opacity: 0.75,
                            child: Center(
                              child: Image.asset(
                                'assets/images/Group 75.png',
                                width: 250,
                                height: 350,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 125),
                            child: Center(
                              child: new Text(
                                  '"Siang makan nasi, kalau malam minum kopi"',
                                  style: GoogleFonts.goudyBookletter1911(
                                    fontSize: 45,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //bottom navigation

                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Center(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_downward_rounded,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
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


  

/* versi website buat import images ga perlu pake 'assets/' */