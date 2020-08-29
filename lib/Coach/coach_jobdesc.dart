import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';

class JobDescriptionPage extends StatelessWidget{
  static String route = '/jobdescription';
  @override
  Widget build(BuildContext context) {
    // Build Code Down Here
    return Scaffold(
      appBar: new AppBar(
        title: Text("Job Description Put Here"),
      ),
      body: Container(
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [Text("Janaki Shah", style: TextStyle(fontSize: 40.0))],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: Card(
                        child: ListTile(
                          title: Text("Job Complete Descrption here"),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    MyMenu(
                      title: "Contact Me",
                      icon: Icons.contact_phone,
                      shape: Colors.green,
                      route: null,
                    ),
                    MyMenu(
                      title: "Make a Bid",
                      icon: Icons.attach_money,
                      shape: Colors.green,
                      route: null,
                    )
                  ],
                )
              ],
            ),
          ),
      ),
    );
    // ignore: dead_code
    throw UnimplementedError();
  }
 
}