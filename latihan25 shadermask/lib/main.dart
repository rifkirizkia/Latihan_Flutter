import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gradient Opacity"),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)
                  .createShader(
                      Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
                width: 350,
                image: NetworkImage(
                    "https://1.bp.blogspot.com/-o6Kzn_PUUJQ/Xa19MI4XbtI/AAAAAAAAFgo/ePqpDVxXtagsEECPFggMtNZksT3JyKcEQCLcBGAsYHQ/s1600/1.png")),
          ),
        ),
      ),
    );
  }
}
