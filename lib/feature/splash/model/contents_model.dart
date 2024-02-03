// ignore_for_file: public_member_api_docs, sort_constructors_first
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
    description: 'This is the first page of the onboarding screen',
  ),
  OnboardingContents(
    image: Assets.images.icFire.image(),
    title: 'This is the second page title',
    description: 'This is the second page description',
  ),
  OnboardingContents(
    image: Assets.images.icFlood.image(),
    title: 'This is the third page title',
    description: 'This is the third page description',
  ),
];
