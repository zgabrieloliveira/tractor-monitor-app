import 'package:tractor_monitor_app/model/buyable.dart';

class ProductService implements Buyable {

  double cost;
  String name;
  int id;

  ProductService(this.cost, this.name, this.id);

  @override
  void evaluate(double value) {
    cost += value;
  }

}