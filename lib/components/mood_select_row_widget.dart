import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodSelectRowWidget extends StatefulWidget {
  MoodSelectRowWidget({
    Key key,
    this.value,
  }) : super(key: key);

  final int value;

  @override
  _MoodSelectRowWidgetState createState() => _MoodSelectRowWidgetState();
}

class _MoodSelectRowWidgetState extends State<MoodSelectRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(),
      child: Text(
        'Hello World',
        style: FlutterFlowTheme.bodyText1,
      ),
    );
  }
}
