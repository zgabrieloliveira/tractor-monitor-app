import 'package:tractor_monitor_app/model/product_service.dart';

class HidrolicSystem extends ProductService {

  double amount;
  double filterCost;
  double oilCost;

  HidrolicSystem(this.amount, this.oilCost, this.filterCost,double cost, String name, int id)
      : super(cost, name, id);

  @override
  void evaluate(double value) {
    cost += oilCost + filterCost;
  }

}