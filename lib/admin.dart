import 'package:flutter/material.dart';
import 'package:mobileproject/rentReceipt.dart';

import 'listBook.dart';

class Admin extends StatefulWidget {
  Admin({Key? key}) : super(key: key);

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      /*appBar: AppBar(
        title: const Text('Rent Details'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),*/

      body: Container(
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
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Welcome, Admin',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('List of Books'),
                      //Icon(Icons.bookmark_border_outlined),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListBook()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    fixedSize: Size(300, 70),
                    textStyle: TextStyle(
                      fontSize: 19,
                      //fontWeight: FontWeight.bold,
                    ),
                    shape: StadiumBorder(),
                    onPrimary: Colors.black87,
                    backgroundColor: Colors.amber.shade600,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('List of Books Borrow'),
                      //Icon(Icons.bookmark_border_outlined),
                    ],
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    fixedSize: Size(300, 70),
                    textStyle: TextStyle(
                      fontSize: 19,
                      //fontWeight: FontWeight.bold,
                    ),
                    shape: StadiumBorder(),
                    onPrimary: Colors.black87,
                    backgroundColor: Colors.amber.shade600,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}


















