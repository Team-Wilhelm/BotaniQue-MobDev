import '../../util/asset_constants.dart';

enum PlantDetailStat {
  mood,
  soilMoisture,
  temperature,
  light,
  humidity,
}

extension PlantDetailStatExtension on PlantDetailStat {
  String get value {
    switch (this) {
      case PlantDetailStat.soilMoisture:
        return "Soil Moisture";
      case PlantDetailStat.temperature:
        return "Temperature";
      case PlantDetailStat.light:
        return "Light Exposure";
      case PlantDetailStat.humidity:
        return "Humidity";
      case PlantDetailStat.mood:
        return "Mood";
    }
  }

  String get icon {
    switch (this) {
      case PlantDetailStat.soilMoisture:
        return AssetConstants.soilMoistureSvg;
      case PlantDetailStat.temperature:
        return AssetConstants.temperatureSvg;
      case PlantDetailStat.light:
        return AssetConstants.lightSvg;
      case PlantDetailStat.humidity:
        return AssetConstants.humiditySvg;
      case PlantDetailStat.mood:
        return AssetConstants.moodSvg;
    }
  }
}

enum LocalStorageKeys { jwt, sasToken }

enum ImageType {
  network,
  asset,
  file,
}

enum ButtonType {
  primary,
  secondary,
  outline,
  inactive,
}

enum ButtonShape {
  square,
  round,
}

class HisotricConditionRange {
  static const week = 7;
  static const fourteenDays = 14;
  static const month = 30;
  static const year = 365;

  static const List<int> all = [week, fourteenDays, month, year];
}