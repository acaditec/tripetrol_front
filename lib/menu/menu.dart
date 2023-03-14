import 'package:flutter/material.dart';
import 'package:tripetrol_application_1/screens/consigment_cashier/consigment_cashier_screen.dart';
import 'package:tripetrol_application_1/screens/distribute_product/output_distribution_screen.dart';
import 'package:tripetrol_application_1/screens/distribute_product/return_distribution_screen.dart';
import 'package:tripetrol_application_1/screens/driver_cashier_rename/cashier_payment.dart';
import 'package:go_router/go_router.dart';

final menuOptions = [
  MenuOption(
      name: 'Distribucion salida',
      route: 'return_distribution_screen',
      builder: (context) => const OutputDistributionPage()),
  MenuOption(
      name: 'Distribucion retorno',
      route: 'return_distribution_screen',
      builder: (context) => const ReturnDistributionPage()),
  MenuOption(
      name: 'Cobranza venta',
      route: 'cashier_payment',
      builder: (context) => const PaymentPage()),
  MenuOption(
      name: 'Remesa a banco',
      route: 'consigment_cashier_screen',
      builder: (context) => const ConsigmentPage()),
];

class MenuOption {
  final String name;
  final String route;
  final WidgetBuilder builder;
  const MenuOption(
      {required this.name, required this.route, required this.builder});
}

class MenuTile extends StatelessWidget {
  final MenuOption? menuOption;
  const MenuTile({this.menuOption, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(menuOption!.name),
      onTap: () {
        context.go('/${menuOption!.route}');
      },
    );
  }
}
