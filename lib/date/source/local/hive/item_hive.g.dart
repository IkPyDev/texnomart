// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemHiveAdapter extends TypeAdapter<ItemHive> {
  @override
  final int typeId = 0;

  @override
  ItemHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemHive(
      id: fields[0] as String,
      name: fields[1] as String,
      price: fields[2] as String,
      img: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ItemHive obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.img);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
