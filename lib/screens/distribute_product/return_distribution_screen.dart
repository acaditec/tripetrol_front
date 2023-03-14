import 'package:flutter/material.dart';

class ReturnDistributionPage extends StatefulWidget {
  const ReturnDistributionPage({super.key});

  @override
  State<ReturnDistributionPage> createState() => _ReturnDistributionPageState();
}

class _ReturnDistributionPageState extends State<ReturnDistributionPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Distribución Retorno"),
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
                        labelText: 'Nro de Orden de Distribución'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '123456',
                        labelText: 'Nro de Camión'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: 'ABC1234',
                        labelText: 'Nro de Placa',
                        prefixText: ''),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: 'Juan Perez',
                        labelText: 'Nombre del Propietario',
                        prefixText: ''),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: 'Local, Planta o Provincia',
                        labelText: 'Destino de distribución',
                        prefixText: ''),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '000',
                        labelText: 'Carga de salida',
                        suffixText: 'Garrafas'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '000',
                        labelText: 'Carga vendida',
                        suffixText: 'Garrafas'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '000',
                        labelText: 'Carga retornada',
                        suffixText: 'Garrafas'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '000',
                        labelText: 'Garrafas perdidas',
                        suffixText: 'Garrafas'),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
