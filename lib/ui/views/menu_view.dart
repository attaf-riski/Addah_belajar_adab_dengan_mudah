import 'package:flutter/material.dart';
import 'package:proyek_addah_attafwagiffar/ui/views/menu_button/menu_button_view.dart';
import 'package:proyek_addah_attafwagiffar/viewmodels/menu_viewmodel.dart';
import 'package:stacked/stacked.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MenuViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Row(children: [
          MenuButton(),
          Expanded(
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
            ),
          )
        ]),
      ),
      viewModelBuilder: () => MenuViewModel(),
      onModelReady: (model) {},
    );
  }
}
