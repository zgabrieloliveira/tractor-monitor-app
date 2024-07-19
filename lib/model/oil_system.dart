import 'package:tractor_monitor_app/model/product_service.dart';

class OilSystem extends ProductService {

  double amount;
  double oilCost;
  double filterCost;

  OilSystem(this.amount, this.oilCost, this.filterCost, double cost, String name, int id)
      : super(cost, name, id);

  @override
  void evaluate(double value) {
    cost += oilCost + filterCost;
  }

}