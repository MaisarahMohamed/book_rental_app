import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Receipt extends StatefulWidget {
  Receipt({Key? key}) : super(key: key);

  @override
  _ReceiptState createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {

  TextEditingController date = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    date.text = '';
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rent Details'),
        centerTitle: true,
        backgroundColor: Colors.amber.shade600,
      ),

      bottomNavigationBar: Container(
        height: 95,
        padding: const EdgeInsets.all(20),
        child: ElevatedButton.icon(
          icon: Icon(Icons.home),
          label: Text('Home', style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          )),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black87,
          ),

          onPressed: () async {

          },
        ),
      ),

      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        'List of Books',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(9),
                      child: Container(
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [ BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0,3),
                            ),
                            ]),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'images/hp.png',
                                height: 80,
                                width: 130,
                              ),
                            ),
                            Container(
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Harry Potter Philosopher',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'The novels chronicle the lives of a young wizard, '
                                        'Harry Potter, and his friends Hermione Granger and Ron Weasley.',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        'Date to Borrow',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: date,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                            focusedBorder: focusBorder(),
                            enabledBorder: enabledBorder(),
                            prefixIcon: Icon(
                              Icons.calendar_month,
                              color: Colors.black87,
                            ),
                            prefixIconColor: Colors.grey,
                            /*labelText: 'Select Date',
                        labelStyle: TextStyle(
                          color: Colors.black87,
                        ),*/
                            hintText: 'yyyy/mm/dd',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )
                        ),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2050),
                            /*builder: (context, child) {
                            return Theme(
                                data: ThemeData(
                                    primaryColor: Colors.amber.shade600,
                                  //colorScheme: ColorScheme(brightness: brightness, primary: primary, onPrimary: onPrimary, secondary: secondary, onSecondary: onSecondary, error: error, onError: onError, background: background, onBackground: onBackground, surface: surface, onSurface: onSurface),
                                ),
                              child: widget,
                              );
                            }*/
                          );
                          if(pickedDate!= null) {
                            String formatDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                            setState(() {
                              date.text = formatDate;
                            });
                          }
                        },

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        'Date to Return',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: date,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                            focusedBorder: focusBorder(),
                            enabledBorder: enabledBorder(),
                            prefixIcon: Icon(
                              Icons.calendar_month,
                              color: Colors.black87,
                            ),
                            prefixIconColor: Colors.grey,
                            /*labelText: 'Select Date',
                        labelStyle: TextStyle(
                          color: Colors.black87,
                        ),*/
                            hintText: 'yyyy/mm/dd',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )
                        ),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2050),
                            /*builder: (context, child) {
                            return Theme(
                                data: ThemeData(
                                    primaryColor: Colors.amber.shade600,
                                  //colorScheme: ColorScheme(brightness: brightness, primary: primary, onPrimary: onPrimary, secondary: secondary, onSecondary: onSecondary, error: error, onError: onError, background: background, onBackground: onBackground, surface: surface, onSurface: onSurface),
                                ),
                              child: widget,
                              );
                            }*/
                          );
                          if(pickedDate!= null) {
                            String formatDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                            setState(() {
                              date.text = formatDate;
                            });
                          }
                        },

                      ),
                    ),
                  ])
          )],
      ),
    );
  }

  OutlineInputBorder focusBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.black87,
        )
    );
  }

  OutlineInputBorder enabledBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.black87,
        )
    );
  }
}


















