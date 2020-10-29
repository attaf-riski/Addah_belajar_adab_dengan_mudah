import 'package:flutter/material.dart';
import 'package:proyek_addah_attafwagiffar/shared/ui_helper.dart';
import 'package:proyek_addah_attafwagiffar/ui/widgets/MenuItem.dart';
import 'package:proyek_addah_attafwagiffar/viewmodels/menu_button/menu_button_viewmodel.dart';
import 'package:stacked/stacked.dart';

class MenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MenuButtonViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: Column(
            children: [
              MenuItem(
                title: 'Materi Adab',
                icon: Icons.menu_book,
                isActive: model.materiActive,
                onPressed: model.materiPressed,
              ),
              verticalSpaceLarge,
              MenuItem(
                  title: 'Kuis',
                  icon: Icons.gamepad,
                  isActive: model.kuisActive,
                  onPressed: model.kuisPressed),
              verticalSpaceLarge,
              MenuItem(
                  title: 'Pengaturan',
                  icon: Icons.settings,
                  isActive: model.settingActive,
                  onPressed: model.settingPressed)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center),
        color: Color(0x33556272),
        width: MediaQuery.of(context).size.width * 0.2,
      ),
      viewModelBuilder: () => MenuButtonViewModel(),
    );
  }
}
