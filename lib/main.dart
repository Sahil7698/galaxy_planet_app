import 'dart:math';

import 'package:flutter/material.dart';
import 'package:galaxy_planet/views/screens/deatil_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List allPlanets = [
    {
      'name': "Sun",
      'image': "assets/images/sun.png",
      'dec':
          "The Sun is a 4.5 billion-year-old yellow dwarf star – a hot glowing ball of hydrogen and helium – at the center of our solar system. It’s about 93 million miles (150 million kilometers) from Earth and it’s our solar system’s only star. Without the Sun’s energy, life as we know it could not exist on our home planet.\n\nFrom our vantage point on Earth, the Sun may appear like an unchanging source of light and heat in the sky. But the Sun is a dynamic star, constantly changing and sending energy out into space. The science of studying the Sun and its influence throughout the solar system is called heliophysics.",
    },
    {
      'name': "Earth",
      'image': "assets/images/earth.png",
      'dec':
          "Our home planet Earth is a rocky, terrestrial planet. It has a solid and active surface with mountains, valleys, canyons, plains and so much more. Earth is special because it is an ocean planet. Water covers 70% of Earth's surface.\n\nEarth's atmosphere is made mostly of nitrogen and has plenty of oxygen for us to breathe. The atmosphere also protects us from incoming meteoroids, most of which break up before they can hit the surface.",
    },
    {
      'name': "Jupiter",
      'image': "assets/images/jupiter.png",
      'dec':
          "Jupiter is the biggest planet in our solar system. It's similar to a star, but it never got big enough to start burning.\n\nJupiter is covered in swirling cloud stripes. It has big storms like the Great Red Spot, which has been going for hundreds of years.\n\nJupiter is a gas giant and doesn't have a solid surface, but it may have a solid inner core about the size of Earth. Jupiter also has rings, but they're too faint to see very well.",
    },
    {
      'name': "Mars",
      'image': "assets/images/mars.png",
      'dec':
          "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past.\n\nMars is one of the most explored bodies in our solar system, and it's the only planet where we've sent rovers to roam the alien landscape.\n\nPerseverance rover – the largest, most advanced rover NASA has sent to another world – touched down on Mars on Feb. 18, 2021, after a 203-day journey traversing 293 million miles (472 million kilometers). The Ingenuity helicopter rode to Mars attached to the belly of Perseverance.",
    },
    {
      'name': "Mercury",
      'image': "assets/images/mercury.png",
      'dec':
          "Mercury is the smallest planet in our solar system. It’s a little bigger than Earth’s Moon. It is the closest planet to the Sun, but it’s actually not the hottest. Venus is hotter.\n\nAlong with Venus, Earth, and Mars, Mercury is one of the rocky planets. It has a solid surface that is covered with craters like our Moon. It has a thin atmosphere, and it doesn’t have any moons. Mercury likes to keep things simple.\n\nMercury spins slowly compared to Earth, so one day lasts a long time. Mercury takes 59 Earth days to make one full rotation. But a year on Mercury goes fast. Because it’s the closest planet to the sun, it goes around the Sun in just 88 Earth days.",
    },
    {
      'name': "Neptune",
      'image': "assets/images/neptune.png",
      'dec':
          "Neptune is one of two ice giants in the outer solar system (the other is Uranus). Most (80% or more) of the planet's mass is made up of a hot dense fluid of icy materials – water, methane, and ammonia above a small, rocky core. Of the giant planets, Neptune is the densest.\n\nScientists think there might be an ocean of super hot water under Neptune's cold clouds. It does not boil away because incredibly high pressure keeps it locked inside.\n\nNeptune does not have a solid surface. Its atmosphere (made up mostly of hydrogen, helium, and methane) extends to great depths, gradually merging into water and other melted ices over a heavier, solid core with about the same mass as Earth.",
    },
    {
      'name': "Saturn",
      'image': "assets/images/saturn.png",
      'dec':
          "Saturn is the sixth planet from the Sun and the second-largest planet in our solar system. Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium. Saturn is not the only planet to have rings, but none are as spectacular or as complex as Saturn's. Saturn also has dozens of moons.\n\nFrom the jets of water that spray from Saturn's moon Enceladus to the methane lakes on smoggy Titan, the Saturn system is a rich source of scientific discovery and still holds many mysteries.\n\nSaturn's environment is not conducive to life as we know it. The temperatures, pressures, and materials that characterize this planet are most likely too extreme and volatile for organisms to adapt to.",
    },
    {
      'name': "Uranus",
      'image': "assets/images/uranus.png",
      'dec':
          "Uranus is one of two ice giants in the outer solar system (the other is Neptune). Most (80% or more) of the planet's mass is made up of a hot dense fluid of icy materials – water, methane, and ammonia – above a small rocky core. Near the core, it heats up to 9,000 degrees Fahrenheit (4,982 degrees Celsius).\n\nUranus is slightly larger in diameter than its neighbor Neptune, yet smaller in mass. It is the second least dense planet; Saturn is the least dense of all.\n\nUranus gets its blue-green color from methane gas in the atmosphere. Sunlight passes through the atmosphere and is reflected back out by Uranus' cloud tops. Methane gas absorbs the red portion of the light, resulting in a blue-green color.",
    },
    {
      'name': "Venus",
      'image': "assets/images/venus.png",
      'dec':
          "Venus is the second planet from the Sun, and is Earth's closest neighbor in the solar system. Venus is the brightest object in the sky after the Sun and the Moon, and sometimes looks like a bright star in the morning or evening sky. The planet is a little smaller than Earth, and is similar to Earth inside. We can't see the surface of Venus from Earth, because it is covered with thick clouds. However, space missions to Venus have shown us that its surface is covered with craters, volcanoes, mountains, and big lava plains. The surface of Venus is not where you'd like to be, with temperatures that can melt lead, an atmosphere so thick it would crush you, and clouds of sulfuric acid that smell like rotten eggs to top it off!\n\nThe atmosphere of Venus is very hot and thick. You would not survive a visit to the surface of the planet - you couldn't breathe the air, you would be crushed by the enormous weight of the atmosphere, and you would burn up in surface temperatures high enough to melt lead.",
    },
  ];

  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 7000),
    )..repeat();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Galaxy Planet",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 5,
        children: List.generate(
          allPlanets.length,
          (index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    name: allPlanets[index]['name'],
                    image: allPlanets[index]['image'],
                    dec: allPlanets[index]['dec'],
                  ),
                ),
              );
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.grey),
                    ),
                    child: Text(
                      "${allPlanets[index]['name']}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                  height: 100,
                  width: 100,
                  top: 5,
                  right: 25,
                  child: AnimatedBuilder(
                    animation: animationController,
                    builder: (context, widget) {
                      return Transform.rotate(
                        angle: animationController.value * 2 * pi,
                        child: widget,
                      );
                    },
                    child: Hero(
                      tag: allPlanets[index]['name'],
                      transitionOnUserGestures: true,
                      child: Image.asset(
                        "${allPlanets[index]['image']}",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
