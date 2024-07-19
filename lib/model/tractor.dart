import 'package:tractor_monitor_app/model/hidrolic_system.dart';
import 'package:tractor_monitor_app/model/product_service.dart';
import 'package:tractor_monitor_app/model/steering_w_system.dart';
import 'maintenance.dart';
import 'motor.dart';

class Tractor extends ProductService {

  String description;
  String model;
  Motor motor;
  HidrolicSystem hidrolicSys;
  ProductService acFilter;
  // ACSystem acSys;
  ProductService fuel;
  ProductService cubeOil;
  SteeringWSystem steeringWSys;
  List<Maintenance> maintenances;

  Tractor(
      this.description, this.model, this.motor, this.maintenances, 
      this.fuel, this.hidrolicSys, this.acFilter, this.cubeOil,
      this.steeringWSys, double cost, String name, int id)
      : super(cost, name, id);


}
