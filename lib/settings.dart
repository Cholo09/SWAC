import 'package:flutter/material.dart';
import 'appbar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Settings'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Trigger Value
            Row(
              children: [
                const Text('Trigger Value:'),
                Expanded(
                  child: Slider(
                    value: 50.0, // Replace with actual value
                    onChanged: (value) {
                      // Update trigger value
                    },
                    min: 0.0,
                    max: 10000,
                  ),
                ),
                const Text('50.0'), // Replace with formatted value
              ],
            ),

            // Notification Frequency
            DropdownButtonFormField<String>(
              value: 'Immediate', // Replace with actual value
              onChanged: (value) {
                // Update notification frequency
              },
              items: ['Immediate', 'Daily', 'Weekly'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

            // Notification Sound
            DropdownButtonFormField<String>(
              value: 'Default', // Replace with actual value
              onChanged: (value) {
                // Update notification sound
              },
              items: ['Default', 'Sound 1', 'Sound 2'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

            // Vibration
            SwitchListTile(
              title: const Text('Vibration'),
              value: false, // Replace with actual value
              onChanged: (value) {
                // Update vibration setting
              },
            ),

            // LED Notification
            SwitchListTile(
              title: const Text('LED Notification'),
              value: false, // Replace with actual value
              onChanged: (value) {
                // Update LED notification setting
              },
            ),

            // Save Button
            ElevatedButton(
              onPressed: () {
                // Save settings
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}