import 'package:classwork4/models/arthimetic_model.dart';
import 'package:flutter/material.dart';

class ArthimeticScreen extends StatefulWidget {
  const ArthimeticScreen({super.key});

  @override
  State<ArthimeticScreen> createState() => _ArthimeticScreenState();
}

class _ArthimeticScreenState extends State<ArthimeticScreen> {
  double first = 0;
  double second = 0;
  double result = 0;

  ArthimeticModel? arthimeticModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                first = double.tryParse(value) ?? 0;
              },
              decoration: const InputDecoration(
                labelText: "Enter first number",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 8),

            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                second = double.tryParse(value) ?? 0;
              },
              decoration: const InputDecoration(
                labelText: "Enter second number",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 8),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    arthimeticModel = ArthimeticModel(
                      first: first,
                      second: second,
                    );
                    result = arthimeticModel!.add();
                  });
                },
                child: const Text("Add"),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    arthimeticModel = ArthimeticModel(
                      first: first,
                      second: second,
                    );
                    result = arthimeticModel!.sub();
                  });
                },
                child: const Text('sub', style: TextStyle(color: Colors.amber)),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    arthimeticModel = ArthimeticModel(
                      first: first,
                      second: second,
                    );
                    result = arthimeticModel!.mul();
                  });
                },
                child: const Text("Multiply"),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    arthimeticModel = ArthimeticModel(
                      first: first,
                      second: second,
                    );
                    result = arthimeticModel!.div();
                  });
                },
                child: const Text("Division"),
              ),
            ),

            const SizedBox(height: 8),

            Text("Result : $result", style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
