import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'splash2_viewmodel.dart';

class Splash2View extends StatelessWidget {
  const Splash2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Splash2ViewModel>.reactive(
      onViewModelReady: (model){
        model.init();
      },

      viewModelBuilder: () {
      return Splash2ViewModel();
    },
      builder: (BuildContext context, Splash2ViewModel viewModel,
          Widget? child) {
        return Scaffold(
          body: Center(
            child: ElevatedButton(onPressed: () {
              viewModel.goto();
            }, child: Text("go"), ),
          ),
        );
      },);
  }
}
