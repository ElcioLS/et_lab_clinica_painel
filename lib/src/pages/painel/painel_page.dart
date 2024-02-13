import 'package:et_lab_clinica_core/et_lab_clinica_core.dart';
import 'package:et_lab_clinica_painel/src/pages/painel/widgets/painel_principal_widget.dart';
import 'package:flutter/material.dart';

class PainelPage extends StatelessWidget {
  const PainelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LabClinicaAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .4,
                  child: const PainelPrincipalWidget(
                    passwordLabel: 'Senha anterior',
                    password: 'BG0234',
                    deskNumber: '02',
                    buttonColor: LabClinicaTheme.blueColor,
                    labelColor: LabClinicaTheme.orangeColor,
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .4,
                  child: const PainelPrincipalWidget(
                    passwordLabel: 'Chamando Senha',
                    password: 'BG0234',
                    deskNumber: '02',
                    buttonColor: LabClinicaTheme.orangeColor,
                    labelColor: LabClinicaTheme.blueColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
