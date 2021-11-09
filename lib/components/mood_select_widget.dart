import '../backend/backend.dart';
import '../components/mood_background_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodSelectWidget extends StatefulWidget {
  MoodSelectWidget({
    Key key,
    this.moodRecord,
  }) : super(key: key);

  final MoodRecordsRecord moodRecord;

  @override
  _MoodSelectWidgetState createState() => _MoodSelectWidgetState();
}

class _MoodSelectWidgetState extends State<MoodSelectWidget> {
  @override
  Widget build(BuildContext context) {
    return MoodBackgroundWidget();
  }
}
