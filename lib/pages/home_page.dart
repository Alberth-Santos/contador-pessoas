import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  int numberOfPeople = 0;
  bool get isEmpty => count == 0;
  bool get isFull => count == numberOfPeople;
  bool get numberOfPeopleisEmpty => numberOfPeople == 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Selecione primeiro a quantidade",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Text(
            "$numberOfPeople",
            style: const TextStyle(
              fontSize: 50,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    numberOfPeopleisEmpty ? null : numberOfPeople--;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(
                    50,
                    30,
                  ),
                ),
                child: const Text("-1"),
              ),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    numberOfPeople += 5;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(
                    50,
                    30,
                  ),
                ),
                child: const Text("+5"),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            isFull ? "Lotado!!!" : "Pode Entrar!",
            style: TextStyle(
              color: isFull ? Colors.red : Colors.green,
              fontSize: 30,
            ),
          ),
          Text(
            '$count',
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isEmpty ? null : count--;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isEmpty ? Colors.red.withOpacity(0.2) : Colors.red,
                  fixedSize: const Size(
                    100,
                    60,
                  ),
                ),
                child: const Text("Saiu"),
              ),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isFull ? null : count++;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(
                    100,
                    60,
                  ),
                  backgroundColor:
                      isFull ? Colors.green.withOpacity(0.2) : Colors.green,
                ),
                child: const Text("Entrou"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
