
import 'package:flutter/widgets.dart';
import 'package:motobike/models/bike.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key, required this.bike, required this.startDate, required this.endDate});
  final Bike bike;
  final String startDate;
  final String endDate;

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}