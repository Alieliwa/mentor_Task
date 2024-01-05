import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalender extends StatefulWidget {
  const TableCalender({super.key});

  @override
  State<TableCalender> createState() => _TableCalenderState();
}

class _TableCalenderState extends State<TableCalender> {
  DateTime today = DateTime.now();

 void _onDaySelected(DateTime day,DateTime foucsDate){
   setState(() {
     today = day;
   });
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(1997, 01, 01),
      lastDay: DateTime.utc(2030, 3, 14),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: FontSize.s16,
            fontWeight: FontWeight.w600
        ),
      ),
      availableGestures: AvailableGestures.all,
      onDaySelected: _onDaySelected,
      selectedDayPredicate: (day)=> isSameDay(day,today),
      calendarStyle: CalendarStyle(
          selectedDecoration: BoxDecoration(
            color:  ColorManager.primary,
            shape: BoxShape.circle,
          ),
          rangeStartDecoration: BoxDecoration(
            color:  ColorManager.primary,
            shape: BoxShape.circle,
          ),
          rangeEndDecoration:  BoxDecoration(
            color:  ColorManager.primary,
            shape: BoxShape.circle,
          ),
          todayDecoration:BoxDecoration(
            color:  ColorManager.primary,
            shape: BoxShape.circle,
          ),
      ),
      focusedDay: today,
      rowHeight: 45 ,

    );
  }
}
