import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:providerxflutter/screens/homepage.dart';

class ProviderXshop extends StatelessWidget {
  const ProviderXshop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('ProviderXshop'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.purple.shade500,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 60.0, right: 60, bottom: 60, top: 120),
            child: Image.asset(
              'lib/images/pear.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('We deliver Groceries at doorstep',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    fontSize: 40, fontWeight: FontWeight.bold)),
          ),
          const Spacer(),
          const Text(
            'Fresh items everyday',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Homepage(),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(5)),
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
