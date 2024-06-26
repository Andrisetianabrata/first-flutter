import 'package:flutter/material.dart';
import 'package:first_app/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: LightOwlTheme.LightTheme,
      darkTheme: LightOwlTheme.DarkTheme,
      themeMode: ThemeMode.system,
      home: const AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  get padding => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(".appable/"),
        leading: const Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_shopping_cart_outlined),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Heading",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "sub-Heading",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Paragraph",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Padding(padding: EdgeInsets.all(2.0)),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            const Padding(padding: EdgeInsets.all(2.0)),
            OutlinedButton(
                onPressed: () {}, child: const Text("Outlined Button")),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage('assets/images/image.png')),
            )
          ],
        ),
      ),
    );
  }
}
