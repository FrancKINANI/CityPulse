import 'package:flutter/material.dart';

class AddPlaceBusinessHoursSection extends StatelessWidget {
  final Map<String, Map<String, String>> businessHours;
  final void Function(String day, String open, String close) onChanged;

  const AddPlaceBusinessHoursSection({
    super.key,
    required this.businessHours,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
          child: const Text(
            'Business Hours',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ...days.map(
          (day) => _BusinessHourRow(
            day: day,
            open: businessHours[day]?['open'] ?? '',
            close: businessHours[day]?['close'] ?? '',
            onChanged: (open, close) => onChanged(day, open, close),
          ),
        ),
      ],
    );
  }
}

class _BusinessHourRow extends StatelessWidget {
  final String day;
  final String open;
  final String close;
  final void Function(String open, String close) onChanged;

  const _BusinessHourRow({
    required this.day,
    required this.open,
    required this.close,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  day,
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 8, top: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFF264433),
                        ),
                        height: 32,
                        child: TextField(
                          style: const TextStyle(color: Color(0xFFFFFFFF)),
                          decoration: const InputDecoration(
                            hintText: 'Open',
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            border: InputBorder.none,
                          ),
                          controller: TextEditingController(text: open),
                          onChanged: (value) => onChanged(value, close),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 8, top: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFF264433),
                        ),
                        height: 32,
                        child: TextField(
                          style: const TextStyle(color: Color(0xFFFFFFFF)),
                          decoration: const InputDecoration(
                            hintText: 'Close',
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            border: InputBorder.none,
                          ),
                          controller: TextEditingController(text: close),
                          onChanged: (value) => onChanged(open, value),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
