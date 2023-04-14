import 'package:flutter/material.dart';
import 'package:muffin/constants.dart';
import 'home_page.dart';

class UserLogin extends StatelessWidget {
  final _eMailController = TextEditingController();
  final _passwordController = TextEditingController();

  // const UserLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage('assets/icon/MuffinIcon.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: TextFormField(
                  controller: _eMailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    labelText: 'E-Mail',
                    hintText: 'Please Enter Your E-Mail',

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    labelText: 'Password',
                    hintText: 'Please Enter Your Password',
                  ),
                ),
              ),
              Container(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                      shadowColor: Colors.greenAccent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(100, 40),
                    ),

                    onPressed: () {
                      if (_eMailController.text == 'admin' &&
                          _passwordController.text == '1234') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MySelectionScreen()),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Error'),
                            content: Text('invalid username or password'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  )
              ),
            ],

        ),
      ),
    );
  }
}


