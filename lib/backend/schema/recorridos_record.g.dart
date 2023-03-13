// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recorridos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecorridosRecord> _$recorridosRecordSerializer =
    new _$RecorridosRecordSerializer();

class _$RecorridosRecordSerializer
    implements StructuredSerializer<RecorridosRecord> {
  @override
  final Iterable<Type> types = const [RecorridosRecord, _$RecorridosRecord];
  @override
  final String wireName = 'RecorridosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RecorridosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.recorrido;
    if (value != null) {
      result
        ..add('Recorrido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  RecorridosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecorridosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Recorrido':
          result.recorrido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$RecorridosRecord extends RecorridosRecord {
  @override
  final String? recorrido;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RecorridosRecord(
          [void Function(RecorridosRecordBuilder)? updates]) =>
      (new RecorridosRecordBuilder()..update(updates))._build();

  _$RecorridosRecord._({this.recorrido, this.ffRef}) : super._();

  @override
  RecorridosRecord rebuild(void Function(RecorridosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecorridosRecordBuilder toBuilder() =>
      new RecorridosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecorridosRecord &&
        recorrido == other.recorrido &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, recorrido.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecorridosRecord')
          ..add('recorrido', recorrido)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RecorridosRecordBuilder
    implements Builder<RecorridosRecord, RecorridosRecordBuilder> {
  _$RecorridosRecord? _$v;

  String? _recorrido;
  String? get recorrido => _$this._recorrido;
  set recorrido(String? recorrido) => _$this._recorrido = recorrido;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RecorridosRecordBuilder() {
    RecorridosRecord._initializeBuilder(this);
  }

  RecorridosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recorrido = $v.recorrido;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecorridosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecorridosRecord;
  }

  @override
  void update(void Function(RecorridosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecorridosRecord build() => _build();

  _$RecorridosRecord _build() {
    final _$result =
        _$v ?? new _$RecorridosRecord._(recorrido: recorrido, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
