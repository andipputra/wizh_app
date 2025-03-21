import 'package:intl/intl.dart';

extension NumberX on num {
  String toIdrFormat() => NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'IDR ',
    decimalDigits: 0,
  ).format(this);
}

extension DateTimeX on DateTime {
  String toDateShow() => DateFormat('dd MMM yyyy').format(this);
}
