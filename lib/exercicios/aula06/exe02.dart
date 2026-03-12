import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _receberNotificacoes = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Olá Flutter')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _receberNotificacoes,
                onChanged: (bool? value) {
                  setState(() {
                    _receberNotificacoes = value ?? false;
                  });
                },
              ),
              const Text(
                "Receber Notificações",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 30),
              Icon(
                _receberNotificacoes
                    ? Icons.notifications_active
                    : Icons.notifications_none,
                size: 80,
                color: Colors.deepPurple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
