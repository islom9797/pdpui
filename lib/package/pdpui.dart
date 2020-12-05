import 'package:pdpui/main.dart';
import 'package:flutter/material.dart';
class PdpUi extends StatefulWidget {
  @override
  _PdpUiState createState() => _PdpUiState();
}

class _PdpUiState extends State<PdpUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Text("User",style: TextStyle(color: Colors.red),),
            Text("Interface",style: TextStyle(color: Colors.green),),
          ],
        ),
      ),
    );
  }
}
