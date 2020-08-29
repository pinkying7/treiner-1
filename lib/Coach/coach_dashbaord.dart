import 'package:flutter/material.dart';
import 'package:treiner/Coach/coach_findjob.dart';
import 'package:treiner/Player/player_dashboard.dart';
import 'package:treiner/Sessions/session_main.dart';
import 'package:treiner/functions.dart';


class CoachDashboard extends StatefulWidget{
  @override
  _CoachDashboard createState() => _CoachDashboard();
}

class _CoachDashboard extends State<CoachDashboard>{
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return 
    Scaffold(
          appBar: new AppBar(
          title: Text('Coach Dashboard'),
         ),
         drawer: Drawer(
           child: ListView(
             children: <Widget>[
               UserAccountsDrawerHeader(
                 accountEmail: Text("admin@treiner.io"),
                 accountName: Text("Coach"),
                 decoration: BoxDecoration(
                   color: Colors.green
                 ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("C", style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),),
                  ),
                 ),
                 ListTile(title: Text("Player Dashboard"),trailing: Icon(Icons.arrow_forward), 
                 onTap: () {
                                                        Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PlayerDashboard()
                  ));
                 }
                 ),
                 ListTile(title: Text("Coach Dashboard"),trailing: Icon(Icons.arrow_forward),
                 onTap: () {
                                     Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CoachDashboard()
                  ));
                 }
                 )
             ],
           )
           ),
          body: Container(
            child: ListView(
              
              children: [
                MyMenu(
                  title: "Find a Job",
                  icon: Icons.work,
                  shape: Colors.green,
                  route: CoachFindJobs.route,
                ),
                MyMenu(
                  title: "Sessions",
                  icon: Icons.calendar_today,
                  shape: Colors.green,
                  route: CoachSessions.route,
                ),
                MyMenu(
                  title: "Contact us",
                  icon: Icons.email,
                  shape: Colors.green,
                  route: CoachContact.route,
                ),
              ],
          ),

        )
    );
  }
  
}

class CoachContact extends StatelessWidget {
  static String route = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Us')),
      body: Center(
        child: Text('Contact Us'),
      ),
    );
  }
}

