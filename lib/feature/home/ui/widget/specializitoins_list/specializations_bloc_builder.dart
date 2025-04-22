import 'package:appointment/core/helper/spacing.dart';
import 'package:appointment/feature/home/logic/home_cubit.dart';
import 'package:appointment/feature/home/logic/home_state.dart';
import 'package:appointment/feature/home/ui/widget/doctors_list/doctors_shimmer_loading.dart';

import 'package:appointment/feature/home/ui/widget/specializitoins_list/speciality_list_view.dart';
import 'package:appointment/feature/home/ui/widget/specializitoins_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
            specializationsLoading: () {
              return setUpLoading();
            },
            specializationsSuccess: (specializationDataList) {
              var specializationsList = specializationDataList;
              return setupSucces(specializationsList);
            },
            specializationsError: (errorHandler) => setupError(),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setUpLoading() {
    return Expanded(
      child: Column(
        children: [
          SpecialityShimmerLoading(),
          verticalSpace(8),
          DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupSucces(dynamic specializationsList) {
    return SpecialityListView(
      specializationsDataList: specializationsList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
