import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'fac_detials.dart';

class FacultyListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty List'),
      ),
      body: ListView.builder(
        itemCount: facultyData.length,
        itemBuilder: (context, index) {
          final faculty = facultyData[index];
          return ListTile(
            title: Text(faculty['facultyName']),
            subtitle: Text(faculty['email']),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
             Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => FacultyAdvicePage(
      facultyName: "Dr. Alex Morgan",
      contactNumber: "+1 123-456-7890",
      email: "alex.morgan@example.com",
      expertise: "Sex Education and Counseling",
      availability: "Monday - Friday, 10 AM - 4 PM",
      bio: "Dr. Alex Morgan has over 20 years of experience in sex education and counseling. "
          "They have helped numerous students navigate complex personal and interpersonal challenges.",
      location: LatLng(37.7749, -122.4194), // San Francisco
    ),
  ),
);

            },
          );
        },
      ),
    );
  }
}


final List<Map<String, dynamic>> facultyData = [
  {
    'facultyName': 'Dr. Alex Morgan',
    'contactNumber': '+1 123-456-7890',
    'email': 'alex.morgan@example.com',
    'location': LatLng(37.7749, -122.4194), // San Francisco
  },
  {
    'facultyName': 'Dr. Emily Carter',
    'contactNumber': '+1 987-654-3210',
    'email': 'emily.carter@example.com',
    'location': LatLng(34.0522, -118.2437), // Los Angeles
  },
  {
    'facultyName': 'Prof. John Smith',
    'contactNumber': '+1 555-123-4567',
    'email': 'john.smith@example.com',
    'location': LatLng(40.7128, -74.0060), // New York
  },
  {
    'facultyName': 'Dr. Linda Brown',
    'contactNumber': '+1 444-789-0123',
    'email': 'linda.brown@example.com',
    'location': LatLng(41.8781, -87.6298), // Chicago
  },
  {
    'facultyName': 'Prof. William Johnson',
    'contactNumber': '+1 333-456-7890',
    'email': 'william.johnson@example.com',
    'location': LatLng(47.6062, -122.3321), // Seattle
  },
];
