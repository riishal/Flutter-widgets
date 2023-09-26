import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_30_widgets/Draggable.dart';
import 'package:flutter_30_widgets/Draggablesheet.dart';
import 'package:flutter_30_widgets/Drawer.dart';
import 'package:flutter_30_widgets/Dropdown_btn.dart';
import 'package:flutter_30_widgets/Elevated_btn.dart';
import 'package:flutter_30_widgets/Expanded.dart';
import 'package:flutter_30_widgets/widgets/ClipPath.dart';
import 'package:flutter_30_widgets/widgets/BackdropFilterDeisgn.dart';
import 'package:flutter_30_widgets/provider/provider.dart';
import 'package:flutter_30_widgets/widgets/AbsorbPointerDesign.dart';
import 'package:flutter_30_widgets/widgets/Alert_dialog.dart';
import 'package:flutter_30_widgets/widgets/AlignDesign.dart';
import 'package:flutter_30_widgets/widgets/Appbar_Design.dart';
import 'package:flutter_30_widgets/widgets/AspectRatioDesign.dart';
import 'package:flutter_30_widgets/widgets/BottomSheetDesign.dart';
import 'package:flutter_30_widgets/widgets/Card.dart';
import 'package:flutter_30_widgets/widgets/Center.dart';
import 'package:flutter_30_widgets/widgets/Chip.dart';
import 'package:flutter_30_widgets/widgets/Circle_progress.dart';

import 'package:flutter_30_widgets/widgets/ClipRRect.dart';
import 'package:flutter_30_widgets/widgets/Clipoval.dart';
import 'package:flutter_30_widgets/widgets/Column.dart';
import 'package:flutter_30_widgets/widgets/Constum_paint.dart';
import 'package:flutter_30_widgets/widgets/ContainerDesign.dart';
import 'package:flutter_30_widgets/widgets/Contrained_box.dart';
import 'package:flutter_30_widgets/widgets/Data_table.dart';
import 'package:flutter_30_widgets/widgets/Decorated_box.dart';
import 'package:flutter_30_widgets/widgets/Dismissible.dart';
import 'package:flutter_30_widgets/widgets/Divider.dart';
import 'package:flutter_30_widgets/widgets/bottom_nav.dart';
import 'package:flutter_30_widgets/widgets/checkbox.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WidgetsProvider>(builder: (context, getdata, child) {
      return Scaffold(
        body: SafeArea(
          child: Column(children: [
            Row(
              children: [
                getdata.widgetButtons(context, AbsorbPointerDesign(), "1"),
                getdata.widgetButtons(context, AlertDialogDesign(), '2'),
                getdata.widgetButtons(context, AlignDesign(), '3'),
                getdata.widgetButtons(context, AppBarDesign(), '4'),
                getdata.widgetButtons(context, AspectRatioDesign(), '5')
              ],
            ),
            Row(
              children: [
                getdata.widgetButtons(context, BackdropFilterDeisgn(), '6'),
                getdata.widgetButtons(
                    context, BottomNavigationBarDesign(), '7'),
                getdata.widgetButtons(context, BottomSheetDesign(), '8'),
                getdata.widgetButtons(context, CardDesign(), '9'),
                getdata.widgetButtons(context, CenterDesign(), '10'),
              ],
            ),
            Row(
              children: [
                getdata.widgetButtons(context, CheckBoxDesign(), '11'),
                getdata.widgetButtons(context, ChipDesign(), '12'),
                getdata.widgetButtons(
                    context, CircularProgressIndicatorDesign(), '13'),
                getdata.widgetButtons(context, ClipRRectDesign(), '14'),
                getdata.widgetButtons(context, ClipPathDesign(), '15'),
              ],
            ),
            Row(
              children: [
                getdata.widgetButtons(context, ClipOvalDesign(), '16'),
                getdata.widgetButtons(context, ColumnDesign(), '17'),
                getdata.widgetButtons(context, ContainerDesign(), '18'),
                getdata.widgetButtons(context, ConstrainedBoxDesign(), '19'),
                getdata.widgetButtons(context, CustomPaintDesign(), '20'),
              ],
            ),
            Row(
              children: [
                getdata.widgetButtons(context, DataTableDesign(), '21'),
                getdata.widgetButtons(context, DecoratedBoxDesign(), '22'),
                getdata.widgetButtons(context, DismissibleDesign(), '23'),
                getdata.widgetButtons(context, DividerDesign(), '24'),
                getdata.widgetButtons(context, DraggableDesign(), '25'),
              ],
            ),
            Row(
              children: [
                getdata.widgetButtons(
                    context, DraggableScrollableSheetDesign(), '26'),
                getdata.widgetButtons(context, DrawerDesign(), '27'),
                getdata.widgetButtons(context, DropdownButtonDesign(), '28'),
                getdata.widgetButtons(context, ElevatedButtonDesign(), '29'),
                getdata.widgetButtons(context, ExpandedDesign(), '30'),
              ],
            )
          ]),
        ),
      );
    });
  }
}
