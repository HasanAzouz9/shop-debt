import 'package:hive/hive.dart';

import 'transaction_type.enum.dart';

class TransactionTypeAdapter extends TypeAdapter<TransactionType> {
  @override
  TransactionType read(BinaryReader reader) {
    return TransactionType.values[reader.readByte()];
  }

  @override
  int get typeId => 4;

  @override
  void write(BinaryWriter writer, TransactionType obj) {
    writer.writeByte(obj.index);
  }
}
