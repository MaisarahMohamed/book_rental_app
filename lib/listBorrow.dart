import 'package:flutter/material.dart';


class ListBorrow extends StatefulWidget {
  ListBorrow({Key? key}) : super(key: key);

  @override
  _ListBorrowState createState() => _ListBorrowState();
}

class _ListBorrowState extends State<ListBorrow> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('List Borrowed'),
      backgroundColor: Colors.amber.shade600,
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.power_settings_new_rounded),
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => Search()))
          },
        ),
      ],
      elevation: 1,
    ),

    body: Container(
      padding: EdgeInsets.all(25),
      child: Table(
        border: TableBorder.all(),
        columnWidths: {
          0: FractionColumnWidth(0.14),
          1: FractionColumnWidth(0.6),
          2: FractionColumnWidth(0.3),
        },
        children: [
          //buildRow([Text('No.'), IconButton(onPressed: (){}, icon: Icon(Icons.edit))], isHeader: true),
          buildRow(['No.','List of Books','Action'], isHeader: true),
          buildRow(['1','Harry Potter Philosopher','Action']),
          buildRow(['2','Sleeping Beauty','Action']),
          buildRow(['3','Beauty and The Beast','Action']),
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


















