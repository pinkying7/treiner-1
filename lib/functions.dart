import 'package:flutter/material.dart';

// Job Listing Class
class JobListing extends StatelessWidget {
  const JobListing({
    Key key,
    this.title,
    this.subtitle,
    this.trailing,
    this.route
  }) : super(key: key);

final String title;
final String subtitle;
final String trailing;
final String route;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, route),
          child: ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: Text(trailing),
            leading: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}


// MyMenu Class
class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.shape, this.route});

  final String title;
  final IconData icon;
  final MaterialColor shape;
  final String route;

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Card(
      margin: EdgeInsets.all(9.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        splashColor: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 50.0,
                color: shape,
              ),
              Text(title, style: new TextStyle(fontSize: 24.0))
            ],
          ),
        ),
      )
    );
  }
}

String setAppBarTitle(String title) {
  return title;
}