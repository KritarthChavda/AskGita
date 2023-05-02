import 'package:flutter/material.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 197, 174, 124),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: const <Widget>[
                Text(
                  'OVERVIEW',
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  '\nThe Bhagavad Gita is a religious text written by an unknown author in the 1st or 2nd century BCE. The title translates as The Song of God, and the text contains 700 verses that explore the nature of the Hindu religion. The Gita comprises part of the Mahabharata, one of two ancient Indian epics, but it is often regarded and studied as an independent work. The narrative portrays a conversation between a prince named Arjuna and the god Krishna, who has taken on a human form. This guide uses the translation by Christopher Isherwood and Swami Prabhavananda.',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '\nPLOT SUMMARY',
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  '\nBlind king named Dhritarashtra relies on his counselor Sanjaya to tell him about a battle that took place nearby. The battle involves two sides of Dhritarashtra’s family. The Kauravas are fighting against their cousins, the Pandavas, for control of a kingdom. Dhritarashtra is not the rightful king but he wishes to keep the kingdom for his son, who is part of the Kauravas. Sanjaya tells Dhritarashtra about Arjuna, the leader of the Pandavas. Arjuna is being advised by the god Krishna, who has taken human form and acts as Arjuna’s charioteer and advisor. Sanjaya recounts the conversation that took place between Arjuna and Krishna. This conversation is the foundation of the Bhagavad Gita.Arjuna patrols the battlefield. He recognizes familiar faces in the ranks of the opposing army and realizes that he cannot fight them. The kingdom is not necessarily worth the deaths of so many people. He worries that killing is a sinful act, especially if he is killing members of his own family. As he is about to give up on the battle, Krishna provides guidance. Krishna explains the nature of existence and its relation to religion and theology. There is no real death for people’s souls, as the cycle of reincarnation means that people are reborn in another life. This cycle repeats endlessly until a person reaches a stage of enlightenment, which is akin to a true understanding of god. A person’s deeds affects their karma, and this karma is accumulated throughout a person’s life. At the end of their life, their soul is reincarnated into another body, and the quality of this rebirth depends on how they lived their life. A person who lives well will be born into a good life and able to move closer to enlightenment. Those who do not live a good life will be reborn in increasingly worse situations and will move further away from god and enlightenment.The conversation continues, and Krishna explains how a person can lead a good life. They can practice renunciation, meditation, and selfless service. These three practices should be conducted in a balance. Extreme demonstrations of piety can be prideful and narcissistic. People should take satisfaction in completing acts as a form of service and devotion to god, not because they expect to receive a good outcome.Krishna talks about the three gunas: sattwa, rajas, and tamas. Sattwa is the highest guna and it is associated with purity and harmony. Rajas represents ego and narcissism. Tamas is the lowest of the gunas and represents ignorance and negative qualities. Krishna says that all people are associated with one of the gunas, but they should strive to live their life according to sattwa. The people who recognize and heighten the divine in their actions achieve the highest form of meditation. In doing so, a person can come to understand Krishna and achieve enlightenment in such a way as to break free from the cycle of reincarnation.Arjuna struggles with some of Krishna’s teachings. He has many questions. Krishna answers as many as he can. He gives Arjuna the power of divine sight to see Krishna in his true form. The vision has a profound effect on Arjuna, who now realizes the power of enlightenment. Krishna answers more of Arjuna’s questions and explains that Arjuna can achieve oneness with god by selflessly dedicating himself to the divine teachings that Krishna has shared.The text ends with Arjuna dedicating himself to Krishna and promising to live his life in a divine manner. He discovers the will to go to war and resolves to win the kingdom in the name of the Pandavas. Sanjaya concludes the story of the conversation between Krishna and Arjuna with a prayer and a dedication to god.',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
