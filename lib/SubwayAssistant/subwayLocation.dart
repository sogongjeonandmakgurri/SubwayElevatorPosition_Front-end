import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SubwayLocation {
  final double longitude;
  final double latitude;

  SubwayLocation(this.longitude, this.latitude);
}