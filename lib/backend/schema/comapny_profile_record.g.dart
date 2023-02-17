// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comapny_profile_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ComapnyProfileRecord> _$comapnyProfileRecordSerializer =
    new _$ComapnyProfileRecordSerializer();

class _$ComapnyProfileRecordSerializer
    implements StructuredSerializer<ComapnyProfileRecord> {
  @override
  final Iterable<Type> types = const [
    ComapnyProfileRecord,
    _$ComapnyProfileRecord
  ];
  @override
  final String wireName = 'ComapnyProfileRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ComapnyProfileRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.companyName;
    if (value != null) {
      result
        ..add('CompanyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyLogo;
    if (value != null) {
      result
        ..add('CompanyLogo')
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
  ComapnyProfileRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComapnyProfileRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CompanyName':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CompanyLogo':
          result.companyLogo = serializers.deserialize(value,
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

class _$ComapnyProfileRecord extends ComapnyProfileRecord {
  @override
  final String? companyName;
  @override
  final String? companyLogo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ComapnyProfileRecord(
          [void Function(ComapnyProfileRecordBuilder)? updates]) =>
      (new ComapnyProfileRecordBuilder()..update(updates))._build();

  _$ComapnyProfileRecord._({this.companyName, this.companyLogo, this.ffRef})
      : super._();

  @override
  ComapnyProfileRecord rebuild(
          void Function(ComapnyProfileRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComapnyProfileRecordBuilder toBuilder() =>
      new ComapnyProfileRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComapnyProfileRecord &&
        companyName == other.companyName &&
        companyLogo == other.companyLogo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, companyName.hashCode), companyLogo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComapnyProfileRecord')
          ..add('companyName', companyName)
          ..add('companyLogo', companyLogo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ComapnyProfileRecordBuilder
    implements Builder<ComapnyProfileRecord, ComapnyProfileRecordBuilder> {
  _$ComapnyProfileRecord? _$v;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _companyLogo;
  String? get companyLogo => _$this._companyLogo;
  set companyLogo(String? companyLogo) => _$this._companyLogo = companyLogo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ComapnyProfileRecordBuilder() {
    ComapnyProfileRecord._initializeBuilder(this);
  }

  ComapnyProfileRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyName = $v.companyName;
      _companyLogo = $v.companyLogo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComapnyProfileRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComapnyProfileRecord;
  }

  @override
  void update(void Function(ComapnyProfileRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComapnyProfileRecord build() => _build();

  _$ComapnyProfileRecord _build() {
    final _$result = _$v ??
        new _$ComapnyProfileRecord._(
            companyName: companyName, companyLogo: companyLogo, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
