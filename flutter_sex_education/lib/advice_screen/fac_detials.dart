import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FacultyAdvicePage extends StatelessWidget {
  final String facultyName;
  final String contactNumber;
  final String email;
  final String expertise;
  final String availability;
  final String bio;
  final LatLng location;

  FacultyAdvicePage({
    required this.facultyName,
    required this.contactNumber,
    required this.email,
    required this.expertise,
    required this.availability,
    required this.bio,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(facultyName),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Faculty Name
            Text(
              facultyName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),

            // Area of Expertise
            Row(
              children: [
                Icon(Icons.school, color: Colors.blue),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Expertise: $expertise",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Contact Details
            Row(
              children: [
                Icon(Icons.phone, color: Colors.green),
                const SizedBox(width: 8),
                Text(contactNumber),
              ],
            ),
            const SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.email, color: Colors.blue),
                const SizedBox(width: 8),
                Text(email),
              ],
            ),
            const SizedBox(height: 20),

            // Availability
            Row(
              children: [
                Icon(Icons.calendar_today, color: Colors.orange),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Availability: $availability",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Bio
            Text(
              'About $facultyName',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 10),
            Text(
              bio,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 20),

         
            const SizedBox(height: 10),
            SizedBox(
              height: 300,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: location,
                  zoom: 15,
                ),
                markers: {
                  Marker(
                    markerId: MarkerId('facultyLocation'),
                    position: location,
                    infoWindow: InfoWindow(
                      title: facultyName,
                      snippet: 'Mentor Location',
                    ),
                  ),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
