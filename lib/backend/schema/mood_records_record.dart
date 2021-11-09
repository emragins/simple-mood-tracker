import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mood_records_record.g.dart';

abstract class MoodRecordsRecord
    implements Built<MoodRecordsRecord, MoodRecordsRecordBuilder> {
  static Serializer<MoodRecordsRecord> get serializer =>
      _$moodRecordsRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'mood_value')
  int get moodValue;

  @nullable
  String get text;

  @nullable
  DateTime get timestamp;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MoodRecordsRecordBuilder builder) => builder
    ..moodValue = 0
    ..text = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mood_records');

  static Stream<MoodRecordsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MoodRecordsRecord._();
  factory MoodRecordsRecord([void Function(MoodRecordsRecordBuilder) updates]) =
      _$MoodRecordsRecord;

  static MoodRecordsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMoodRecordsRecordData({
  DocumentReference user,
  int moodValue,
  String text,
  DateTime timestamp,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        MoodRecordsRecord.serializer,
        MoodRecordsRecord((m) => m
          ..user = user
          ..moodValue = moodValue
          ..text = text
          ..timestamp = timestamp
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
