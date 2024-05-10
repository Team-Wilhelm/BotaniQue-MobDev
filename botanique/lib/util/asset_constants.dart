class AssetConstants {
  static const String _assetPath = 'assets/images/';
  static const String _minimalisticAssetPath = '${_assetPath}minimalistic/';

  static const String logo = '${_assetPath}logo.png';
  static const String leaves = '${_assetPath}leaves.jpg';
  static const String leavesSmall = '${_assetPath}leaves_small.jpg';
  static const String profile = '${_assetPath}profile_default.jpg';

  static const String humidity = '${_minimalisticAssetPath}humidity.png';
  static const String light = '${_minimalisticAssetPath}sun.png';
  static const String soilMoisture = '${_minimalisticAssetPath}moisture.png';
  static const String temperature = '${_minimalisticAssetPath}temperature.png';
  static const String camera = '${_minimalisticAssetPath}camera.png';
}

// TODO: change to default image from Blob storage
class NetworkConstants {
  static const String plantPlaceholder =
      "https://images.unsplash.com/photo-1501004318641-b39e6451bec6?q=80&w=2273&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
}
