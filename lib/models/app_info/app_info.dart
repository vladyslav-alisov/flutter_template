class AppInfo {
  String appName;
  String packageName;
  String version;
  String buildNumber;
  String buildSignature;
  DateTime lastUpdated;

  AppInfo(
    this.appName,
    this.packageName,
    this.version,
    this.buildNumber,
    this.buildSignature,
    this.lastUpdated,
  );

  @override
  String toString() {
    return 'AppInfo{appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber, buildSignature: $buildSignature, lastUpdated: $lastUpdated}';
  }
}
