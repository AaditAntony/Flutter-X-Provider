import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerxflutter/providerModel/cartmodel.dart';
import 'package:providerxflutter/screens/providerXshop.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProviderXshop(),
    );
  }
}
