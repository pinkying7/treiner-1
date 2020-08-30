import 'package:flutter/material.dart';

class RequestSession extends StatelessWidget {
  int step = 0;

  static String route = '/requestSession';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Request Session"),
      ),
      body: Column(children: <Widget>[RequestSessionStepOne(), MatButton()]),
    );
  }
}

class RequestSessionStepOne extends StatelessWidget {
  const RequestSessionStepOne({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      height: 500,
      width: double.maxFinite,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(7),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "What do you need a coach to help you with?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "This will be the title of your job. Please keep it short and accurately describe what you need.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              DropDownMenuTitles(),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Please select a training category.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [DropDownMenuTrainingCategory()],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Please describe the job",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.description),
                                      labelText: "Job Description",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.timer),
                                      labelText:
                                          "How many minutes you need to train for",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.attach_money),
                                      labelText: "Job Amount",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RequestSessionStepTwo extends StatelessWidget {
  const RequestSessionStepTwo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      height: 200,
      width: double.maxFinite,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(7),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Please select a training category.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DropDownMenuTrainingCategory(),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DropDownMenuTitles extends StatefulWidget {
  DropDownMenuTitles({Key key}) : super(key: key);
  @override
  _DropDownMenuTitlesState createState() => _DropDownMenuTitlesState();
}

class _DropDownMenuTitlesState extends State<DropDownMenuTitles> {
  String dropdownValue = "Select title";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24.0,
        elevation: 16,
        style: TextStyle(color: Colors.green[900]),
        underline: Container(
          height: 2,
          color: Colors.green[900],
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "Select title",
          "Ball Mystery",
          "Running with the Ball",
          "First touch",
          "Striking the ball (shooting or passing)",
          "1v1 (Defending or Attacking)",
          "GK Specific",
          "General fitness",
          "Strength, Speed and Agility"
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList());
  }
}

class DropDownMenuTrainingCategory extends StatefulWidget {
  DropDownMenuTrainingCategory({Key key}) : super(key: key);
  @override
  _DropDownMenuTrainingCategoryState createState() =>
      _DropDownMenuTrainingCategoryState();
}

class _DropDownMenuTrainingCategoryState
    extends State<DropDownMenuTrainingCategory> {
  String dropdownValue = "Virtual Training";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24.0,
        elevation: 16,
        style: TextStyle(color: Colors.green[900]),
        underline: Container(
          height: 2,
          color: Colors.green[900],
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "Virtual Training",
          "1 on 1",
          "Small Group",
          "Team Training",
          "Futsal",
          "Goal Keeper Training",
          "Sports Pyschology",
          "Sports Doctor",
          "Physiotherapist"
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList());
  }
}

class MatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showDialog(
            context: context,
            child: new AlertDialog(
              title: new Text("Job Posted!"),
              content: new Text(
                  "Your job has been posted for approval, You will receive email notification with-in 24 hours."),
              actions: [
                new FlatButton(
                  child: new Text('Close'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
      },
      color: Colors.green[900],
      splashColor: Colors.black,
      textColor: Colors.white,
      child: Icon(
        Icons.arrow_forward,
        size: 40,
      ),
      padding: EdgeInsets.all(16),
      shape: CircleBorder(),
    );
  }
}
