import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryWidget extends StatefulWidget {
  HistoryWidget({Key key}) : super(key: key);

  @override
  _HistoryWidgetState createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: StreamBuilder<List<MoodRecordsRecord>>(
                stream: queryMoodRecordsRecord(
                  queryBuilder: (moodRecordsRecord) =>
                      moodRecordsRecord.orderBy('timestamp', descending: true),
                  limit: 10,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: Color(0xB7E09C34),
                        ),
                      ),
                    );
                  }
                  List<MoodRecordsRecord> listViewMoodRecordsRecordList =
                      snapshot.data;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewMoodRecordsRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewMoodRecordsRecord =
                          listViewMoodRecordsRecordList[listViewIndex];
                      return ListTile(
                        title: Text(
                          listViewMoodRecordsRecord.moodValue.toString(),
                          style: FlutterFlowTheme.title3,
                        ),
                        subtitle: Text(
                          listViewMoodRecordsRecord.text,
                          style: FlutterFlowTheme.subtitle2,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
