import 'package:flutter/material.dart';

class settingsList extends StatelessWidget {
  final String tileName;

  const settingsList({required this.tileName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        // ignore: sort_child_properties_last
        child: Text(tileName),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 213, 213),
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
