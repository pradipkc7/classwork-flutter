import 'package:classwork4/models/simple_intrest_model.dart';
import 'package:flutter/material.dart';

class SimpleIntrestScreen extends StatefulWidget {
  const SimpleIntrestScreen({super.key});

  @override
  State<SimpleIntrestScreen> createState() => _SimpleIntrestScreenState();
}

class _SimpleIntrestScreenState extends State<SimpleIntrestScreen> {
  late double p;
  late double r;
  late double t;
  double result = 0;
  late SimpleInterestModel simpleInterestModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                p = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: "Enter a Principle",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                r = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: "Enter a Time",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                t = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: "Enter a Rate",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  simpleInterestModel = SimpleInterestModel(
                    principle: p,
                    rate: r,
                    time: t,
                  );
                  setState(() {
                    result = simpleInterestModel.simpleinterst();
                  });
                },
                child: Text("Simple Intrest"),
              ),
            ),
            SizedBox(height: 8),
            Text("Result:$result"),
          ],
        ),
      ),
    );
  }
}
