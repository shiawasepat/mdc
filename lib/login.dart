import 'package:flutter/material.dart';
import 'package:mdc_100/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  // Add text editing controllers (MDC-101)
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/kana.png', width: 250, height: 250),
                const SizedBox(height: 16.0),
                Text('KANA', style: Theme.of(context).textTheme.headlineSmall),
              ],
            ),
            const SizedBox(height: 50.0),
            // User TextField
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                // filled: true,
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 50.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                // filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    // Clear the text fields
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: kanaRed,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  child: const Text('Next'),
                  onPressed: () {
                    Navigator.pop(context);
                    // Proceed to the next step
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: kanaRed,
                    backgroundColor: kanaLightRed,
                    elevation: 8.0,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
