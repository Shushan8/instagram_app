import 'package:flutter/material.dart';

@immutable
final class GoogleAuthState {}

final class GoogleAuthInitial extends GoogleAuthState {}

final class GoogleAuthPending extends GoogleAuthState {}

final class GoogleAuthError extends GoogleAuthState {}

final class GoogleAuthSuccess extends GoogleAuthState {}
