import 'package:flutter/material.dart';
import 'appbar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Variable to hold the trigger value
  double triggerValue = 50.0;
  final TextEditingController triggerController = TextEditingController();

  // Other settings values (same as your original code)
  String notificationFrequency = 'Immediate';
  String notificationSound = 'Default';
  bool vibration = false;
  bool ledNotification = false;

  @override
  void initState() {
    super.initState();
    // Initialize the controller with the current trigger value
    triggerController.text = triggerValue.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Settings'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Trigger Value - Text Input instead of Slider
            Row(
              children: [
                const Text('Trigger Value:'),
                Expanded(
                  child: TextField(
                    controller: triggerController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Enter value',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      // Try to update trigger value with entered number
                      try {
                        final double parsedValue = double.parse(value);
                        if (parsedValue >= 0.0 && parsedValue <= 10000.0) {
                          setState(() {
                            triggerValue = parsedValue;
                          });
                        }
                      } catch (e) {
                        // If the input is not valid, do nothing
                      }
                    },
                  ),
                ),
                const Text('0.0'), // Placeholder for the current value
              ],
            ),

            const SizedBox(height: 16),

            // Notification Frequency
            DropdownButtonFormField<String>(
              value: notificationFrequency,
              onChanged: (value) {
                setState(() {
                  notificationFrequency = value!;
                });
              },
              items: ['Immediate', 'Daily', 'Weekly'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

            const SizedBox(height: 16),

            // Notification Sound
            DropdownButtonFormField<String>(
              value: notificationSound,
              onChanged: (value) {
                setState(() {
                  notificationSound = value!;
                });
              },
              items: ['Default', 'Sound 1', 'Sound 2'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

            const SizedBox(height: 16),

            // Vibration
            SwitchListTile(
              title: const Text('Vibration'),
              value: vibration,
              onChanged: (value) {
                setState(() {
                  vibration = value;
                });
              },
            ),

            const SizedBox(height: 16),

            // LED Notification
            SwitchListTile(
              title: const Text('LED Notification'),
              value: ledNotification,
              onChanged: (value) {
                setState(() {
                  ledNotification = value;
                });
              },
            ),

            const SizedBox(height: 16),

            // Save Button
            ElevatedButton(
              onPressed: () {
                // Save settings logic
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
