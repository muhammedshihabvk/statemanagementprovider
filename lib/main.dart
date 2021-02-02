import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementprovider/Page1.dart';
import 'package:statemanagementprovider/provider/providerDemo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderDemo(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Page1(),
      ),
    );
  }
}
