import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home_Screen extends StatelessWidget {
  List<String> _categories = [
    'Electronic',
    'Food',
    'Clothes',
    'Groceries',
    'Cosmatics'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },),
      appBar: AppBar(
        title: Center(child: Text("Learning-Approach")),
      ),
      //backgroundColor: Colors.black26,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 30),
          child: SingleChildScrollView(
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Ariful',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
                Text(
                  'lets get something',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 120,
                        width: 220,
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '40% Off During\nCovid 19',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Image(
                                  image: AssetImage('image/img.png'),
                                  width: 60,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 220,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '40% Off During\nCovid 19',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Image(
                                  image: AssetImage('image/img_1.png'),
                                  width: 90,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 220,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '40% Off During\nCovid 19',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Image(
                                  image: AssetImage('image/img_2.png'),
                                  width: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 220,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '40% Off During\nCovid 19',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Image(
                                  image: AssetImage('image/img_3.png'),
                                  width: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Catagories',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'View all',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    itemCount: _categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (contex, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 3),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Center(
                                  child: Text(
                                _categories[index],
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  // height: 1700,
                  padding: EdgeInsets.only(right: 15),
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 30,
                    primary: false,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 10,
                      childAspectRatio: .8
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.blueAccent.shade100,
                        elevation: 5,
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Apple Watch',style: TextStyle(fontSize: 22,color: Colors.red.shade900),),
                                Text("Series 6\n",style: TextStyle(fontSize: 18),),
                                Text("\$300\n",style: TextStyle(fontSize: 20),)
                              ],
                            ),
                            Positioned(
                              top: -25,
                                child:
                                Image.asset('image/img_4.png'),
                              height: 100,
                            ),
                          ],
                        ),
                      );
                    },

                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
