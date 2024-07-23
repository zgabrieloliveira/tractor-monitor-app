import 'package:flutter/material.dart';
import 'package:tractor_monitor_app/view/widgets/app_bar.dart';
import 'package:tractor_monitor_app/view/widgets/form_field.dart';

import '../../controller/machine_controller.dart';
import '../../model/machine.dart';


class MachineRecordScreen extends StatefulWidget {
  const MachineRecordScreen({super.key});

  @override
  State<MachineRecordScreen> createState() => _MachineRecordScreenState();
}

class _MachineRecordScreenState extends State<MachineRecordScreen> {

  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _description = '';
  String _model = '';
  String _idSticker = '';
  String _hourmeter = '0';
  // final String _hidrolicOil = '';
  // final String _motorOil = '';
  // final String _cubeOil = '';
  // final String _steeringWOil = '';
  // final String _motorFilter = '';
  // final String _hidrolicFilter = '';
  // final String _fuelFilter = '';
  // final String _acFilter = '';


  @override
  Widget build(BuildContext context) => _buildMachineForm();

  Widget _buildMachineForm() {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Cadastro de Máquina'),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomFormField(
                      labelText: 'Nome',
                      mandatory: true,
                      onSavedCallback: (update) => _name = update
                  ),
                  const SizedBox(height: 10),
                  CustomFormField(
                      labelText: 'Adesivo identificador',
                      mandatory: true,
                      onSavedCallback: (update) => _idSticker = update
                  ),
                  const SizedBox(height: 10),
                  CustomFormField(
                      labelText: 'Modelo',
                      mandatory: true,
                      onSavedCallback: (update) {
                        _model = update;
                        print('modelo $_model');
                      }
                  ),
                  const SizedBox(height: 10),
                  CustomFormField(
                      labelText: 'Horimetro',
                      keyboardType: TextInputType.number,
                      onSavedCallback: (update) {
                        if (update.isNotEmpty) _hourmeter = update;
                        print('horimetro $_hourmeter');
                      }
                  ),
                  const SizedBox(height: 10),
                  CustomFormField(
                      labelText: 'Descrição',
                      onSavedCallback: (update) {
                        _description = update;
                        print('descricao $_description');
                      }
                  ),
                  const SizedBox(height: 10),
                  // CustomFormField(labelText: 'Óleo do hidráulico', value: _hidrolicOil),
                  // const SizedBox(height: 10),
                  // CustomFormField(labelText: 'Óleo de motor', value: _motorOil),
                  // const SizedBox(height: 10),
                  // CustomFormField(labelText: 'Óleo do cubo', value: _cubeOil),
                  // const SizedBox(height: 10),
                  // CustomFormField(labelText: 'Óleo da direção ', value: _steeringWOil),
                  // const SizedBox(height: 10),
                  // CustomFormField(labelText: 'Filtro de motor', value: _motorFilter),
                  // const SizedBox(height: 10),
                  // CustomFormField(labelText: 'Filtro de combustível', value: _fuelFilter),
                  // const SizedBox(height: 10),
                  // CustomFormField(labelText: 'Filtro do hidráulico', value: _hidrolicFilter),
                  // const SizedBox(height: 10),
                  // CustomFormField(labelText: 'Filtro de ar condicionado', value: _acFilter),
                  // const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }

  void _onSavedCallback(current, update) => current = update;

  void _addItem() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Machine machine = Machine.build(model: _model, hourmeter: int.parse(_hourmeter), name: _name, id: _idSticker);
      MachineController.instance.registerMachine(machine, context);
      print('$_model, $_name, $_idSticker, $_hourmeter');
      _formKey.currentState!.reset();
    }
  }

}
