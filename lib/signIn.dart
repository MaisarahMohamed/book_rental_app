import 'package:flutter/material.dart';
import 'package:mobileproject/signUp.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Center(
                        child: Image(
                          image: AssetImage('images/logoo.png'),
                          width: 250,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Login to your Account',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: customFormField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        controller: email,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: customFormField(
                        controller: password,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: StatefulBuilder(
                        builder: (BuildContext context, setState) {
                          return /*loading
                              ?*/ MaterialButton(
                              onPressed: () {
                                /*if (email.text.isNotEmpty) {
                                  if (password.text.isNotEmpty) {
                                    setState(() {
                                      loading = !loading;
                                    });
                                  } else {
                                    newSnackBar(context,
                                        title:
                                        'Email and Password Required!');
                                  }
                                } else {
                                  newSnackBar(context,
                                      title: 'Email Required!');
                                }

                                try {
                                  await FirebaseAuth.instance
                                      .signInWithEmailAndPassword(
                                      email: email.text,
                                      password: password.text)
                                      .then((value) {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const HomePage(),
                                      ),
                                    );

                                    setState(() {
                                      loading = !loading;
                                    });
                                  });
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'user-not-found') {
                                    newSnackBar(context,
                                        title:
                                        'No user found for that email.');
                                    setState(() {
                                      loading = !loading;
                                    });
                                  } else if (e.code == 'wrong-password') {
                                    newSnackBar(context,
                                        title:
                                        'Wrong password provided for that user.');
                                    setState(() {
                                      loading = !loading;
                                    });
                                  }
                                }*/
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              color: Colors.amber.shade600,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding:
                                    EdgeInsets.fromLTRB(0, 15, 0, 15),
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ));
                              /*: Center(
                            child: MaterialButton(
                              onPressed: () {},
                              shape: const CircleBorder(),
                              color:  Colors.lime,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );*/
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ),
                      );
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xFFFFB300),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  customFormField({
    controller,
    labelText,
    keyboardType,
    textInputAction,
    obscureText,
  }) {
    return Material(
      elevation: 2.0,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.white,
      child: TextFormField(
        autofocus: false,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        controller: controller,
        cursorColor: Colors.black,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.black),
          contentPadding: const EdgeInsets.all(8),
          border: InputBorder.none,
        ),
      ),
    );
  }
}













