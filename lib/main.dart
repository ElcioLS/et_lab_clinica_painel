import 'package:flutter/material.dart';

import 'package:et_lab_clinica_core/et_lab_clinica_core.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'src/bindings/lab_clinica_application_binding.dart';
import 'src/pages/login/login_router.dart';
import 'src/pages/splash/splash_page.dart';

void main() {
  runApp(const LabClinicaPainelApp());
}

//INICIANDO O PROJETO
class LabClinicaPainelApp extends StatelessWidget {
  const LabClinicaPainelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LabClinicaCoreConfig(
      title: 'Lab Clinica ADM',
      binding: LabClinicaApplicationBinding(),
      pagesBuilders: [
        FlutterGetItPageBuilder(page: (_) => const SplashPage(), path: '/'),
        FlutterGetItPageBuilder(
            page: (_) => const Text('Estou na Home'), path: '/home'),
      ],
      pages: const [
        LoginRouter(),
        // HomeRouter(),
        // PreCheckinRouter(),
        // CheckinRouter(),
        // EndCheckinRouter(),
      ],
    );
  }
}
