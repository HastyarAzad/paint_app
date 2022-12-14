import 'package:flutter/material.dart';

class AddList extends StatefulWidget {
  @override
  _AddListState createState() => _AddListState();
}

class _AddListState extends State<AddList> {
  List<int> boxes = [
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    100,
    200,
    300,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    100,
    200,
    300,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    100,
    200,
    300,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    100,
    200,
    300,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    100,
    200,
    300,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    100,
    200,
    300,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    100,
    200,
    300,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    100,
    200,
    300,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    100,
    200,
    300,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.lightBlueAccent,
          child: Stack(
            children: [
              ListView.builder(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.vertical,
                addAutomaticKeepAlives: false,
                itemCount: boxes.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.all(5),
                    child: ListTile(
                      // dense: true,
                      title: Text("Hastyar $index"),
                      subtitle: Text("Vikings"),
                      leading: Icon(Icons.ramen_dining),
                      trailing: Icon(Icons.hourglass_bottom),
                      // contentPadding: EdgeInsets.all(10),
                      // tileColor: Colors.green.shade100,
                      onTap: () {},
                      selected: (index == 3) ? true : false,
                    ),
                  );
                },
              ),
              Positioned(
                bottom: 10,
                right: 20,
                child: FloatingActionButton(
                  onPressed: () {
                    this.setState(() {
                      // boxes.add(Container(
                      //   height: 50,
                      //   color: Colors.amber[600],
                      //   child: const Center(child: Text('Entry A')),
                      // ));
                    });
                  },
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
