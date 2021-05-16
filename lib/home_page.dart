import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color _primaryColor = Color(0xFFe0e0e0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _primaryColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _embossShape(),
                SizedBox(
                  width: 50,
                ),
                _flatShape(),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _convexShape(),
                SizedBox(
                  width: 50,
                ),
                _concaveShape(),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 300,
              height: 180,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: _primaryColor,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFffffff),
                    offset: Offset(-5, -5),
                    blurRadius: 5,
                  ),
                  BoxShadow(
                    color: Color(0xFFbebebe),
                    offset: Offset(5, 5),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Text(
                'YAY!',
                style: TextStyle(
                  fontSize: 45,
                  color: _primaryColor,
                  fontWeight: FontWeight.w700,
                  shadows: [
                    BoxShadow(
                      color: Color(0xFFffffff),
                      offset: Offset(-2, -2),
                      blurRadius: 2,
                    ),
                    BoxShadow(
                      color: Color(0xFFbebebe),
                      offset: Offset(2, 2),
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Concave
  Column _concaveShape() {
    return Column(
      children: [
        Text('Concave'),
        SizedBox(
          height: 16,
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: _primaryColor,
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFcacaca),
                Color(0xFFf0f0f0),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFffffff),
                offset: Offset(-5, -5),
                blurRadius: 5,
              ),
              BoxShadow(
                color: Color(0xFFbebebe),
                offset: Offset(5, 5),
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Convex
  Column _convexShape() {
    return Column(
      children: [
        Text('Convex'),
        SizedBox(
          height: 16,
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: _primaryColor,
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFf0f0f0),
                Color(0xFFcacaca),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFffffff),
                offset: Offset(-5, -5),
                blurRadius: 5,
              ),
              BoxShadow(
                color: Color(0xFFbebebe),
                offset: Offset(5, 5),
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Flat Shape
  Column _flatShape() {
    return Column(
      children: [
        Text('Flat'),
        SizedBox(
          height: 16,
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: _primaryColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFffffff),
                offset: Offset(-5, -5),
                blurRadius: 5,
              ),
              BoxShadow(
                color: Color(0xFFbebebe),
                offset: Offset(5, 5),
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Emboss
  Column _embossShape() {
    return Column(
      children: [
        Text('Emboss'),
        SizedBox(
          height: 16,
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: _primaryColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFffffff),
                offset: Offset(5, 5),
                blurRadius: 5,
              ),
              BoxShadow(
                color: Color(0xFFbebebe),
                offset: Offset(-5, -5),
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
