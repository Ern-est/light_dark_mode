import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:light_dark_mode/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Light   &  Dark   Theme!"))),
      body: Row(
        children: [
          //switch toggle
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 160),
              child: CupertinoSwitch(
                value:
                    Provider.of<ThemeProvider>(
                      context,
                      listen: false,
                    ).isDarkMode,
                onChanged:
                    (value) =>
                        Provider.of<ThemeProvider>(
                          context,
                          listen: false,
                        ).toggleTheme(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
