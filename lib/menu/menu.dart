import 'package:flutter/material.dart';
import 'package:tripetrol_application_1/screens/driver_cashier_rename/cashier_payment.dart';
import 'package:go_router/go_router.dart';

final menuOptions = [
  MenuOption(
      name: 'Cobranza Venta',
      route: 'cashier_payment',
      builder: (context) => const PaymentPage())
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
