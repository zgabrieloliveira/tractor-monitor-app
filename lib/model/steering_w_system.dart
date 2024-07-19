import 'package:tractor_monitor_app/model/product_service.dart';

class SteeringWSystem extends ProductService {

  String type;
  double amount;
  double oilCost;

  SteeringWSystem(this.type, this.amount, this.oilCost,double cost, String name, int id)
      : super(cost, name, id);

}