///Home Model class
library;
// ignore_for_file: lines_longer_than_80_chars

part of '../view/home_view.dart';

///Home Model
class HomeModel {
  ///Home Model constructor
  HomeModel({
    required this.title,
    required this.description,
  });

  ///home model image not required

  ///home model title
  final String title;

  ///home model description
  final String description;
}

///Home model list
List<HomeModel> homeModel = [
  HomeModel(
    title: 'Natural Disaster Awareness',
    description:
        'Welcome to Save Disaster, your guide to natural disaster preparedness. Stay informed and be ready for earthquakes, floods, fires, and avalanches.',
  ),
  HomeModel(
    title: 'Disaster-Specific Sections',
    description:
        'Navigate through disaster-specific sections: "Earthquake," "Flood," "Fire," and "Avalanche." Find tailored information for each type of natural disaster.',
  ),
  HomeModel(
    title: 'Before and After Tips',
    description:
        'Prepare for the unexpected with our pre-disaster tips. Learn what to do before and after earthquakes, floods, fires, and avalanches for a safer outcome',
  ),
  HomeModel(
    title: 'Emergency Preparedness',
    description:
        'Get prepared for emergencies with our disaster preparedness tools. Learn how to stay informed, stay safe, and be prepared for life.',
  ),
];
