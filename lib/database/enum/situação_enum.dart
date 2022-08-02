import 'package:flutter/foundation.dart';

enum SelectedCOlor {
  PrimaryColor,
  SecondaryColor,
}

extension SelectedColorExtension on SelectedCOlor {
  String get name => describeEnum(this);

  String get displayTitle {
    switch (this) {
      case SelectedCOlor.PrimaryColor:
        return "Primary Color";
      case SelectedCOlor.SecondaryColor:
        return "Secondary Color";
      default:
        return "SelectedScheme Title is Null!";
    }
  }
}
