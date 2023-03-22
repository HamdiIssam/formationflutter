
import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({super.key});

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Client'),
      ),
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
Text('nom'),
Text('telephone'),
Text('Password')
        ],
      )
      ),
    );
  }
}