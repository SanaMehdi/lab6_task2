import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Computer Science'),
      ),
      body: Center(
        child: Card(
          elevation: 5.0,
          margin: EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Avatar section
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/931167/pexels-photo-931167.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                ),
                SizedBox(height: 16.0),

                // Name section
                const Text(
                  'Sana Mehdi',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),

                // Bio section
                Text(
                  'Hey, I am Sana a Computer Science student and an aspiring Engineer .',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 16.0),

                // Action buttons (Follow and Message)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Follow action
                      },
                      child: Text('Follow'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Use backgroundColor instead of primary
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Message action
                      },
                      child: const Text('Message'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Use backgroundColor instead of primary
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileCard(),
  ));
}
