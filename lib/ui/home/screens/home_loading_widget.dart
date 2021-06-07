import 'package:flutter/material.dart';

class HomeLoadingScreen extends StatelessWidget {
  const HomeLoadingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(
          valueColor:
              new AlwaysStoppedAnimation<Color>(Theme.of(context).accentColor),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
