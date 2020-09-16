import 'package:flutter/material.dart';
import 'package:flutter_test_app/message.dart';
import 'util/random_color.dart';

class BackgroundWidget extends StatefulWidget {
  @override
  _BackgroundWidgetState createState() => _BackgroundWidgetState();
}

class _BackgroundWidgetState extends State<BackgroundWidget> {
  var isGradient = false;
  var btnText = 'gradient background';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            setState((){});
          },
          child: isGradient
              ? _buildGradientBackgroundContainer()
              : _buildSolidBackgroundContainer()),
      floatingActionButton: MaterialButton(
        onPressed: () {
          setState(() {
            isGradient = !isGradient;
            btnText = isGradient ? 'solid background' : 'gradient background';
          });
        },
        child: _buildButtonContainer(),
      ),
    );
  }

  Widget _buildGradientBackgroundContainer() => Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [RandomColor.getHex(), RandomColor.getHex()],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: HelloMessage(),
        ),
      );

  Widget _buildSolidBackgroundContainer() => Container(
        width: double.infinity,
        height: double.infinity,
        color: RandomColor.getHex(),
        child: Center(
          child: HelloMessage(),
        ),
      );


  Widget _buildButtonContainer() => Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber,
        ),
        padding: const EdgeInsets.all(13.0),
        margin: const EdgeInsets.all(0.0),
        child: Text(
          btnText,
          style: TextStyle(
              color: Colors.green,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Suns-Kum'),
        ),
      );
}
