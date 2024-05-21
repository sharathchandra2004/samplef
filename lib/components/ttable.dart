import 'package:flutter/material.dart';

class TTable extends StatefulWidget {
  const TTable({super.key});

  @override
  State<TTable> createState() => _TIMETABLEState();
}

class _TIMETABLEState extends State<TTable> {
  double _rotationAngle = 0.0; // Initialize rotation angle (radians)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform(
          // Rotate the entire table using Transform
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(_rotationAngle),
          child: Table(
            border: TableBorder.all(),
              columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(45.0), // Set width for the first column
              1: FixedColumnWidth(45.0), // Set width for the second column
              2: FixedColumnWidth(45.0), 
              3: FixedColumnWidth(45.0), // Set width for the first column
              4: FixedColumnWidth(45.0),
              5: FixedColumnWidth(45.0), 
              6: FixedColumnWidth(45.0), 
              7:FixedColumnWidth(45),
              8:FixedColumnWidth(45)
              // Set width for the first column
 // Set width for the second column  // Set width for the third column
    // ... define widths for other columns
  },
            children: <TableRow>[
              _buildTableRow('C 1', 'C 2', 'C 3', 'C 4', 'C 5', 'C 6', 'C 7', 'C 8'),
              _buildTableRow('C1', 'C 2', 'C 3', 'C 4', 'C 5', 'C 6', 'C 7', 'C 8'),
              _buildTableRow('C 1', 'C 2', 'C 3', 'C 4', 'C 5', 'C 6', 'C 7', 'C 8'),
              _buildTableRow('C 1', 'C 2', 'C 3', 'C 4', 'C 5', 'C 6', 'C 7', 'C 8'),
              _buildTableRow('C 1', 'C 2', 'C 3', 'C 4', 'C 5', 'C 6', 'C 7', 'C 8'),
              _buildTableRow('C 1', 'C 2', 'C 3', 'C 4', 'C 5', 'C 6', 'C 7', 'C 8'),
              _buildTableRow('C 1', 'C 2', 'C 3', 'C 4', 'C 5', 'C 6', 'C 7', 'C 8'),
              
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.rotate_left), // Use rotate_left icon
        onPressed: () {
          setState(() {
            _rotationAngle -= 0.1; // Adjust rotation amount dynamically
          });
        },
      ),
    );
  }

  // Function to create a table row with content
  TableRow _buildTableRow(String content1, String content2, String content3, String content4, String content5, String content6, String content7, String content8) {
    return TableRow(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(content1),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(content2),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(content3),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(content4),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(content5),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(content6),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(content7),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(content8),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(content8),
        ),
      ],
    );
  }
}
