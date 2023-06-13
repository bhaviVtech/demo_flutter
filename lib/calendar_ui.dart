import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

class CalnderUi extends StatefulWidget {
  const CalnderUi({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CalnderUiState();
  }
}

class CalnderUiState extends State<CalnderUi> {
  List<DateTime?> _rangeDatePickerWithActionButtonsWithValue = [
    DateTime.now(),
    DateTime.now().add(const Duration(days: 5)),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final config = CalendarDatePicker2WithActionButtonsConfig(
      calendarType: CalendarDatePicker2Type.range,
      disableModePicker: true,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calender"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 410,
            margin: const EdgeInsets.all(11.0),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent.shade700),
              borderRadius: const BorderRadius.all(Radius.circular(7)),
            ),
            child: CalendarDatePicker2WithActionButtons(
              config: config,
              value: _rangeDatePickerWithActionButtonsWithValue,
              onValueChanged: (dates) => setState(
                      () => _rangeDatePickerWithActionButtonsWithValue = dates),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Selection(s):  '),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  _getValueText(
                    config.calendarType,
                    _rangeDatePickerWithActionButtonsWithValue,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }

  String _getValueText(
      CalendarDatePicker2Type datePickerType,
      List<DateTime?> values,
      ) {
    values =
        values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
    var valueText = (values.isNotEmpty ? values[0] : null)
        .toString()
        .replaceAll('00:00:00.000', '');

    if (datePickerType == CalendarDatePicker2Type.multi) {
      valueText = values.isNotEmpty
          ? values
          .map((v) => v.toString().replaceAll('00:00:00.000', ''))
          .join(', ')
          : 'null';
    } else if (datePickerType == CalendarDatePicker2Type.range) {
      if (values.isNotEmpty) {
        final startDate = values[0].toString().replaceAll('00:00:00.000', '');
        final endDate = values.length > 1
            ? values[1].toString().replaceAll('00:00:00.000', '')
            : 'null';
        valueText = '$startDate to $endDate';
      } else {
        return 'null';
      }
    }

    return valueText;
  }
}
