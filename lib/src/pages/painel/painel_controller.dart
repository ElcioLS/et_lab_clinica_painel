import 'package:et_lab_clinica_painel/src/models/painel_checkin_model.dart';
import 'package:et_lab_clinica_painel/src/repositories/user/painel_checkin/painel_checkin_repository.dart';
import 'package:signals_flutter/signals_flutter.dart';

class PainelController {
  PainelController({required PainelCheckinRepository repository})
      : _repository = repository;

  final PainelCheckinRepository _repository;
  final painelData = listSignal<PainelCheckinModel>([]);

  Connect? _painelConnect;

  Function? _socketDispose;
  void listenerPainel() {
    final (:channel, :dispose) = _repository.openChannelSocket();
    _socketDispose = dispose;

    _painelConnect = connect(painelData);
    final painelStream = _repository.getTodayPainel(channel);

    _painelConnect!.from(painelStream);
  }

  void dispose() {
    _painelConnect?.dispose();

    if (_socketDispose != null) {
      _socketDispose!();
    }
  }
}
