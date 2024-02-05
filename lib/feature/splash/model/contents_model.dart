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
    image: Assets.images.icEarthquake.image(),
    title: 'Earthquake disaster awareness ',
    description:
        'In this app we will help you to understand the situation of earthquake.In 3 steps (Prepare, Survive, Recover) we will help you to understand the situation of earthquake.',
  ),
  OnboardingContents(
    image: Assets.images.icFlood.image(),
    title: 'Flood disaster awareness',
    description:
        'In this app we will help you to understand the situation of flood.In 3 steps (Anticipate, Prepare, Leave) we will help you to understand the situation of flood.',
  ),
  OnboardingContents(
    image: Assets.images.icFire.image(),
    title: 'Fire disaster awareness',
    description:
        'In this app we will help you to understand the situation of fire.In 2 steps (Race, Pass) we will help you to understand the situation of fire.',
  ),
  OnboardingContents(
    image: Assets.images.icAvalanche.image(),
    title: 'Avalanche disaster awareness',
    description:
        'In this app we will help you to understand the situation of avalanche.In 2 steps (Reaction, Surviving) we will help you to understand the situation of avalanche.',
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
];
