import 'package:flutter/material.dart';

class Register_Screen extends StatefulWidget {
  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  double _height = 100.0;

  double _weight = 100.0;

  double _fontsize = 20.0;
  double _right=0;
  Color _color = Colors.blueAccent;

  void animatedcontainer() {
    setState(() {
      _height = 200;
      _weight = 200;
    });
  }
  void animatedtext(){
    setState(() {
      _fontsize=50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    Navigator.pop(context, '/Account-screen');
                  },
                  child: Text("Back"),
                ),
              ),
              AnimatedContainer(
                duration: Duration(seconds: 3),
                curve: Curves.bounceInOut,
                height: _height,
                width: _weight,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                onEnd: () {
                  setState(() {
                    _weight = _weight == 200 ? 400 : 200;
                    _color = _color == Colors.blueAccent
                        ? Colors.black
                        : Colors.blueAccent;
                  });
                },
              ),

              ElevatedButton(
                onPressed: () => animatedcontainer(),
                child: Text('Animate'),
              ),
              AnimatedDefaultTextStyle(
                child: Text("We Are Learning-animated deafult text style"),
                style: TextStyle(
                  fontSize: _fontsize,
                  color: Colors.blueAccent,
                ),
                curve: Curves.easeInCirc,
                duration: Duration(seconds: 3),),
              ElevatedButton(
                onPressed: () => animatedtext(),
                child: Text('Animate Text'),
              ),
              Container(
                height: 50,
                width: 400,
                color: Colors.greenAccent,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      right: _right,
                      curve: Curves.ease,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          _right=110;
                        });
                      },
                        child: Text('Animated-Button'),),
                      duration: Duration(seconds: 5),
                    ),
                    Card(
                      elevation: 5,
                      child: ListTile(
                        onTap: ()=>Navigator.pushNamed(context, '/Animate-screen'),
                        leading: Hero(tag: '1', child:CircleAvatar(),),
                        title: Text('my-button'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
