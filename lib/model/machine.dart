import 'package:tractor_monitor_app/model/hidrolic_system.dart';
import 'package:tractor_monitor_app/model/product_service.dart';
import 'package:tractor_monitor_app/model/steering_w_system.dart';
import 'maintenance.dart';
import 'motor.dart';

class Machine extends ProductService {

  String model;
  int hourmeter;
  Motor? motor;
  String? description;
  HidrolicSystem? hidrolicSys;
  ProductService? acFilter;
  // ACSystem acSys;
  ProductService? fuel;
  ProductService? cubeOil;
  SteeringWSystem? steeringWSys;
  List<Maintenance>? maintenances;

  Machine({required String name, required this.model, required this.hourmeter, this.motor, this.description, this.maintenances, this.fuel, this.hidrolicSys,
    this.acFilter, this.cubeOil, this.steeringWSys, required double cost, required String id})
      : super(cost, name, id);

  static Machine build({
    String? description,
    required String model,
    Motor? motor,
    required int hourmeter,
    HidrolicSystem? hidrolicSys,
    ProductService? acFilter,
    ProductService? fuel,
    ProductService? cubeOil,
    SteeringWSystem? steeringWSys,
    List<Maintenance>? maintenances,
    double? cost,
    required String name,
    required String id,
  }) {
    return Machine(
      description: description ?? '',
      model: model,
      motor: motor,
      hidrolicSys: hidrolicSys,
      acFilter: acFilter,
      fuel: fuel,
      cubeOil: cubeOil,
      steeringWSys: steeringWSys,
      maintenances: maintenances ?? [],
      cost: cost ?? 0,
      name: name,
      id: id,
        hourmeter: hourmeter
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'name': name,
  //     'cost': cost,
  //     'id': id,
  //     'model': model,
  //     'hourmeter': hourmeter,
  //     'motor': motor?.toJson(),
  //     'description': description,
  //     'hidrolicSys': hidrolicSys?.toJson(),
  //     'acFilter': acFilter?.toJson(),
  //     'fuel': fuel?.toJson(),
  //     'cubeOil': cubeOil?.toJson(),
  //     'steeringWSys': steeringWSys?.toJson(),
  //     'maintenances': maintenances?.map((maintenance) => maintenance.toJson()).toList(),
  //   };
  // }

  @override
  String toString() {
    return 'Machine{name: $name, cost: $cost, id: $id, model: $model, hourmeter: $hourmeter, motor: $motor, description: $description, hidrolicSys: $hidrolicSys, acFilter: $acFilter, fuel: $fuel, cubeOil: $cubeOil, steeringWSys: $steeringWSys, maintenances: $maintenances}';
  }
}
