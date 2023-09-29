import 'package:flutter/material.dart';

class FormDesign extends StatefulWidget {
  const FormDesign({Key? key}) : super(key: key);

  @override
  State<FormDesign> createState() => _FormDesignState();
}

class _FormDesignState extends State<FormDesign> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                "Form",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              formLabelWidget(Icons.person, "Username"),
              formLabelWidget(Icons.email, "Email"),
              formLabelWidget(Icons.password, "Password"),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget formLabelWidget(IconData icon, String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "please enter some text";
          }
          return null;
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.white),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.red),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.white),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
