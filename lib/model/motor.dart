import 'package:tractor_monitor_app/model/oil_system.dart';
import 'package:tractor_monitor_app/model/product_service.dart';

class Motor extends ProductService {

  OilSystem oilSystem;

  Motor(this.oilSystem, double cost, String name, String id) : super(cost, name, id);

}