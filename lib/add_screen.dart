
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/adapters.dart';
class Add_Screen extends StatefulWidget {
  @override
  State<Add_Screen> createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _updatecontroller = TextEditingController();

  Box? add_box;
  @override
  void initState() {
    add_box = Hive.box('add-list');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Whats on your mind',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      final userinput = _controller.text;
                      await add_box!.add(userinput);
                      Fluttertoast.showToast(msg: 'Added Successfully');
                      _controller.clear();
                    } catch (e) {
                      Fluttertoast.showToast(
                        msg: e.toString(),
                      );
                    }
                  },
                  child: Text('Add-Data'),
                ),
              ),
              Expanded(
                child: ValueListenableBuilder(
                    valueListenable: Hive.box('add-list').listenable(),
                    builder: (context, box, widget) {
                      return ListView.builder(
                        itemCount: add_box!.keys.toList().length,
                        itemBuilder: (_, index) {
                          return Card(
                            elevation: 5,
                            child: ListTile(
                              trailing: SizedBox(
                                width: 100,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        showDialog(context: context,
                                            barrierDismissible: true,
                                            builder: (_){
                                              return AlertDialog(
                                                content: SizedBox(
                                                  height: 200,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(20.0),
                                                    child: Column(
                                                      children: [

                                                        TextField(
                                                          controller: _updatecontroller,

                                                        ),
                                                        ElevatedButton(onPressed: ()async{
                                                          final updateinput=_updatecontroller.text;
                                                          add_box!.putAt(index,
                                                              updateinput);
                                                          Navigator.pushNamed(context,'/add-screen');

                                                          Fluttertoast.showToast(msg: 'Update Successfully');
                                                        },
                                                          child: Text('Update'),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                        );
                                      },
                                      icon: Icon(Icons.edit),color: Colors.greenAccent,
                                    ),
                                    IconButton(
                                      onPressed: () async{
                                        await add_box!.deleteAt(index);
                                        Fluttertoast.showToast(msg: 'Delete Successfully');
                                      }, icon: Icon(Icons.remove_circle),color: Colors.red,),
                                  ],
                                ),
                              ),
                              title: Text(
                                add_box!.getAt(index).toString(),
                              ),
                            ),
                          );
                        },
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
