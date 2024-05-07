bool devMode = true;
String productBaseUrl = "http://192.168.159.121:8000";
String devBaseUrl = "http://192.168.159.168:8000";

String get baseUrl {
  if (devMode) return devBaseUrl;
  return productBaseUrl;
}
