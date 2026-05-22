import 'package:classwork4/screens/bottom_screen/armstrong_screen.dart';
import 'package:classwork4/screens/bottom_screen/arthimetic_screen.dart';
import 'package:classwork4/screens/bottom_screen/palindrome_screen.dart';
import 'package:classwork4/screens/bottom_screen/simple_intrest_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  List<Widget> lstBottomScreen = [
    const ArmstrongScreen(),
    const ArthimeticScreen(),
    const PalindromeScreen(),
    const SimpleIntrestScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(fontFamily: 'Montserrat Extra Bold', fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: lstBottomScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.numbers), label: 'arms'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Arthic'),

          BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows),
            label: 'palin',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: 'SI'),
        ],
        backgroundColor: const Color.fromARGB(255, 150, 153, 155),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
