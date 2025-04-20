import 'package:appointment/feature/home/data/models/specializations_response_model.dart';
import 'package:appointment/feature/home/ui/widget/doctor_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorListView({
    super.key,
    this.doctorsList,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorListViewItem(
            doctorsModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}
