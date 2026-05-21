import 'package:classwork4/models/armstrong_model.dart';
import 'package:flutter/material.dart';

class ArmstrongScreen extends StatefulWidget {
  const ArmstrongScreen({super.key});

  @override
  State<ArmstrongScreen> createState() => _ArmstrongScreenState();
}

class _ArmstrongScreenState extends State<ArmstrongScreen> {
  ArmstrongModel? armstrongModel;
  final numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final model = armstrongModel;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(213, 205, 179, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: numberController,
                decoration: InputDecoration(
                  labelText: "Enter a number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        armstrongModel = ArmstrongModel(
                          number: int.parse(numberController.text),
                        );
                      });
                    }
                  },
                  child: Text("Check Armstrong"),
                ),
              ),
              if (model != null)
                Text(
                  "Your Enter number is ${model.isArmstrong() ? "" : "not"} Armstrong.",
                ),
            ],
          ),
        ),
      ),
    );
  }
}
