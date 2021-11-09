import '../capture2/capture2_widget.dart';
import '../components/mood_select_row_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Capture1Widget extends StatefulWidget {
  Capture1Widget({Key key}) : super(key: key);

  @override
  _Capture1WidgetState createState() => _Capture1WidgetState();
}

class _Capture1WidgetState extends State<Capture1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF058D0F),
                  Color(0xFFE0BA34),
                  Color(0xFF542617)
                ],
                stops: [0, 0.5, 1],
                begin: AlignmentDirectional(0, -1),
                end: AlignmentDirectional(0, 1),
              ),
            ),
            child: Builder(
              builder: (context) {
                final moodvalue = functions.getMoodOptions()?.toList() ?? [];
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(moodvalue.length, (moodvalueIndex) {
                    final moodvalueItem = moodvalue[moodvalueIndex];
                    return InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Capture2Widget(
                              moodValue: moodvalueItem,
                            ),
                          ),
                        );
                      },
                      child: MoodSelectRowWidget(
                        value: moodvalueItem,
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
