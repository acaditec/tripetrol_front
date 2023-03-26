import 'package:flutter/material.dart';

class BuyProductPage extends StatefulWidget {
  const BuyProductPage({super.key});

  @override
  State<BuyProductPage> createState() => _BuyProductPageState();
}

class _BuyProductPageState extends State<BuyProductPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Compra de Producto"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextButton(
              child: const Text('Ok'),
              onPressed: () {
                return;
              },
            ),
          )
        ],
      ),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextFormField(
                    enabled: false,
                    initialValue:
                        '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                    decoration: const InputDecoration(
                        filled: true, hintText: '20/03/23', labelText: 'Fecha'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '0123',
                        labelText: 'Nro de Cheque'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '00.00',
                        labelText: 'Monto',
                        prefixText: 'Bs. '),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: 'Local o Provincia',
                        labelText: 'Destino de distribución',
                        prefixText: ''),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '000',
                        labelText: 'Nro de Garrafas compradas',
                        suffixText: 'Garrafas'),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
