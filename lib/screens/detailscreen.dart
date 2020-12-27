import 'package:animal_adopt/constants.dart';
import 'package:animal_adopt/models/animal.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Animal animal;

  const DetailScreen({Key key, this.animal}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 60,
          // color: Colors.red,
          decoration: BoxDecoration(
              color: kSecondaryColo, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              'Adopt',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body:
            //  SliverAppBar(
            //   title: Text("SliverAppBar Title"),
            //   expandedHeight: 220.0,
            //   flexibleSpace: FlexibleSpaceBar(
            //       centerTitle: true,
            //       title: Text('Title',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 16.0,
            //           )),
            //       background: Hero(
            //           tag: widget.animal,
            //           child: Image.asset(widget.animal.pathImage))),
            // ),
            SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(color: kPrimaryColor),
                        child: Hero(
                            tag: widget.animal.pathImage,
                            child: Image.asset(widget.animal.pathImage))),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 22,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // margin: EdgeInsets.symmetric(horizontal: 10),
                        // color: Colors.red,
                        // width: 240,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                // margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                              widget.animal.nickname,
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
                          // margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                        widget.animal.typeAnimal,
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
                          // margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(10),
                          // width: 240,
                          // color: Colors.red,
                          decoration: BoxDecoration(
                              color: Color(0xfff1f3f4),
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text("Colour",
                                      style: TextStyle(
                                          color: kSecondaryColo,
                                          fontSize: 18,
                                          letterSpacing: -0.6)),
                                  Text(widget.animal.color,
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
                                  Text(widget.animal.sex,
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
                                  Text(widget.animal.age.toString(),
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          letterSpacing: -0.6)),
                                ],
                              )
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(widget.animal.desc),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Location",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.map),
                          // Spacer(),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Jl. Cigondewah Rahayu Kp. Lebaksari"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
