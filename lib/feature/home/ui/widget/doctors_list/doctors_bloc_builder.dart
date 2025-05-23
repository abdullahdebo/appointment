import 'package:appointment/feature/home/logic/home_cubit.dart';
import 'package:appointment/feature/home/logic/home_state.dart';
import 'package:appointment/feature/home/ui/widget/doctors_list/doctor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) {
            return setupSuccess(doctorsList);
          },
          doctorsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupSuccess(doctorsList) {
    return DoctorListView(
      doctorsList: doctorsList,
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
