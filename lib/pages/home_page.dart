import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:travel_app/utils.dart';

import 'search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: selectedIndex,
      child: Scaffold(
        backgroundColor: a,
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: a,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Hey ',
                      style: GoogleFonts.montserrat(
                        color: fontcolor,
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'FizFat ',
                      style: GoogleFonts.montserrat(
                        color: fontcolor,
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                "The Advatures",
                style: GoogleFonts.montserrat(
                  color: fontcolor,
                  fontSize: 14,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: CircleAvatar(
                backgroundColor: a,
                radius: 24,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IndexedStack(
              index: selectedIndex,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      isActive
                          ? "\"Yesterday, i believe i never would have done what i did today.\""
                          : "\"Life is either a daring adventure or nothing at all.\"",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: fontcolor,
                        fontSize: 24,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 320,
                          child: TabBar(
                            isScrollable: false,
                            labelStyle: GoogleFonts.montserrat(
                              color: fontcolor,
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                            ),
                            tabs: const [
                              Tab(
                                text: "Category",
                              ),
                              Tab(
                                text: "Top",
                              ),
                              Tab(
                                text: "Style",
                              ),
                            ],
                            labelColor: fontcolor,
                            indicator: DotIndicator(
                              color: fontcolor,
                              distanceFromCenter: 16,
                              radius: 3,
                              paintingStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isActive = !isActive;
                            });
                          },
                          icon: Icon(
                            CupertinoIcons.line_horizontal_3_decrease,
                            size: 24.0,
                            color: fontcolor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Flexible(
                      child: SizedBox(
                        height: double.infinity,
                        width: double.maxFinite,
                        child: TabBarView(
                          children: [
                            AnimationLimiter(
                              child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 12,
                                  crossAxisSpacing: 12,
                                ),
                                itemCount: images.length,
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return AnimationConfiguration.staggeredList(
                                    position: index,
                                    duration: const Duration(seconds: 2),
                                    child: SlideAnimation(
                                      verticalOffset: 50.0,
                                      child: FadeInAnimation(
                                        child: Expanded(
                                          child: Container(
                                            padding: const EdgeInsets.all(12),
                                            alignment: Alignment.bottomLeft,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  images[index],
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(
                                                  16.0,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              name[index],
                                              style: GoogleFonts.montserrat(
                                                color: a,
                                                fontSize: 20,
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            AnimationLimiter(
                              child: MasonryGridView.count(
                                crossAxisCount: 2,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                                itemCount: images2.length,
                                itemBuilder: (context, index) {
                                  return AnimationConfiguration.staggeredList(
                                    position: index,
                                    duration: const Duration(seconds: 2),
                                    child: SlideAnimation(
                                      child: FadeInAnimation(
                                        child: Column(
                                          children: [
                                            Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  child: Image.network(
                                                    images2[index],
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            AnimationLimiter(
                              child: MasonryGridView.count(
                                crossAxisCount: 2,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                                itemCount: images3.length,
                                itemBuilder: (context, index) {
                                  return AnimationConfiguration.staggeredList(
                                    position: index,
                                    duration: const Duration(seconds: 2),
                                    child: SlideAnimation(
                                      child: FadeInAnimation(
                                        child: Column(
                                          children: [
                                            Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  child: Image.network(
                                                    images3[index],
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SearchPage()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
