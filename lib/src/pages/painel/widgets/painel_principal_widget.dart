import 'package:et_lab_clinica_core/et_lab_clinica_core.dart';
import 'package:flutter/material.dart';

class PainelPrincipalWidget extends StatelessWidget {
  const PainelPrincipalWidget(
      {super.key,
      required this.passwordLabel,
      required this.password,
      required this.deskNumber,
      required this.labelColor,
      required this.buttonColor});

  final String passwordLabel;
  final String password;
  final String deskNumber;

  final Color labelColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(31),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: LabClinicaTheme.orangeColor),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(
              passwordLabel,
              style: LabClinicaTheme.titleStyle.copyWith(color: labelColor),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: buttonColor,
              ),
              child: Text(
                password,
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Guichê',
              style: LabClinicaTheme.titleStyle.copyWith(color: labelColor),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: buttonColor,
              ),
              child: Text(
                deskNumber,
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
