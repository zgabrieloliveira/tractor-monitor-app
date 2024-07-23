import 'package:tractor_monitor_app/model/product_service.dart';

class SteeringWSystem extends ProductService {

  String type;
  ProductService oil;

  SteeringWSystem(this.type, this.oil,double cost, String name, String id)
      : super(cost, name, id);

}