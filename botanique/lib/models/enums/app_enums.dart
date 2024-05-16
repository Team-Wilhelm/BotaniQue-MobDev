enum PlantDetailStat {
  soilMoisture,
  temperature,
  light,
  humidity,
  mood,
}

extension PlantDetailStatString on PlantDetailStat {
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