import 'package:flutter/cupertino.dart';

import '../model/machine.dart';
import '../view/widgets/popups.dart';

class MachineController extends ChangeNotifier {
  
  List<Machine> machines = [];
  // Singleton
  static final MachineController _instance = MachineController._internal();
  static MachineController get instance => _instance;
  MachineController._internal();
  factory MachineController() {
    return _instance;
  }

  void registerMachine(Machine machine, BuildContext context) {
    print(machine);
    machines.add(machine);
    Popups.showSnackBar(true, 'Cadastro realizado com sucesso!', context);
    notifyListeners();
  }
  // void createMachineAndSystems(
  //     String name, String idSticker, String model, String description,
  //     String motorOil, String motorFilter, String hidrolicOil,
  //     String hidrolicFilter, String steeringWOil, String cubeOilName,
  //     String acFilterName, String fuelFilterName) {
  //
  //   OilSystem oilSystem = OilSystem(
  //       0,
  //       ProductService(0, motorOil, ''),
  //       ProductService(0, motorFilter, ''),
  //       0, 'Sistema de Oleo', IdGenerator.generateUniqueId().toString());
  //
  //   HidrolicSystem hidrolicSystem = HidrolicSystem(
  //       ProductService(0, hidrolicOil, ''),
  //       ProductService(0, hidrolicFilter, ''),
  //       0, 'Sistema Hidraulico', IdGenerator.generateUniqueId().toString());
  //
  //   SteeringWSystem steeringWSystem = SteeringWSystem(
  //       '',
  //       ProductService(0, steeringWOil, ''),
  //       0, 'Sistema de Direcao', IdGenerator.generateUniqueId().toString());
  //
  //   ProductService cubeOil = ProductService(0, cubeOilName, IdGenerator.generateUniqueId().toString());
  //   ProductService acFilter = ProductService(0, acFilterName, IdGenerator.generateUniqueId().toString());
  //   ProductService fuel = ProductService(0, fuelFilterName, IdGenerator.generateUniqueId().toString());
  //
  //   Motor motor = Motor(oilSystem, 0, 'Motor', IdGenerator.generateUniqueId().toString());
  //
  //   Machine newRegister = Machine.build(
  //       name: name,
  //       id: idSticker,
  //       description: description,
  //       model: model,
  //       motor: motor, maintenances: [], fuel: fuel, hidrolicSys: hidrolicSystem, acFilter: acFilter, cubeOil: cubeOil, steeringWSys: steeringWSystem, cost: 0, hourmeter: null
  //   );
  //
  //   print('Salvo');
  //   machines.add(newRegister);
  //   print(machines);
  //
  // }
  
}