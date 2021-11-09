import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Capture2Widget extends StatefulWidget {
  Capture2Widget({
    Key key,
    this.moodValue,
    this.ae,
  }) : super(key: key);

  final int moodValue;
  final String ae;

  @override
  _Capture2WidgetState createState() => _Capture2WidgetState();
}

class _Capture2WidgetState extends State<Capture2Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
