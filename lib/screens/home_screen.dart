import 'package:ask_gita/components/bottom_nav_bar.dart';
import 'package:ask_gita/screens/ask_screen.dart';
import 'package:ask_gita/screens/learn_screen.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;

  void playAudioInLoop() async {
    await audioPlayer.setSourceUrl("/assets/audio/flute.mp3");
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    await audioPlayer.play(AssetSource("/assets/audio/flute.mp3"));
    setState(() {
      isPlaying = true;
    });
  }

  @override
  void initState() {
    super.initState();
    playAudioInLoop();
  }

  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

//this selected index is to control the botton navbar
  int _selectedIndex = 0;

  //this method will update our selected index
  //when the user taps on the botton bar

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _screen = [
    //ask page
    const AskScreen(),

    const LearnScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 197, 174, 124),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.info_sharp,
                color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 197, 174, 124),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
              child: Text(
                'Made With ❤️ by Kritarth',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  wordSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: _screen[_selectedIndex],
    );
  }
}
