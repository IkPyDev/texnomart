part of 'profil_bloc.dart';

class ProfilState {
  List<ItemHive>? items;
  Status status;

  ProfilState({required this.status,this.items});

  ProfilState copyWith({
      List<ItemHive>? items,
      required Status status,}
      )=> ProfilState(status: status,items: items ?? this.items);
}

