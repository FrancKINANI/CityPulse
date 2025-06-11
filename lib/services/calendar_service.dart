import 'package:flutter/material.dart';
import '../models/event.dart';
import 'package:intl/intl.dart';

class CalendarService extends ChangeNotifier {
  final Map<DateTime, List<Event>> _events = {};

  Map<DateTime, List<Event>> get events => _events;

  void addEvent(Event event) {
    final dateKey = DateTime(
      event.startDate.year,
      event.startDate.month,
      event.startDate.day,
    );

    if (!_events.containsKey(dateKey)) {
      _events[dateKey] = [];
    }

    _events[dateKey]!.add(event);
    notifyListeners();
  }

  void removeEvent(Event event) {
    final dateKey = DateTime(
      event.startDate.year,
      event.startDate.month,
      event.startDate.day,
    );

    if (_events.containsKey(dateKey)) {
      _events[dateKey]!.remove(event);
      if (_events[dateKey]!.isEmpty) {
        _events.remove(dateKey);
      }
      notifyListeners();
    }
  }

  List<Event> getEventsForDay(DateTime date) {
    final dateKey = DateTime(date.year, date.month, date.day);
    return _events[dateKey] ?? [];
  }

  List<Event> getUpcomingEvents() {
    final now = DateTime.now();
    final List<Event> upcomingEvents = [];

    _events.forEach((date, events) {
      events.forEach((event) {
        if (event.startDate.isAfter(now)) {
          upcomingEvents.add(event);
        }
      });
    });

    upcomingEvents.sort((a, b) => a.startDate.compareTo(b.startDate));
    return upcomingEvents;
  }

  String formatEventTime(Event event) {
    final dateFormat = DateFormat('HH:mm');
    return '${dateFormat.format(event.startDate)} - ${dateFormat.format(event.endDate)}';
  }

  String formatEventDate(Event event) {
    final dateFormat = DateFormat('dd MMM yyyy');
    return dateFormat.format(event.startDate);
  }

  void updateEvent(Event oldEvent, Event newEvent) {
    removeEvent(oldEvent);
    addEvent(newEvent);
  }

  void clearAllEvents() {
    _events.clear();
    notifyListeners();
  }
}
