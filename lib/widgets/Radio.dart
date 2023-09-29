import 'package:flutter/material.dart';

enum BiggestAnimal { BlueWhale, Elephant, Hippo }

class RadioDesign extends StatefulWidget {
  const RadioDesign({Key? key}) : super(key: key);

  @override
  State<RadioDesign> createState() => _RadioDesignState();
}

class _RadioDesignState extends State<RadioDesign> {
  BiggestAnimal _selectedAnimal = BiggestAnimal.BlueWhale;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Biggest Animal in the World ?",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ListTile(
            title: const Text(
              "Blue Whale",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
              ),
            ),
            leading: Radio<BiggestAnimal>(
              activeColor: Colors.amber,
              fillColor: MaterialStateProperty.all(Colors.amber),
              value: BiggestAnimal.BlueWhale,
              groupValue: _selectedAnimal,
              onChanged: (BiggestAnimal? value) {
                setState(() {
                  _selectedAnimal = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
              "Elephant",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
              ),
            ),
            leading: Radio<BiggestAnimal>(
              activeColor: Colors.amber,
              fillColor: MaterialStateProperty.all(Colors.amber),
              value: BiggestAnimal.Elephant,
              groupValue: _selectedAnimal,
              onChanged: (BiggestAnimal? value) {
                setState(() {
                  _selectedAnimal = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
              "Hippo",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
              ),
            ),
            leading: Radio<BiggestAnimal>(
              activeColor: Colors.amber,
              fillColor: MaterialStateProperty.all(Colors.amber),
              value: BiggestAnimal.Hippo,
              groupValue: _selectedAnimal,
              onChanged: (BiggestAnimal? value) {
                setState(() {
                  _selectedAnimal = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
