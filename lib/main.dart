import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progress Indicators',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Progress Indicators'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Jumping dots'),
            JumpingDotsProgressIndicator(
              fontSize: 20.0,
            ),
            const SizedBox(height: 60.0),
            const Text('Heartbeat'),
            const SizedBox(height: 16.0),
            HeartbeatProgressIndicator(
              child: const Icon(Icons.home),
            ),
            const SizedBox(height: 60.0),
            const Text('Glowing'),
            GlowingProgressIndicator(
              child: const Icon(Icons.home),
            ),
            const SizedBox(height: 32.0),
            FadingText('Loading...'),
            const SizedBox(height: 32.0),
            JumpingText('Loading...'),
            const SizedBox(height: 32.0),
            ScalingText('Loading...'),
            const SizedBox(height: 32.0),
            CollectionSlideTransition(
              children: const <Widget>[
                Icon(Icons.android),
                Icon(Icons.apps),
                Icon(Icons.announcement),
              ],
            ),
            const SizedBox(height: 32.0),
            CollectionScaleTransition(
              children: const <Widget>[
                Icon(Icons.android),
                Icon(Icons.apps),
                Icon(Icons.announcement),
              ],
            ),
          ],
        ),
      ),
    );
  }
}