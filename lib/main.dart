import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),
      ),
      body: Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 40),
          Text(
            "Verify your\nphone number",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 35, fontWeight: FontWeight.bold, height: 1),
          ),
          const SizedBox(height: 50),
          Text(
            "We have sent you an SMS with a code\nto number +84 905070017",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(fontSize: 20),
          ),
          const SizedBox(height: 50),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("assets/Bitmap.png")),
                  const SizedBox(width: 10),
                  Text(
                    "+84",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.arrow_drop_down_rounded,
                    size: 40,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: TextField(
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                      textDirection: TextDirection.ltr,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        suffix: Icon(
                          Icons.cancel_rounded,
                          color: Color.fromARGB(86, 0, 0, 0),
                        ),
                      ),
                    ),
                  )
                ],
              )),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Or login with",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(fontSize: 20),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Social media",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: const Color.fromRGBO(255, 140, 0, 1)),
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
                shape: MaterialStatePropertyAll(BeveledRectangleBorder()),
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromRGBO(255, 140, 0, 1))),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "Next",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
