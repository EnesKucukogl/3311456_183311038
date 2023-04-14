import 'package:flutter/material.dart';
import 'package:muffin/constants.dart';
import 'home_page.dart';
import 'package:muffin/Service/auth_service.dart';

class UserSignup extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _eMailController = TextEditingController();

  // const UserSignup({Key? key}) : super(key: key);

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
              child: Text("Sıgnup",
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
                  hintText: 'Please Enter Your Email',

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              child: TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  labelText: 'Name and Surname',
                  hintText: 'Please Enter Your Name and Surname',

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
                        borderRadius: BorderRadius.circular(32.0)
                    ),
                    minimumSize: Size(100, 40),
                  ),
                  onPressed: () {
                    //
                    // _userAuthService.SignUp(_usernameController.text, _eMailController.text, _passwordController.text).then((value) {
                    //   return Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    // });
                  },
                  child: Text(
                    "Signup",
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


