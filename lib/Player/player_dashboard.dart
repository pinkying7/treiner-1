import 'package:flutter/material.dart';
import 'package:treiner/Coach/coach_dashbaord.dart';
import 'package:treiner/Player/player_findcoach.dart';
import 'package:treiner/functions.dart';


class PlayerDashboard extends StatelessWidget{
  static String route = '/playerdashboard';
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return 
    Scaffold(
          appBar: new AppBar(
          title: Text('Player Dashboard'),
         ),
         drawer: Drawer(
           child: ListView(
             children: <Widget>[
               UserAccountsDrawerHeader(
                 accountEmail: Text("admin@treiner.io"),
                 accountName: Text("Coach"),
                 decoration: BoxDecoration(
                   color:Colors.green
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
                  title: "Find a Coach",
                  icon: Icons.local_library,
                  shape: Colors.green,
                  route: FindCoach.route,
                ),
                MyMenu(
                  title: "Request a Session",
                  icon: Icons.book,
                  shape: Colors.green,
                  route: null,
                ),
                MyMenu(
                  title: "Session",
                  icon: Icons.business_center,
                  shape: Colors.green,
                  route: null,
                ),
                 MyMenu(
                  title: "Contact us",
                  icon: Icons.contacts,
                  shape: Colors.green,
                  route: null,
                ),

              ],
          ),

        )
    );
  }
  
}