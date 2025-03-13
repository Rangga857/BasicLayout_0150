import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 1)),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.density_small_sharp, color: Colors.white),
        title: Text(
          "Weather App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.add_box, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF74C7D2), Color(0xFF1F485B)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Text(
                "Yogyakarta",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500, color: Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                "Today",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white70),
              ),
              SizedBox(height: 20),
              Text(
                "28°C",
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.w600, color: Colors.white),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.white70, thickness: 1, indent: 20, endIndent: 20),
              SizedBox(height: 10),
              Text("Sunny", style: TextStyle(fontSize: 18, color: Colors.white70)),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit, color: Colors.white, size: 22),
                  SizedBox(width: 5),
                  Text("5 km/h", style: TextStyle(fontSize: 17, color: Colors.white)),
                ],
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.teal.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next 7 days",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        weatherHourly("Now"),
                        weatherHourly("17.00"),
                        weatherHourly("20.00"),
                        weatherHourly("23.00"),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                "Developed by: ranggaazhar@gmail.com",
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget weatherHourly(String time) {
    return Column(
      children: [
        Text(time, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        SizedBox(height: 5),
        Icon(Icons.ac_unit, color: Colors.white, size: 20),
        Text("28°C", style: TextStyle(color: Colors.white)),
        SizedBox(height: 5),
        Icon(Icons.wind_power, color: Colors.white, size: 20),
        Text("10 km/h", style: TextStyle(color: Colors.white)),
        SizedBox(height: 5),
        Icon(Icons.umbrella_sharp, color: Colors.white, size: 20),
        Text("0%", style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
