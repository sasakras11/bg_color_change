import 'package:flutter/material.dart';

//// this is widget, which contains 'Hello Flutter' and animated gif
class HelloMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Hello Flutter',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.green,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Suns-Kum'),
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(right: 30),
                child: Image(
                  image: new AssetImage("assets/gifs/giphy.gif"),
                ),
              ),
            )
          ],
        );
  }
}
