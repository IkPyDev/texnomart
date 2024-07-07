import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/date/source/local/hive/item_hive_manager.dart';

import '../../../date/source/local/hive/item_hive.dart';
import '../../../utils/status.dart';

part 'profil_event.dart';
part 'profil_state.dart';

class ProfilBloc extends Bloc<ProfilEvent, ProfilState> {
  ProfilBloc() : super(ProfilState(status: Status.initial)) {
    on<GetLoadProfilEvent>((event, emit) {
      emit(ProfilState(status: Status.loading));
      var likes = ItemHiveManager.getLikes();
      emit(ProfilState(status: Status.success,items: likes));
    });
  }
}
