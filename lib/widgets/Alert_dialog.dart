import 'package:flutter/material.dart';

class AlertDialogDesign extends StatefulWidget {
  const AlertDialogDesign({Key? key}) : super(key: key);

  @override
  State<AlertDialogDesign> createState() => _AlertDialogDesignState();
}

class _AlertDialogDesignState extends State<AlertDialogDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 40,
          width: 100,
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Flutter Alert Dialog Title"),
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  content: const Text("Flutter Alert Dialog Content"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text("Cancel",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Ok'),
                      child: const Text("Ok",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              );
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.amber,
            ),
            child: const Text(
              "Show Dialog",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
