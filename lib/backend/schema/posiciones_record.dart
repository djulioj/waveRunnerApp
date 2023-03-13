import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'posiciones_record.g.dart';

abstract class PosicionesRecord
    implements Built<PosicionesRecord, PosicionesRecordBuilder> {
  static Serializer<PosicionesRecord> get serializer =>
      _$posicionesRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get time;

  String? get avrg;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PosicionesRecordBuilder builder) => builder
    ..displayName = ''
    ..time = ''
    ..avrg = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Posiciones');

  static Stream<PosicionesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PosicionesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PosicionesRecord._();
  factory PosicionesRecord([void Function(PosicionesRecordBuilder) updates]) =
      _$PosicionesRecord;

  static PosicionesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPosicionesRecordData({
  String? displayName,
  String? time,
  String? avrg,
}) {
  final firestoreData = serializers.toFirestore(
    PosicionesRecord.serializer,
    PosicionesRecord(
      (p) => p
        ..displayName = displayName
        ..time = time
        ..avrg = avrg,
    ),
  );

  return firestoreData;
}
