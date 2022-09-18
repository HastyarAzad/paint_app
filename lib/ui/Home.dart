import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  var mainValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Application"),
        centerTitle: false,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 40),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: Icon(Icons.image),
                    onPressed: () => {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.remove),
                ),
                Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.addchart_outlined)),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Hello There!!!",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 23,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: 200,
            height: 200,
            child: InkWell(
              child: Center(
                child: DropDownWidget(mainValue: mainValue),
              ),
            ),
          ),
          // TextButton(onPressed: null, child: Text("hello")),
          InkWell(
            child: RaisedButton(
              child: Text("Press me"),
              onPressed: () => null,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onTap: () => print("Pressed"),
          ),
          Container(
            margin: EdgeInsets.all(5),
            width: 200,
            // color: Colors.black12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () => print("going to next page"),
              splashColor: Colors.orangeAccent[100],
              focusColor: Colors.orangeAccent[100],
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Continue to next page"),
                  Icon(Icons.arrow_right_sharp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DropDownWidget extends StatefulWidget {
  DropDownWidget({
    Key key,
    @required this.mainValue,
  }) : super(key: key);

  int mainValue;

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: widget.mainValue,
      items: [
        DropdownMenuItem(
          child: Text("First Item"),
          value: 1,
        ),
        DropdownMenuItem(
          child: Text("Second Item"),
          value: 2,
        ),
        DropdownMenuItem(child: Text("Third Item"), value: 3),
        DropdownMenuItem(child: Text("Fourth Item"), value: 4)
      ],
      onChanged: (value) {
        setState(() {
          widget.mainValue = value;
          print("This is a great thing");
        });
      },
    );
  }
}
