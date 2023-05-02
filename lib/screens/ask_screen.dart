import 'package:flutter/material.dart';

class AskScreen extends StatefulWidget {
  const AskScreen({super.key});

  @override
  State<AskScreen> createState() => _AskScreenState();
}

class _AskScreenState extends State<AskScreen> {
  //using this controller to get user input
  final _textController = TextEditingController();

  //storring user text in put into a vaiable
  String userAsk = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 197, 174, 124),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    userAsk,
                    style: const TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: _textController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                hintText: ('Ask Gita'),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController.clear();
                  },
                  icon: const Icon(Icons.clear_sharp),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  userAsk = _textController.text;
                });
              },
              color: Colors.white,
              child: const Text(
                'Ask',
                style: TextStyle(color: Color.fromARGB(255, 197, 174, 124)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
