import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodBackgroundWidget extends StatefulWidget {
  MoodBackgroundWidget({Key key}) : super(key: key);

  @override
  _MoodBackgroundWidgetState createState() => _MoodBackgroundWidgetState();
}

class _MoodBackgroundWidgetState extends State<MoodBackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF058D0F), Color(0xFFE0BA34), Color(0xFF542617)],
            stops: [0, 0.5, 1],
            begin: AlignmentDirectional(0, -1),
            end: AlignmentDirectional(0, 1),
          ),
        ),
      ),
    );
  }
}
