import 'package:flutter/material.dart';

class Account_Screen extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  final _fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        print(_controller.text);
      }),
      appBar: AppBar(
        title: Center(child: Text("My-Account")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _fromkey,
          child: Column(
            children: [
              // TextField(
              //   //obscureText: true,
              //   onChanged: (value){
              //     print(value);
              //   },
              //   controller: _controller,
              //   decoration: InputDecoration(
              //     prefixIcon: Icon(Icons.search_outlined),
              //     hintText: "Enter Your User Name",
              //   ),
              // ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.emailAddress,
                controller: _emailcontroller,
                decoration: InputDecoration(
                  hintText: "Enter Your User Name or Email",
                ),
                validator: (value) {
                  //regular expression
                  if (value!.isEmpty) {
                    return "this field can\'t be empty";
                  } else if (value.length < 5) {
                    return "Enter your username or email";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: true,
                keyboardType: TextInputType.number,
                controller: _passwordcontroller,
                decoration: InputDecoration(
                  hintText: "Enter Your User Password",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "this field can\'t be empty";
                  } else if (value.length < 5) {
                    return "Not Matched";
                  } else {
                    return null;
                  }
                },
              ),
              Divider(
                color: Colors.transparent,
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    if (_fromkey.currentState!.validate()) {
                      print("validation successfull");
                    } else {
                      print("failed");
                    }
                  },
                  child: Text("Login"),
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Register-screen');
                  },
                  child: Text("Register"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
