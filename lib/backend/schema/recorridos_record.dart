import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recorridos_record.g.dart';

abstract class RecorridosRecord
    implements Built<RecorridosRecord, RecorridosRecordBuilder> {
  static Serializer<RecorridosRecord> get serializer =>
      _$recorridosRecordSerializer;

  @BuiltValueField(wireName: 'Recorrido')
  String? get recorrido;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RecorridosRecordBuilder builder) =>
      builder..recorrido = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recorridos');

  static Stream<RecorridosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RecorridosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RecorridosRecord._();
  factory RecorridosRecord([void Function(RecorridosRecordBuilder) updates]) =
      _$RecorridosRecord;

  static RecorridosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRecorridosRecordData({
  String? recorrido,
}) {
  final firestoreData = serializers.toFirestore(
    RecorridosRecord.serializer,
    RecorridosRecord(
      (r) => r..recorrido = recorrido,
    ),
  );

  return firestoreData;
}
