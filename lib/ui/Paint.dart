import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Paint_Offset_pairs {
  Paint paint;
  Offset offset;

  Paint_Offset_pairs({this.paint, this.offset});
}

class Painting extends StatefulWidget {
  @override
  _PaintingState createState() => _PaintingState();
}

class _PaintingState extends State<Painting> {
  var ourValue = 5.0;
  List<Paint_Offset_pairs> points = [];
  Color selectedColor;
  double strokeWidth;

  void selectColor() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: BlockPicker(
              pickerColor: selectedColor,
              onColorChanged: (color) {
                setState(() {
                  selectedColor = color;
                });
              },
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: const Text('Got it'),
              onPressed: () {
                // setState(() => color = selectedColor);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    selectedColor = Colors.black;
    strokeWidth = 2.0;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("good app"),
      ),
      body: Container(
        color: Colors.blueGrey,
        padding: EdgeInsets.all(30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            children: [
              Flexible(
                flex: 16,
                child: Container(
                  constraints: BoxConstraints.expand(),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onPanDown: (details) {
                      this.setState(() {
                        points.add(Paint_Offset_pairs(
                            paint: Paint()
                              ..color = selectedColor
                              ..strokeWidth = strokeWidth
                              ..isAntiAlias = true
                              ..strokeCap = StrokeCap.round,
                            offset: details.localPosition));
                      });
                    },
                    onPanUpdate: (details) {
                      this.setState(() {
                        points.add(Paint_Offset_pairs(
                            paint: Paint()
                              ..color = selectedColor
                              ..strokeWidth = strokeWidth
                              ..isAntiAlias = true
                              ..strokeCap = StrokeCap.round,
                            offset: details.localPosition));
                      });
                    },
                    onPanEnd: (details) {
                      this.setState(() {
                        points.add(null);
                      });
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CustomPaint(
                        painter:
                            MyPainter(points: points, color: selectedColor),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Flexible(
                flex: 2,
                child: Container(
                  constraints: BoxConstraints.expand(),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.color_lens),
                          onPressed: () {
                            selectColor();
                          }),
                      Expanded(
                        child: Slider(
                          value: strokeWidth,
                          max: 20,
                          min: 1,
                          onChanged: (value) {
                            setState(() {
                              strokeWidth = value;
                            });
                          },
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.reset_tv),
                          onPressed: () {
                            setState(() {
                              points.clear();
                            });
                          })
                    ],
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

class MyPainter extends CustomPainter {
  List<Paint_Offset_pairs> points;
  Color color;
  MyPainter({this.points, this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint background = Paint()..color = Colors.white;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(
            points[i].offset, points[i + 1].offset, points[i].paint);
        // canvas.drawCircle(points[i], 12, paint);
      } else if (points[i] != null && points[i + 1] == null) {
        canvas.drawPoints(
            PointMode.points, [points[i].offset], points[i].paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
