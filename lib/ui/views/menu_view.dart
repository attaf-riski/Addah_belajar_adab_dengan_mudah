import 'package:flutter/material.dart';
import 'package:proyek_addah_attafwagiffar/viewmodels/menu_viewmodel.dart';
import 'package:stacked/stacked.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MenuViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Row(children: [
          Container(
            color: Colors.red,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          VerticalDivider(
            color: Colors.yellow,
            thickness: 10,
            width: 5,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
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
