import 'package:flutter/material.dart';

import '../model/Data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(viewportFraction: 0.7);
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    // pageController = PageController(viewportFraction: 0.7);
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
      body: GestureDetector(
        onHorizontalDragUpdate: (details) {
          details.delta.dx;
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.teal.shade400,
          child: Center(
            child: Container(
              height: 400,
              padding: const EdgeInsets.only(bottom: 30),
              child: PageView.builder(
                itemCount: images.length,
                controller: pageController,
                itemBuilder: (context, index) {
                  var image = images[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset(
                            image['image'],
                            height: 370,
                            fit: BoxFit.cover,
                            alignment: Alignment(-pageOffset.abs() + index, 0),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 20,
                          right: 10,
                          child: Text(
                            'Image ${index + 1}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontStyle: FontStyle.normal,
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
        ),
      ),
    );
  }
}
