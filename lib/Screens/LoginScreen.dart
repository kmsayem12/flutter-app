// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'firebase_options.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // child: Column(
        children: <Widget>[
          const Image(
              image: NetworkImage(
                  'https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png'),
              height: 100),
          const SizedBox(height: 30),
          Container(
              // height: 350,
              width: double.infinity,
              // color: Colors.amber.shade600,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  // const Text('Login', style: TextStyle(fontSize: 30,color: Colors.blue)),
                  const SizedBox(height: 25),
                  TextField(
                    controller: _email,
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.5),
                        )),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: _password,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.5),
                        )),
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 25),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                        // final email = _email.text;
                        // final password = _password.text;
                        // await Firebase.initializeApp(
                        //   options: DefaultFirebaseOptions.currentPlatform,
                        // );
                        // final userCredential = await FirebaseAuth.instance
                        //     .createUserWithEmailAndPassword(
                        //         email: email, password: password);
                        // print(userCredential);
                      },
                      child: const Text('Login',
                          style: TextStyle(color: Colors.white))),
                ],
              )),
        ],
        // )
      ),
    );
  }
}
