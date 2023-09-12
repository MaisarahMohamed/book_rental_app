import 'package:flutter/material.dart';
import 'package:mobileproject/signIn.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController name = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController address = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color:  Colors.lime,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: const Center(
                    child: Image(
                      image: AssetImage("images/logoo.png"),
                      width: 240,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Register your Account',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: customFormField(
                    labelText: 'Name',
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    controller: name,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: customFormField(
                    labelText: 'Email',
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
                    labelText: 'Password',
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: customFormField(
                    controller: phone,
                    labelText: 'Phone Number',
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: customFormField(
                    controller: address,
                    labelText: 'Full Address',
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: StatefulBuilder(
                    builder: (BuildContext context, setState) {
                      return /*loading
                          ?*/ MaterialButton(
                          onPressed: () {
                            /*if (name.text.isNotEmpty) {
                              if (email.text.isNotEmpty) {
                                if (password.text.isNotEmpty) {
                                  setState(() {
                                    loading = !loading;
                                  });
                                } else {
                                  newSnackBar(context,
                                      title: 'Password Required!');
                                }
                              } else {
                                newSnackBar(context,
                                    title: 'Email Required!');
                              }
                            } else {
                              newSnackBar(context, title: 'Name Required!');
                            }

                            try {
                              await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                  email: email.text,
                                  password: password.text)
                                  .then((value) async {
                                await FirebaseFirestore.instance
                                    .collection("user")
                                    .doc(value.user!.uid)
                                    .set({
                                  'uid': value.user!.uid,
                                  'name': name.text,
                                  'email': email.text,
                                }).then((value) {
                                  email.clear();
                                  name.clear();
                                  password.clear();
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
                              });
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                newSnackBar(context,
                                    title:
                                    'The password provided is too weak.');
                                setState(() {
                                  loading = !loading;
                                });
                              } else if (e.code == 'email-already-in-use') {
                                newSnackBar(context,
                                    title:
                                    'The account already exists for that email.');
                                setState(() {
                                  loading = !loading;
                                });
                              }
                            } catch (e) {
                              newSnackBar(context, title: e);
                              setState(() {
                                loading = !loading;
                              });
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
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                                child: Text(
                                  'Register',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),);
                          /*: Center(
                        child: MaterialButton(
                          onPressed: () {},
                          shape: const CircleBorder(),
                          color: blue,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(
                              color: white,
                            ),
                          ),
                        ),
                      );*/
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign In',
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
          labelStyle: TextStyle(color: Colors.black),
          contentPadding: const EdgeInsets.all(8),
          border: InputBorder.none,
        ),
      ),
    );
  }
}