import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CcMp extends StatefulWidget {
  const CcMp({super.key});

  @override
  State<CcMp> createState() => _CcMps();
}

class _CcMps extends State<CcMp> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = (double.parse(textEditingController.text) * 81);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final border1 = OutlineInputBorder(
      borderSide: const BorderSide(
          width: 2,
          style: BorderStyle.solid,
          color: Color.fromARGB(121, 76, 144, 145)),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
        backgroundColor: const Color.fromARGB(181, 88, 67, 107),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(181, 88, 67, 107),
          elevation: 0,
          title: const Text('Currency Converter'),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR $result',
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 240, 255, 240)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Please enter the value in USD',
                    hintStyle: const TextStyle(color: Colors.white60),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.white60,
                    filled: true,
                    fillColor: Colors.white24,
                    focusedBorder: border1,
                    enabledBorder: border1,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: convert,
                  style: ElevatedButton.styleFrom(
                    elevation: 13,
                    backgroundColor: const Color.fromARGB(96, 143, 136, 136),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text('Convert'),
                ),
              )
            ],
          ),
        ));
  }
}
