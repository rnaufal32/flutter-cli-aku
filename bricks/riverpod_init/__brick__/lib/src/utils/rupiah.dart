import 'package:intl/intl.dart';

extension Rupiah on dynamic {
  String get toRupiah {
    return NumberFormat.currency(
      locale: 'ID',
      decimalDigits: 0,
      name: 'Rp',
    ).format(this);
  }
}
