// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'package:flutter/material.dart';
import 'package:save_disaster/product/gen/index.dart';

///Onboarding contents model
final class OnboardingContents {
  Widget image;
  String title;
  String description;
  OnboardingContents({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    image: Assets.images.imgWorld.image(),
    title: 'Welcome to the Save Disaster App',
    description:
        'This app makes it easy for people to save their lives and protect themselves from disasters.',
  ),
  OnboardingContents(
    image: Assets.images.icDisasters.image(),
    title: 'Natural disaster awareness ',
    description:
        'In this app we will help you to understand the situation of natural disaster.Like earthquake, flood, fire and fire.',
  ),
  OnboardingContents(
    image: Assets.images.icSos.image(),
    title: 'SOS',
    description:
        'In this app you can call emergency services by the SOS service.',
  ),
  OnboardingContents(
    image: Assets.images.icMeetingPoint.image(),
    title: 'Meeting Point',
    description:
        'In this app you can find nearest meeting point in your area. (Just in TURKIYE).',
  ),
  OnboardingContents(
    image: Assets.images.icBloodDonation.image(),
    title: 'Blood Donation',
    description:
        'In this app you can find nearest blood donation center in your area. (Just in TURKIYE).',
  ),
  OnboardingContents(
    image: Assets.images.icGemini.image(),
    title: 'Chat Bot',
    description:
        'In this app you can chat and get help from Gemini AI.You can ask questions about disaster or in any emergency situations.',
  ),
];
