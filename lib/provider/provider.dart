import 'package:flutter/material.dart';

class WidgetsProvider with ChangeNotifier {
  Widget widgetButtons(BuildContext context, Widget widget, String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 12.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => widget,
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
