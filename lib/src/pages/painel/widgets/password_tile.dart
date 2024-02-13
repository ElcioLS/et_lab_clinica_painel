import 'package:et_lab_clinica_core/et_lab_clinica_core.dart';
import 'package:flutter/material.dart';

class PasswordTile extends StatelessWidget {
  const PasswordTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: LabClinicaTheme.orangeColor),
      ),
      child: const Column(
        children: [
          Text(
            'PF02323',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: LabClinicaTheme.blueColor,
            ),
          ),
          Text(
            'Guichê 01',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: LabClinicaTheme.orangeColor,
            ),
          ),
        ],
      ),
    );
  }
}
