import 'package:all_widget/pages/C/chip/data/action_chip.dart';
import 'package:all_widget/pages/C/chip/data/chips.dart';
import 'package:all_widget/pages/C/chip/data/choice_chip.dart';
import 'package:all_widget/pages/C/chip/data/filter_chips.dart';
import 'package:all_widget/pages/C/chip/data/input_chip.dart';
import 'package:all_widget/pages/C/chip/model/lib/model/action_chip_data.dart';
import 'package:all_widget/pages/C/chip/model/lib/model/chip_data.dart';
import 'package:all_widget/pages/C/chip/model/lib/model/choice_chip_data.dart';
import 'package:all_widget/pages/C/chip/model/lib/model/filter_chip_data.dart';
import 'package:all_widget/pages/C/chip/model/lib/model/input_chip_data.dart';
import 'package:all_widget/pages/C/chip/utlis.dart';
import 'package:flutter/material.dart';

class ChipWidget extends StatefulWidget {
  final String title;

  const ChipWidget({
    required this.title,
  });

  @override
  _ChipWidgetState createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  int index = 3;
  final double spacing = 8;

  List<ChipData> chips = Chips.all;
  List<InputChipData> inputChips = InputChips.all;
  List<ActionChipData> actionChips = ActionChips.all;
  List<FilterChipData> filterChips = FilterChips.all;
  List<ChoiceChipData> choiceChips = ChoiceChips.all;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(child: buildPages()),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(icon: Text('Chips'), label: 'Action Chip'),
            BottomNavigationBarItem(
              icon: Text('Chips'),
              label: 'InputChip',
            ),
            BottomNavigationBarItem(
              icon: Text('Chips'),
              label: 'FilterChip',
            ),
            BottomNavigationBarItem(
              icon: Text('Chips'),
              label: 'ChoiceChip',
            ),
            BottomNavigationBarItem(
              icon: Text('Chips'),
              label: 'Chip',
            ),
          ],
          onTap: (int index) => setState(() => this.index = index),
        ),
      );

  Widget buildPages() {
    switch (index) {
      case 0:
        return buildActionChips();
      case 1:
        return buildInputChips();
      case 2:
        return buildFilterChips();
      case 3:
        return buildChoiceChips();
      case 4:
        return buildChips();
      default:
        return Container();
    }
  }

  Widget buildActionChips() => Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: actionChips
            .map((actionChip) => ActionChip(
                  avatar: Icon(
                    actionChip.icon,
                    color: actionChip.iconColor,
                  ),
                  backgroundColor: Colors.grey[200],
                  label: Text(actionChip.label),
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  onPressed: () => Utils.showSnackBar(
                    context,
                    'Do action "${actionChip.label}"...',
                  ),
                ))
            .toList(),
      );

  Widget buildInputChips() => Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: inputChips
            .map((inputChip) => InputChip(
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(inputChip.urlAvatar),
                  ),
                  label: Text(inputChip.label),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  onPressed: () => Utils.showSnackBar(
                    context,
                    'Interacted with "${inputChip.label}"...',
                  ),
                  onDeleted: () => setState(() => inputChips.remove(inputChip)),
                ))
            .toList(),
      );

  Widget buildChoiceChips() => Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: choiceChips
            .map((choiceChip) => ChoiceChip(
                  label: Text(choiceChip.label),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                  onSelected: (isSelected) => setState(() {
                    choiceChips = choiceChips.map((otherChip) {
                      final newChip = otherChip.copy(isSelected: false);

                      return choiceChip == newChip
                          ? newChip.copy(isSelected: isSelected)
                          : newChip;
                    }).toList();
                  }),
                  selected: choiceChip.isSelected,
                  selectedColor: Colors.green,
                  backgroundColor: Colors.blue,
                ))
            .toList(),
      );

  Widget buildFilterChips() => Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: filterChips
            .map((filterChip) => FilterChip(
                  label: Text(filterChip.label),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: filterChip.color,
                  ),
                  backgroundColor: filterChip.color.withOpacity(0.1),
                  onSelected: (isSelected) => setState(() {
                    filterChips = filterChips.map((otherChip) {
                      return filterChip == otherChip
                          ? otherChip.copy(isSelected: isSelected)
                          : otherChip;
                    }).toList();
                  }),
                  selected: filterChip.isSelected,
                  checkmarkColor: filterChip.color,
                  selectedColor: filterChip.color.withOpacity(0.25),
                ))
            .toList(),
      );

  Widget buildChips() => Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: chips
            .map((chip) => Chip(
                  labelPadding: const EdgeInsets.all(4),
                  avatar: CircleAvatar(
                    child: const Text('AZ'),
                    backgroundColor: Colors.white.withOpacity(0.8),
                  ),
                  label: Text(chip.label),
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  backgroundColor: chip.backgroundColor,
                ))
            .toList(),
      );
}
