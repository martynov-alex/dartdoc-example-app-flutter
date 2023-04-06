import 'package:dartdoc_example_flutter/feature/presentation/screens/feature_root_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DartDocExample());
}

/// Точка входа в приложение.
class DartDocExample extends StatelessWidget {
  /// @nodoc.
  const DartDocExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home:
          const MyHomePage(title: 'Приложение для демонстрации работы dartdoc'),
    );
  }
}

/// Главная страница приложения.
class MyHomePage extends StatefulWidget {
  /// @nodoc.
  const MyHomePage({super.key, required this.title});

  /// Заголовок в AppBar.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Приложение для демонстрации работы dartdoc'),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<FeatureRootScreen>(
                  builder: (context) => const FeatureRootScreen(),
                ),
              ),
              child: const Text('Перейти на экран фичи'),
            ),
            const SizedBox(height: 100),
            const Text(
              'Столько раз ты нажал на кнопку ➕ :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Увеличить счетчик',
        child: const Icon(Icons.add),
      ),
    );
  }
}
