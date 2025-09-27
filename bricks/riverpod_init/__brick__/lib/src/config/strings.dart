abstract class AppStrings {
  static const String appName = '{{app_name.titleCase()}}';
  static const String baseUrl = '{{base_url}}';

  // Contoh message error
  static const String defaultFailureMessage =
      'Terjadi kesalahan. Silakan coba lagi nanti.';
  static const String networkFailureMessage =
      'Koneksi internet tidak tersedia. Silakan periksa koneksi internet Anda dan coba lagi.';
  static const String serverErrorFailureMessage =
      'Terjadi kesalahan pada server. Silakan coba lagi nanti.';
}
