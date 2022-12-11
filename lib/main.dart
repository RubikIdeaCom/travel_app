import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model/travel_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Test',
        debugShowCheckedModeBanner: false, // remove the debug banner
        home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 2;
  final double _imageSize = 55;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: size.height / 1.8,
              child: Stack(children: [
                // bg image
                Container(
                  width: double.infinity,
                  height: size.height / 2.1,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60)),
                      image: DecorationImage(
                          image: AssetImage(travelList[_selectedIndex].image),
                          fit: BoxFit.cover)),
                ),

                // Header icons
                Positioned(
                  right: 0,
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(101, 255, 255, 255)),
                          child: const Icon(CupertinoIcons.back),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(101, 255, 255, 255)),
                          child: const Icon(CupertinoIcons.heart),
                        ),
                      ],
                    ),
                  ),
                ),
                // Images list
                Positioned(
                  right: 0,
                  top: 100,
                  child: SizedBox(
                    width: 90,
                    height: double.maxFinite,
                    child: ListView.builder(
                        itemCount: travelList.length,
                        itemBuilder: (context, index) {
                          // Make corner-rounded thumbnails
                          return imageItem(index);
                        }),
                  ),
                ),
                // Name & Location
                Positioned(
                  bottom: 80,
                  left: size.width / 9,
                  child: Column(
                    // Make name & location left-sort (start)
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        travelList[_selectedIndex].name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.placemark_fill,
                            color: Colors.white,
                          ),
                          Text(
                            travelList[_selectedIndex].location,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
            // Description of the place area
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                color: Color.fromARGB(40, 0, 0, 0),
                                width: 1,
                              )),
                          child: SizedBox(
                            width: 85,
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Distance"),
                                Text(travelList[_selectedIndex].distance)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                color: Color.fromARGB(40, 0, 0, 0),
                                width: 1,
                              )),
                          child: SizedBox(
                            width: 85,
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Temp"),
                                Text(
                                    "${travelList[_selectedIndex].temp}\u00B0c")
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                color: Color.fromARGB(40, 0, 0, 0),
                                width: 1,
                              )),
                          child: SizedBox(
                            width: 85,
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Rating"),
                                Text(travelList[_selectedIndex].rating)
                              ],
                            ),
                          ),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // DO NOT use this:
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Description",
                        ),
                        ExpandableText(
                          travelList[_selectedIndex].description,
                          expandText: 'Read More',
                          collapseText: 'Show Less',
                          maxLines: 2,
                          linkColor: Colors.blue,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text("Total Pice"),
                                Text(
                                  "${travelList[_selectedIndex].price}\$",
                                  style: const TextStyle(
                                      fontFamily: "Arial",
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              child: const Icon(
                                CupertinoIcons.arrow_right,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

// Extract Column widget as a Widget (VSCode extracts as a Column, we made it Widget)
  Widget imageItem(int index) {
    return Column(
      // Put the ClipRRect in a column to prevent expanded thumbnails
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: (_selectedIndex == index)
                          ? const Color.fromARGB(255, 218, 178, 61)
                          : Colors.white,
                      width: 3),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(travelList[index].image))),
              width: (_selectedIndex == index) ? _imageSize + 15 : _imageSize,
              height: (_selectedIndex == index) ? _imageSize + 15 : _imageSize,
              duration: const Duration(milliseconds: 500),
            ),
          ),
        ),
      ],
    );
  }
}
