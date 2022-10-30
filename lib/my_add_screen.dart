import 'package:flutter/material.dart';

class My_Add_Screen extends StatelessWidget {
  const My_Add_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("My Add"),),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'My Ads',
              ),
              Tab(
                text: 'My Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          GridView.builder(
            itemCount: 30,

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              childAspectRatio: .8,
              crossAxisSpacing: 10,
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
                        Text(
                          'Apple Watch',
                          style: TextStyle(
                              fontSize: 22, color: Colors.red.shade900),
                        ),
                        Text(
                          "Series 6\n",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "\$300\n",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Positioned(
                      top: -25,
                      child: Image.asset('image/img_4.png'),
                      height: 100,
                    ),
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(('image/img_4.png')),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6.Red'),
                    trailing: Text("\$350"),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
