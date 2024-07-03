// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BasketHiveAdapter extends TypeAdapter<BasketHive> {
  @override
  final int typeId = 1;

  @override
  BasketHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BasketHive(
      productId: fields[0] as String,
      name: fields[1] as String,
      price: fields[2] as double,
      image: fields[3] as String,
      count: fields[4] as int,
      isChecked: fields[5] as bool,
      isFavourite: fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, BasketHive obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.count)
      ..writeByte(5)
      ..write(obj.isChecked)
      ..writeByte(6)
      ..write(obj.isFavourite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasketHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
