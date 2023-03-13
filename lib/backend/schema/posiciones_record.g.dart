// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posiciones_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PosicionesRecord> _$posicionesRecordSerializer =
    new _$PosicionesRecordSerializer();

class _$PosicionesRecordSerializer
    implements StructuredSerializer<PosicionesRecord> {
  @override
  final Iterable<Type> types = const [PosicionesRecord, _$PosicionesRecord];
  @override
  final String wireName = 'PosicionesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PosicionesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avrg;
    if (value != null) {
      result
        ..add('avrg')
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
  PosicionesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PosicionesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avrg':
          result.avrg = serializers.deserialize(value,
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

class _$PosicionesRecord extends PosicionesRecord {
  @override
  final String? displayName;
  @override
  final String? time;
  @override
  final String? avrg;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PosicionesRecord(
          [void Function(PosicionesRecordBuilder)? updates]) =>
      (new PosicionesRecordBuilder()..update(updates))._build();

  _$PosicionesRecord._({this.displayName, this.time, this.avrg, this.ffRef})
      : super._();

  @override
  PosicionesRecord rebuild(void Function(PosicionesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PosicionesRecordBuilder toBuilder() =>
      new PosicionesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PosicionesRecord &&
        displayName == other.displayName &&
        time == other.time &&
        avrg == other.avrg &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, displayName.hashCode), time.hashCode), avrg.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PosicionesRecord')
          ..add('displayName', displayName)
          ..add('time', time)
          ..add('avrg', avrg)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PosicionesRecordBuilder
    implements Builder<PosicionesRecord, PosicionesRecordBuilder> {
  _$PosicionesRecord? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _avrg;
  String? get avrg => _$this._avrg;
  set avrg(String? avrg) => _$this._avrg = avrg;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PosicionesRecordBuilder() {
    PosicionesRecord._initializeBuilder(this);
  }

  PosicionesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _time = $v.time;
      _avrg = $v.avrg;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PosicionesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PosicionesRecord;
  }

  @override
  void update(void Function(PosicionesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PosicionesRecord build() => _build();

  _$PosicionesRecord _build() {
    final _$result = _$v ??
        new _$PosicionesRecord._(
            displayName: displayName, time: time, avrg: avrg, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
