import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'comapny_profile_record.g.dart';

abstract class ComapnyProfileRecord
    implements Built<ComapnyProfileRecord, ComapnyProfileRecordBuilder> {
  static Serializer<ComapnyProfileRecord> get serializer =>
      _$comapnyProfileRecordSerializer;

  @BuiltValueField(wireName: 'CompanyName')
  String? get companyName;

  @BuiltValueField(wireName: 'CompanyLogo')
  String? get companyLogo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ComapnyProfileRecordBuilder builder) => builder
    ..companyName = ''
    ..companyLogo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ComapnyProfile');

  static Stream<ComapnyProfileRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ComapnyProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ComapnyProfileRecord._();
  factory ComapnyProfileRecord(
          [void Function(ComapnyProfileRecordBuilder) updates]) =
      _$ComapnyProfileRecord;

  static ComapnyProfileRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createComapnyProfileRecordData({
  String? companyName,
  String? companyLogo,
}) {
  final firestoreData = serializers.toFirestore(
    ComapnyProfileRecord.serializer,
    ComapnyProfileRecord(
      (c) => c
        ..companyName = companyName
        ..companyLogo = companyLogo,
    ),
  );

  return firestoreData;
}
