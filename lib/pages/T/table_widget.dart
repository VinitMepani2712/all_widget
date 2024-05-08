import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Widget'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Table(
            columnWidths: {
              0: FixedColumnWidth(25),
              1: FixedColumnWidth(100),
              2: FixedColumnWidth(30),
              3: FixedColumnWidth(200),
            },
            border: TableBorder.all(),
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.blueAccent),
                children: [
                  TableCell(
                    child: Center(
                        child:
                            Text('ID', style: TextStyle(color: Colors.white))),
                  ),
                  TableCell(
                    child: Center(
                        child: Text('Name',
                            style: TextStyle(color: Colors.white))),
                  ),
                  TableCell(
                    child: Center(
                        child:
                            Text('Age', style: TextStyle(color: Colors.white))),
                  ),
                  TableCell(
                    child: Center(
                        child: Text('Email',
                            style: TextStyle(color: Colors.white))),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Center(child: Text('1')),
                  ),
                  TableCell(
                    child: Center(child: Text('Vinit Mepani')),
                  ),
                  TableCell(
                    child: Center(child: Text('22')),
                  ),
                  TableCell(
                    child: Center(child: Text('vinit.mepani@gmail.com')),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Center(child: Text('2')),
                  ),
                  TableCell(
                    child: Center(child: Text('Ram Smith')),
                  ),
                  TableCell(
                    child: Center(child: Text('25')),
                  ),
                  TableCell(
                    child: Center(child: Text('ram.smith@example.com')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
