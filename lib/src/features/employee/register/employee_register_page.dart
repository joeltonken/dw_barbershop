import 'package:dw_barbershop/src/core/ui/widgets/avatar_widget.dart';
import 'package:dw_barbershop/src/core/ui/widgets/hours_painel.dart';
import 'package:dw_barbershop/src/core/ui/widgets/weekdays_painel.dart';
import 'package:flutter/material.dart';

class EmployeeRegisterPage extends StatefulWidget {
  const EmployeeRegisterPage({ super.key });

  @override
  State<EmployeeRegisterPage> createState() => _EmployeeRegisterPageState();
}

class _EmployeeRegisterPageState extends State<EmployeeRegisterPage> {

  var registerADM = false;

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
            title: const Text('Cadastrar colaborador'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Column(
                  children: [
                    const AvatarWidget(),
                    const SizedBox(
                       height: 32,
                    ),
                    Row(
                      children: [
                        Checkbox.adaptive(value: registerADM, onChanged: (value){
                          setState(() {
                            registerADM = !registerADM;
                          });
                        }),
                        const Expanded(
                          child: Text(
                            'Sou administrador e quero me cadastrar como colaborador',
                            style: TextStyle(
                              fontSize: 14,
                              ),
                            ),
                        ),
                      ],
                    ),
                    Offstage(
                      offstage: registerADM,
                      child: Column(
                        children: [
                          const SizedBox(
                             height: 24,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Nome')
                            ),
                          ),
                          const SizedBox(
                             height: 24,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text('E-mail')
                            ),
                          ),
                          const SizedBox(
                             height: 24,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Senha')
                            ),
                          ),
                          const SizedBox(
                             height: 24,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                       height: 24,
                    ),
                    WeekdaysPainel(onDayPressed: (String day){}),
                    const SizedBox(
                       height: 24,
                    ),
                    HoursPainel(startTime: 6, endTime: 23, onHourPressed: (int hour) {},
                    ),
                    const SizedBox(
                       height: 24,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(56),
                      ),
                      onPressed: (){}, 
                      child: const Text('CADASTRAR COLABORADOR'),
                    )
                  ],
                ),
              ),
            ),
          ),
       );
  }
}