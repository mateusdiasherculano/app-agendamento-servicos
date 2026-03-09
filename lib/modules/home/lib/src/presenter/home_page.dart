import 'package:agendamento_servico/modules/home/lib/src/presenter/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../external/appointment_response.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = Modular.get<HomeController>();

  @override
  void initState() {
    super.initState();
    controller.getAppointments();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: ScopedBuilder<HomeStore, List<AppointmentResponse>>(
            store: controller.store,
            onLoading: (context) =>
                const Center(child: CircularProgressIndicator()),
            onError: (context, error) => Center(child: Text(error.toString())),
            onState: (_, state) {
              if (state.isEmpty) {
                return const Center(
                  child: Text('Nenhum agendamento encontrado'),
                );
              }

              return ListView.builder(
                itemCount: state.length,
                itemBuilder: (context, index) {
                  final appointment = state[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            appointment.service?.name ??
                                'Serviço não informado',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text('Cliente: ${appointment.client?.name ?? '-'}'),
                          Text(
                            'Profissional: ${appointment.professional?.name ?? '-'}',
                          ),
                          Text('Data: ${appointment.scheduledAt ?? '-'}'),
                          Text('Status: ${appointment.status ?? '-'}'),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
