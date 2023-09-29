import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_30_widgets/Popup_menu_btn.dart';
import 'package:flutter_30_widgets/Radio.dart';
import 'package:flutter_30_widgets/Rotated_box.dart';
import 'package:flutter_30_widgets/Row.dart';
import 'package:flutter_30_widgets/Scroll_bar.dart';
import 'package:flutter_30_widgets/Singlechild_scroll.dart';
import 'package:flutter_30_widgets/Sized_box.dart';
import 'package:flutter_30_widgets/Slider.dart';
import 'package:flutter_30_widgets/Snack_bar.dart';
import 'package:flutter_30_widgets/Stack.dart';
import 'package:flutter_30_widgets/Stepper.dart';
import 'package:flutter_30_widgets/Tab_bar.dart';
import 'package:flutter_30_widgets/Text_button.dart';
import 'package:flutter_30_widgets/widgets/Draggable.dart';
import 'package:flutter_30_widgets/widgets/Draggablesheet.dart';
import 'package:flutter_30_widgets/widgets/Drawer.dart';
import 'package:flutter_30_widgets/widgets/Dropdown_btn.dart';
import 'package:flutter_30_widgets/widgets/Elevated_btn.dart';
import 'package:flutter_30_widgets/widgets/Expanded.dart';
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
import 'package:flutter_30_widgets/widgets/Floating_action_btn.dart';
import 'package:flutter_30_widgets/widgets/Form.dart';
import 'package:flutter_30_widgets/widgets/Gesture_detector.dart';
import 'package:flutter_30_widgets/widgets/Grid.dart';
import 'package:flutter_30_widgets/widgets/Hero.dart';
import 'package:flutter_30_widgets/widgets/Icon_btn.dart';
import 'package:flutter_30_widgets/widgets/Linear_progress.dart';
import 'package:flutter_30_widgets/widgets/List_tile.dart';
import 'package:flutter_30_widgets/widgets/List_view.dart';
import 'package:flutter_30_widgets/widgets/Navigator.dart';
import 'package:flutter_30_widgets/widgets/Switch.dart';
import 'package:flutter_30_widgets/widgets/Transform.dart';
import 'package:flutter_30_widgets/widgets/Wrap.dart';
import 'package:flutter_30_widgets/widgets/bottom_nav.dart';
import 'package:flutter_30_widgets/widgets/checkbox.dart';
import 'package:provider/provider.dart';

import 'Nested_scrollview.dart';
import 'Opacity.dart';
import 'Outlined_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WidgetsProvider>(builder: (context, getdata, child) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
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
              ),
              Row(
                children: [
                  getdata.widgetButtons(
                      context, FloatingActionButtonDesign(), '31'),
                  getdata.widgetButtons(context, FormDesign(), '32'),
                  getdata.widgetButtons(context, GestureDetectorDesign(), '33'),
                  getdata.widgetButtons(context, IconButtonDesign(), '34'),
                  getdata.widgetButtons(context, GridViewDesign(), '35'),
                ],
              ),
              Row(
                children: [
                  getdata.widgetButtons(context, HeroDesign(), '36'),
                  getdata.widgetButtons(
                      context, LinearProgressIndicatorDesign(), '37'),
                  getdata.widgetButtons(context, ListTileDesign(), '38'),
                  getdata.widgetButtons(context, ListViewDesign(), '39'),
                  getdata.widgetButtons(context, NavigatorDesign(), '40'),
                ],
              ),
              Row(
                children: [
                  getdata.widgetButtons(
                      context, NestedScrollViewDesign(), '41'),
                  getdata.widgetButtons(context, OpacityDesign(), '42'),
                  getdata.widgetButtons(context, OutlinedButtonDesign(), '43'),
                  getdata.widgetButtons(context, PopupMenuButtonDesign(), '44'),
                  getdata.widgetButtons(context, RadioDesign(), '45'),
                ],
              ),
              Row(
                children: [
                  getdata.widgetButtons(context, RotatedBoxDesign(), '46'),
                  getdata.widgetButtons(context, RowDesign(), '47'),
                  getdata.widgetButtons(context, ScrollBarDesign(), '48'),
                  getdata.widgetButtons(
                      context, SingleChildScrollViewDesign(), '49'),
                  getdata.widgetButtons(context, SizedBoxDesign(), '50'),
                ],
              ),
              Row(
                children: [
                  getdata.widgetButtons(context, SliderDesign(), '51'),
                  getdata.widgetButtons(context, SnackBarDesign(), '52'),
                  getdata.widgetButtons(context, StackDesign(), '53'),
                  getdata.widgetButtons(context, StepperDesign(), '54'),
                  getdata.widgetButtons(context, SwitchDesign(), '55'),
                ],
              ),
              Row(
                children: [
                  getdata.widgetButtons(context, TabBarDesign(), '56'),
                  getdata.widgetButtons(context, TextButtonDesign(), '57'),
                  getdata.widgetButtons(context, TransformDesign(), '58'),
                  getdata.widgetButtons(context, WrapDesign(), '59'),
                  getdata.widgetButtons(context, SizedBox(), 'X'),
                ],
              )
            ]),
          ),
        ),
      );
    });
  }
}
