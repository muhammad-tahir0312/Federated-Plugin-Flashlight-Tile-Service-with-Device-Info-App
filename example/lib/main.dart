import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _deviceInfo = 'Loading...';

  @override
  void initState() {
    super.initState();
    _loadDeviceInfo();
  }

  Future<void> _loadDeviceInfo() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    final androidInfo = await deviceInfoPlugin.androidInfo;
    setState(() {
      _deviceInfo =
          'Model: ${androidInfo.model}\nAndroid Version: ${androidInfo.version.release}\n\nDeveloped by: Muhammad Tahir\nK214503:';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Device Info')),
        body: Center(child: Text(_deviceInfo)),
      ),
    );
  }
}