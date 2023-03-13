//Step 6 for the process
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pago Conductor"),
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
                        labelText: 'Orden depósito'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '00.00',
                        labelText: 'Saldo Inicial de caja',
                        prefixText: 'Bs. '),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '00.00',
                        labelText: 'Monto de remesa',
                        prefixText: 'Bs '),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '00.00',
                        labelText: 'Saldo final caja',
                        prefixText: 'Bs '),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
