import 'package:flutter/material.dart';
import 'package:treiner/Player/player_book.dart';
import 'package:treiner/functions.dart';

class FindCoach extends StatelessWidget{
  static String route = '/findcoach';
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Find a Coach")
       ),

       body: Container(
         child: Column(
           children: [
             Text(
               "Find a Coach",
               style: TextStyle(
                 fontSize: 24.0
               ),
             ),
             Column(
               children: [
                 TextFormField(
                   decoration: InputDecoration(
                     labelText: "Distance"
                   )
                 )
               ],
             ),
                          Column(
               children: [
                 TextFormField(
                   decoration: InputDecoration(
                     labelText: "Location"
                   )
                 )
               ],
             ),
                          Column(
               children: [
                 TextFormField(
                   decoration: InputDecoration(
                     labelText: "Budget"
                   )
                 )
               ],
             ),
                          Column(
               children: [
                 TextFormField(
                   decoration: InputDecoration(
                     labelText: "Session Type"
                   )
                 )
               ],
             ),
             MyMenu(
                      title: "Search",
                      icon: Icons.search,
                      shape: Colors.green,
                      route: SelectCoach.route
             )
           ], 
         )
       ),
     );    
  }

}

class SelectCoach extends StatelessWidget
{
    static String route = '/selectcoach';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select a Coach"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Select Coach"),
            Column(
              children: [
                    JobListing(
                      title: "David Andrews",
                      trailing: "Sports",
                      subtitle: "CAA",
                      route: BookCoach.route,
                    ),
                    JobListing(
                      title: "Julie Schliefert",
                      trailing: "Gym Coach",
                      subtitle: "EA",
                      route: BookCoach.route,
                    ),  
                    JobListing(
                      title: "Julia Grinblat",
                      trailing: "Football Coach",
                      subtitle: "EAS",
                      route: BookCoach.route,
                    ),
                  ]
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
  
}