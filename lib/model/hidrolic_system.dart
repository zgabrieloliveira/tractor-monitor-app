import 'package:tractor_monitor_app/model/product_service.dart';

class HidrolicSystem extends ProductService {

  ProductService oil;
  ProductService filter;

  HidrolicSystem(this.oil, this.filter, double cost, String name, String id)
      : super(cost, name, id);

  @override
  void evaluate(double value) {
    cost += oil.cost + filter.cost;
  }

}