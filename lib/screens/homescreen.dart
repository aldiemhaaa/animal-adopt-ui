import 'package:animal_adopt/constants.dart';
import 'package:animal_adopt/models/animal.dart';
import 'package:animal_adopt/screens/detailscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // maintainBottomViewPadding: true,
      // right: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: double.infinity,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.search), onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.bookmark), onPressed: () {}),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Location',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          letterSpacing: -0.8),
                    ),
                  ),
                  Text(
                    'Dnipro, UA',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        letterSpacing: -0.8),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(Icons.menu),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    // width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList.length,
                      itemBuilder: (BuildContext context, int index) {
                        // print(categoryList[index]);
                        // print(index);
                        // return Text('Hello');
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = index;
                            });
                          },
                          child: Container(
                            height: 60,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: selectedCategory == index
                                    ? kSecondaryColo
                                    : Color(0xfff1f3f4)),
                            width: 60,
                            child: Center(
                              child: Image.asset(
                                categoryList[index],
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    // height: 300,
                    constraints: BoxConstraints(
                      minHeight: 100,
                      minWidth: 100,
                      maxHeight: 500,
                      maxWidth: 1000,
                    ),
                    // color: Colors.blueAccent,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: animalList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 240,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: kPrimaryColor),
                              width: 240,
                              child: Center(
                                child: Hero(
                                  tag: animalList[index].pathImage,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailScreen(
                                                  animal: animalList[index],
                                                )),
                                      );
                                    },
                                    child: Image.asset(
                                      animalList[index].pathImage,
                                      width: 160,
                                      height: 160,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              // color: Colors.red,
                              width: 240,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                        animalList[index].nickname,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      )),
                                  Icon(Icons.linked_camera)
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  animalList[index].typeAnimal,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: -0.7,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                padding: EdgeInsets.all(10),
                                width: 240,
                                // color: Colors.red,
                                decoration: BoxDecoration(
                                    color: Color(0xfff1f3f4),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 60,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text("Colour",
                                            style: TextStyle(
                                                color: kSecondaryColo,
                                                fontSize: 18,
                                                letterSpacing: -0.6)),
                                        Text(animalList[index].color,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                                letterSpacing: -0.6)),
                                      ],
                                    ),
                                    Container(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                    Column(
                                      children: [
                                        Text("Sex",
                                            style: TextStyle(
                                                color: kSecondaryColo,
                                                fontSize: 18,
                                                letterSpacing: -0.6)),
                                        Text(animalList[index].sex,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                                letterSpacing: -0.6)),
                                      ],
                                    ),
                                    Container(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                    Column(
                                      children: [
                                        Text("Age",
                                            style: TextStyle(
                                                color: kSecondaryColo,
                                                fontSize: 18,
                                                letterSpacing: -0.6)),
                                        Text(animalList[index].age.toString(),
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                                letterSpacing: -0.6)),
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
