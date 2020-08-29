import 'package:flutter/material.dart';

// Job Listing Class
class JobListing extends StatelessWidget {
  const JobListing(
      {Key key, this.title, this.subtitle, this.trailing, this.route})
      : super(key: key);

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
        ));
  }
}

String setAppBarTitle(String title) {
  return title;
}

class JobCard extends StatelessWidget {
  JobCard({this.title, this.icon, this.price, this.pageroute, this.shape});

  final String title;
  final IconData icon;
  final String price;
  final MaterialColor shape;
  final MaterialPageRoute pageroute;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          splashColor: Colors.green[900],
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            width: 400,
            height: 200,
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 70.0,
                      backgroundColor: Colors.green[900],
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/profile-none.png'),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(title,
                                style: new TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.green[900],
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(price,
                                style: new TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.green[900],
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.location_on, size: 20),
                                Text("Melbourne Australia",
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.green[900],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.calendar_today, size: 20),
                                Text("Sun, 16th August 2020",
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.green[900],
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
    /*Center(
      child: Card(
          child: InkWell(
        splashColor: Colors.green[900].withAlpha(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(title,
                  style:
                      new TextStyle(fontSize: 18.0, color: Colors.green[900])),
              leading: new Icon(
                icon,
                size: 80.0,
                color: shape,
              ),
              subtitle: Text(subtitle),
              trailing: CircleAvatar(
                backgroundImage: NetworkImage("assets/avatar.jpg"),
              ),
            ),
          ],
        ),
      )),
    );*/
    throw UnimplementedError();
  }
}
