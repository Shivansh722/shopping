import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      backgroundColor: Color.fromARGB(255, 159, 156, 156), // Set background color to light grey
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Icon(Icons.person,
                size: 150,
                ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: InputBorder.none, // Remove the default border
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 215, 215),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  obscureText: true, // Hide password text
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none, // Remove the default border
                  ),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Add your logic to handle the form submission here
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 5, 5, 5), // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
