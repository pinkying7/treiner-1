import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';

class BrowseJobs extends StatelessWidget {
  static String route = '/browsejob';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Browse  Jobs')),
        body: Container(
            child: ListView(
          children: [
            JobCard(
              title: "Winger Specific Training",
              price: "\$20.00",
            ),
            JobCard(
              title: "Ball Mystery for 10 Year Old Boy",
              price: "\$40.00",
            ),
            JobCard(
              title: "General Fitness",
              price: "\$10.00",
            ),
            JobCard(
              title: "General Fitness",
              price: "\$10.00",
            ),
            JobCard(
              title: "General Fitness",
              price: "\$10.00",
            ),
            JobCard(
              title: "General Fitness",
              price: "\$10.00",
            ),
          ],
        )));
  }
}
