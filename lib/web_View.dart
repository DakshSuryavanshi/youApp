import 'package:flutter/material.dart';
// Delete the package:webview_flutter/webview_flutter.dart import
import 'src/web_view_stack.dart';  // Add this import

void main() {
  runApp(
    const MaterialApp(
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YOU.ai'),
      ),
      body: const WebViewStack(),   // Replace the WebView widget with WebViewStack
    );
  }
}