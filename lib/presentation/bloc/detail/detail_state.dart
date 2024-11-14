part of 'detail_bloc.dart';

class DetailState {
  Status? status;
  GetDetail? detail;
  String? errorMessage;
  StatusDetail? isFavorite;


  DetailState({this.status,
    this.detail,
    this.errorMessage,
  this.isFavorite});

  DetailState copyWith({Status? status,
      GetDetail? detail,
      String? errorMessage,
    StatusDetail? isFavorite

  }) => DetailState(

    status: status ?? this.status,
    detail: detail ?? this.detail,
    errorMessage: errorMessage ?? this.errorMessage,
    isFavorite: isFavorite ?? this.isFavorite

);

}

enum StatusDetail{ loading,add,delete, }


