import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      //TODO 押下処理
                    },
                    icon: Icon(Icons.settings),
                  ),
                  IconButton(
                    onPressed: () {
                      //TODO 押下処理
                    },
                    icon: Icon(Icons.share),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
