//Nicole Silvestrini Garrio - 23009486
import 'package:flutter/services.dart';
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({
    super.key,
    required this.title,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController valorPresenteController;
  late TextEditingController periodoController;
  late TextEditingController taxaJurosController;
  double valorFuturo = 0.0;
  @override
  void initState() {
    super.initState();
    valorPresenteController = TextEditingController();
    periodoController = TextEditingController();
    taxaJurosController = TextEditingController();
  }

  void calcularValorFuturo() {
    double valorPresente = double.tryParse(valorPresenteController.text) ?? 0.0;
    double taxaJuros = double.tryParse(taxaJurosController.text) ?? 0.0;
    int periodo = int.tryParse(periodoController.text) ?? 0;
    setState(() {
      valorFuturo = valorPresente * pow((1 + (taxaJuros / 100)), periodo);
      valorFuturo = double.parse(valorFuturo.toStringAsFixed(3));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: valorPresenteController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Valor Presente',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              onChanged: (text) => calcularValorFuturo(),
            ),
            TextFormField(
              controller: taxaJurosController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Taxa de juros %',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              onChanged: (text) => calcularValorFuturo(),
            ),
            TextFormField(
              controller: periodoController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Periodo (meses)',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              onChanged: (text) => calcularValorFuturo(),
            ),
            Text(
              'Valor Futuro: $valorFuturo',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
