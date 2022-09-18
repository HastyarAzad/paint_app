import 'package:flutter/material.dart';

class Views extends StatefulWidget {
  @override
  _ViewsState createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  final snackBar = SnackBar(
                    content: Text("hello there!!!"),
                    backgroundColor: Colors.pinkAccent.shade200,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue,
                  ),
                  child: Text(
                    "Button",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: PageView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    Flexible(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent,
                        ),
                        child: Center(
                          child: RichText(
                            text: TextSpan(text: "my name is ", children: []),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent,
                        ),
                        child: Center(
                          child: Text("hello there"),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Center(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("This is a title"),
                                      RaisedButton(
                                        color: Colors.blue,
                                        child: Text(
                                          "press me",
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("This is a title"),
                                      RaisedButton(
                                        color: Colors.blue,
                                        child: Text(
                                          "press me",
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("This is a title"),
                                      RaisedButton(
                                        color: Colors.blue,
                                        child: Text(
                                          "press me",
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("This is a title"),
                                      RaisedButton(
                                        color: Colors.blue,
                                        child: Text(
                                          "press me",
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("This is a title"),
                                      RaisedButton(
                                        color: Colors.blue,
                                        child: Text(
                                          "press me",
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("This is a title"),
                                      RaisedButton(
                                        color: Colors.blue,
                                        child: Text(
                                          "press me",
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Flex(
                                    direction: Axis.vertical,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("This is a title"),
                                      RaisedButton(
                                        color: Colors.blue,
                                        child: Text(
                                          "press me",
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                        // width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Center(
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.white,
                                  ),
                                  iconSize: 50,
                                  onPressed: () {},
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10),
                                    child: Text("press me!!!"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10),
                                    child: Text("press me!!!"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10),
                                    child: Text("press me!!!"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10),
                                    child: Text("press me!!!"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10),
                                    child: Text("press me!!!"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10),
                                    child: Text("press me!!!"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10),
                                    child: Text("press me!!!"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10),
                                    child: Text("press me!!!"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10),
                                    child: Text("press me!!!"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10),
                                    child: Text("press me!!!"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello 11"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
