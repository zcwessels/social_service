import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<IconData> _sectionsIcons = [Icons.airline_seat_legroom_extra, Icons.clean_hands, Icons.carpenter, Icons.car_crash];
  final List<String> _sectionsText = ['Massage', 'Clean', 'Repair', 'Automotive'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 338,
              child: Stack(
                children: [
                  Container(
                    height: 280,
                    decoration: BoxDecoration(color: Colors.deepPurpleAccent.withAlpha(80), borderRadius: const BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Hi Zander", style: TextStyle(color: Colors.deepPurpleAccent.shade700, fontWeight: FontWeight.bold, fontSize: 25)),
                                  const Text("Need help?", style: TextStyle(color: Colors.black26, fontWeight: FontWeight.w600)),
                                ],
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(18)),
                                  child: Image.network(
                                    'https://avatars.githubusercontent.com/u/31216542?v=4',
                                    scale: 11,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 24),
                          TextField(
                            cursorColor: Colors.deepPurpleAccent,
                            autocorrect: false,
                            style: TextStyle(color: Colors.deepPurpleAccent.withAlpha(80)),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search, color: Colors.deepPurpleAccent.withAlpha(80)),
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.deepPurpleAccent.withAlpha(80)),
                              focusColor: Colors.deepPurpleAccent.withAlpha(80),
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.all(Radius.circular(10))),
                              enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    child: SizedBox(
                      height: 160,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: _sectionsIcons.length,
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: (index == 0) ? 24 : 16, top: 24, bottom: 24),
                            child: Container(
                              width: 90,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                                color: (index == 0) ? Colors.deepPurpleAccent.shade700 : Colors.grey.shade200,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(_sectionsIcons[index], color: (index != 0) ? Colors.deepPurpleAccent.shade700 : Colors.white),
                                  const SizedBox(height: 20),
                                  Text(_sectionsText[index], style: TextStyle(color: (index != 0) ? Colors.deepPurpleAccent.shade700 : Colors.white)),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('Our Services', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('View All', style: TextStyle(color: Colors.black26, fontWeight: FontWeight.w600, fontSize: 12)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey.shade200,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Laptop\nService',
                            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              'assets/laptop.png',
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey.shade200,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Fan\nRepairs',
                            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset('assets/fan.png', height: 100),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24),
              child: Text('Hi News', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(18), bottomLeft: Radius.circular(18)),
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/31216542?v=4',
                        width: 110,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi Send", style: TextStyle(color: Colors.deepPurpleAccent.shade700, fontWeight: FontWeight.bold, fontSize: 20)),
                          const SizedBox(
                            width: 160,
                            child: Text("have a problem with shipping goods?", style: TextStyle(color: Colors.black26, fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios_outlined))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
