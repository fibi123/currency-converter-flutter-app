import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State <CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert(){
      result  = double.parse(textEditingController.text)*122.35;
      setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    final border = OutlineInputBorder(
      //Color(0xAARRGGBB)
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Converter',
          style: TextStyle(
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              'BDT ${ result!=0 ? result.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255,255,255,255),
                ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),

              ),
              Container(height: 10),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    result  = double.parse(textEditingController.text)*122.35;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  elevation: 10.0,
                  shape:
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
