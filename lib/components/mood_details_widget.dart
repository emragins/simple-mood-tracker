import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodDetailsWidget extends StatefulWidget {
  MoodDetailsWidget({
    Key key,
    this.moodRecord,
  }) : super(key: key);

  final MoodRecordsRecord moodRecord;

  @override
  _MoodDetailsWidgetState createState() => _MoodDetailsWidgetState();
}

class _MoodDetailsWidgetState extends State<MoodDetailsWidget> {
  TextEditingController textController1;
  TextEditingController textController2;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(
        text: dateTimeFormat('MMMMEEEEd', widget.moodRecord.timestamp));
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        TextFormField(
          controller: textController1,
          obscureText: false,
          decoration: InputDecoration(
            hintText: 'When',
            hintStyle: FlutterFlowTheme.bodyText1,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
          ),
          style: FlutterFlowTheme.bodyText1,
          keyboardType: TextInputType.datetime,
        ),
        TextFormField(
          controller: textController2,
          obscureText: false,
          decoration: InputDecoration(
            hintText: 'What\'s going on',
            hintStyle: FlutterFlowTheme.bodyText1,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
          ),
          style: FlutterFlowTheme.bodyText1,
          maxLines: 30,
          keyboardType: TextInputType.multiline,
        )
      ],
    );
  }
}
