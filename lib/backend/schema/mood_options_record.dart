import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mood_options_record.g.dart';

abstract class MoodOptionsRecord
    implements Built<MoodOptionsRecord, MoodOptionsRecordBuilder> {
  static Serializer<MoodOptionsRecord> get serializer =>
      _$moodOptionsRecordSerializer;

  @nullable
  int get value;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MoodOptionsRecordBuilder builder) =>
      builder..value = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mood_options');

  static Stream<MoodOptionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MoodOptionsRecord._();
  factory MoodOptionsRecord([void Function(MoodOptionsRecordBuilder) updates]) =
      _$MoodOptionsRecord;

  static MoodOptionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMoodOptionsRecordData({
  int value,
}) =>
    serializers.toFirestore(MoodOptionsRecord.serializer,
        MoodOptionsRecord((m) => m..value = value));
