import 'package:flutter/material.dart';
import 'package:treiner/Coach/coach_jobdesc.dart';
import 'package:treiner/Coach/coach_dashbaord.dart';
import 'package:treiner/Coach/coach_findjob.dart';
import 'package:treiner/Coach/coach_browse.dart';
import 'package:treiner/Player/player_dashboard.dart';
import 'package:treiner/Player/player_findcoach.dart';
import 'package:treiner/Sessions/session_completed.dart';
import 'package:treiner/Sessions/session_meetings.dart';
import 'package:treiner/Sessions/session_upcoming.dart';
import 'package:treiner/home.dart';
import 'Coach/coach_offers.dart';
import 'Player/player_book.dart';
import 'Sessions/session_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.green[900],
      ),
      home: LandingPage(),
      routes: {
        CoachFindJobs.route: (context) => CoachFindJobs(),
        CoachSessions.route: (context) => CoachSessions(),
        CoachContact.route: (context) => CoachContact(),
        MyJobs.route: (context) => MyJobs(),
        BrowseJobs.route: (context) => BrowseJobs(),
        JobDescriptionPage.route: (context) => JobDescriptionPage(),
        SessionCompleted.route: (context) => SessionCompleted(),
        SessionMeetings.route: (context) => SessionMeetings(),
        SessionUpcoming.route: (context) => SessionUpcoming(),
        MeetingID.route: (context) => MeetingID(),
        CompletedMeetingID.route: (context) => CompletedMeetingID(),
        UpcomingMeetingID.route: (context) => UpcomingMeetingID(),
        FindCoach.route: (context) => FindCoach(),
        SelectCoach.route: (context) => SelectCoach(),
        BookCoach.route: (context) => BookCoach(),
        BookSession.route: (context) => BookSession(),
        PlayerDashboard.route: (context) => PlayerDashboard(),
      },
    );
  }
}
