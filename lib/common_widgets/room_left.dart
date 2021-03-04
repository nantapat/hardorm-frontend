import 'package:flutter/material.dart';

const TWO_PI = 3.14 * 2;

class Roomleft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = 200.0;
    return Center(
      child: Container(
          width: size,
          height: size,
          // color: Colors.grey[200],
          child: Stack(
            children: [
              ShaderMask(
                shaderCallback: (rect) {
                  return SweepGradient(
                          startAngle: 0.0,
                          endAngle:  TWO_PI,
                          stops: [0.75,0.0],
                          //0.0 ,0.5, 0.5, 1.0
                          center: Alignment.center,
                          colors: [Colors.blue.withAlpha(55), Colors.indigo])
                      .createShader(rect);
                },
                child: Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Center(
                child: Container(
                    width: size - 20,
                    height: size - 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 70, color: Colors.indigo,fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ],
          )),
    );
  }
}
