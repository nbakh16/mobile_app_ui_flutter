import 'package:flutter/material.dart';
import '../data/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(viewportFraction: 0.65);
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        pageOffset = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 400,
          padding: const EdgeInsets.only(bottom: 30),
          child: PageView.builder(
            controller: pageController,
            // itemCount: images.length,
            pageSnapping: true,
            padEnds: pageOffset == 0 ? false : true,
            itemBuilder: (context, index) {
              Map image = images[index % images.length];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                          width: 2,
                          color: Colors.grey.shade200,
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(22),
                        child: Image.asset(
                          image['image'],
                          height: 370,
                          fit: BoxFit.cover,
                          alignment: Alignment(-pageOffset.abs() + index, 0),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 20,
                      right: 10,
                      child: Text(
                        image['name'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontStyle: FontStyle.normal,
                          shadows: [
                            Shadow(
                                // bottomLeft
                                offset: Offset(-1.5, -1.5),
                                color: Colors.black),
                            Shadow(
                                // bottomRight
                                offset: Offset(1.5, -1.5),
                                color: Colors.black),
                            Shadow(
                                // topRight
                                offset: Offset(1.5, 1.5),
                                color: Colors.black),
                            Shadow(
                                // topLeft
                                offset: Offset(-1.5, 1.5),
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
