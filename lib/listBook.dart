import 'package:flutter/material.dart';


class ListBook extends StatefulWidget {
  ListBook({Key? key}) : super(key: key);

  @override
  _ListBookState createState() => _ListBookState();
}

class _ListBookState extends State<ListBook> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Library'),
      backgroundColor: Colors.amber.shade600,
      centerTitle: true,
      actions: [
        Icon(Icons.power_settings_new_rounded),
      ],
    ),

    body: Container(
      padding: EdgeInsets.all(25),
      child: Table(
        border: TableBorder.all(),
        columnWidths: {
          0: FractionColumnWidth(0.20),
          1: FractionColumnWidth(0.8),
          2: FractionColumnWidth(0.20),
        },
        children: [
          buildRow(['No.','List of Books'], isHeader: true),
          buildRow(['1','Harry Potter Philosopher']),
          buildRow(['2','Sleeping Beauty']),
          buildRow(['3','Beauty and The Beast']),
        ],
      ),
    ),
  );

  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
    children: cells.map((cell) {
      final style = TextStyle(
        fontWeight: isHeader? FontWeight.bold : FontWeight.normal,
        fontSize: 18,
      );
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Text(
            (cell),
            style: TextStyle(
            fontWeight: FontWeight.bold,
              fontSize: 15,
          ),
          ),
        ),
      );
    }).toList(),
  );
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


















