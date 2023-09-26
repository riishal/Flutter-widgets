import 'package:flutter/material.dart';

class DataTableDesign extends StatefulWidget {
  const DataTableDesign({Key? key}) : super(key: key);

  @override
  State<DataTableDesign> createState() => _DataTableDesignState();
}

class _DataTableDesignState extends State<DataTableDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: DataTable(
            dataRowHeight: 90,
            headingRowColor: MaterialStateProperty.all(Colors.amber),
            dataRowColor:
                MaterialStateProperty.all(Colors.purple.withOpacity(0.2)),
            border: TableBorder.all(width: 2, color: Colors.grey),
            columns: const [
              DataColumn(
                label: Text(
                  "Movie",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  "Rating",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  "Genre",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "Top Gun: Maverick",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      "8.6",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      "Drama, Action, Adventure",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "Doctor Strange in the multiverse of madness",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      "7.3",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      "Horror, Fantasy, Adventure",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "Sonic the Hedgehog 2",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      "6.6",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      "Comedy, Action, Adventure",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 12,
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
}
