import 'package:et_lab_clinica_core/et_lab_clinica_core.dart';
import 'package:flutter_getit/flutter_getit.dart';

import '../core/env.dart';

class LabClinicaApplicationBinding extends ApplicationBindings {
  @override
  List<Bind<Object>> bindings() => [
        Bind.lazySingleton((i) => RestClient(Env.backendBaseUrl)),
        // Bind.lazySingleton<PatientInformationFormRepository>(
        //     (i) => PatientInformationFormRepositoryImpl(restClient: i())),
        // Bind.lazySingleton<AttendantDeskAssignmentRepository>(
        //     (i) => AttendantDeskAssignmentRepositoryImpl(restClient: i())),
        // Bind.lazySingleton<PainelRepository>(
        //     (i) => PainelRepositoryImpl(restClient: i())),
        // Bind.lazySingleton((i) => CallNextPatientService(
        //     patientInformationFormRepository: i(),
        //     attendantDeskAssignmentRepository: i(),
        //     painelRepository: i())),
      ];
}
