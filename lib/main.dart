import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddEmployeeScreen(),
    );
  }
}

class AddEmployeeScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Employee'),
        backgroundColor: const Color.fromARGB(255, 104, 189, 200),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                labelText: 'Age',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: salaryController,
              decoration: InputDecoration(
                labelText: 'Salary',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String age = ageController.text;
                String salary = salaryController.text;

                // Handle adding employee (e.g., send data to API or save locally)
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Employee Added: $name, $age, $salary'),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 104, 126, 200),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'Add Employee',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.purple.shade50,
    );
  }
}
