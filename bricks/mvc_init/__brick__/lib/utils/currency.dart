import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

extension CurrencyFormat on num {
  String get currency {
    return NumberFormat.currency(
      decimalDigits: 0,
      locale: 'ID',
      symbol: '',
    ).format(this);
  }

  String get rupiah {
    return NumberFormat.currency(
      decimalDigits: 0,
      locale: 'ID',
      symbol: 'Rp',
    ).format(this);
  }
}

class RupiahInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    int addSpace = 2;
    String newText = newValue.text;

    if (newValue.text == '0') {
      return const TextEditingValue(
        text: '',
        selection: TextSelection.collapsed(offset: 0),
      );
    }

    if (newValue.text.length == 1) {
      newText = 'Rp${newValue.text}';
    }

    if (newValue.text.contains('Rp')) {
      if (newValue.text.length <= 2) {
        return const TextEditingValue(
          text: '',
          selection: TextSelection.collapsed(offset: 0),
        );
      } else {
        newText =
            int.parse(newValue.text.replaceAll('Rp', '').replaceAll('.', ''))
                .rupiah;

        if (oldValue.text.split('.').length < newText.split('.').length) {
          addSpace = 1;
        } else if (oldValue.text.split('.').length >
            newText.split('.').length) {
          addSpace = -1;
        } else {
          addSpace = 0;
        }
      }
    }

    return TextEditingValue(
      text: newText,
      selection:
          TextSelection.collapsed(offset: newValue.selection.end + addSpace),
    );
  }
}

class RupiahValueAccessor extends ControlValueAccessor<int, String> {
  @override
  String? modelToViewValue(int? modelValue) {
    if (modelValue != null) {
      return modelValue.rupiah;
    }

    return null;
  }

  @override
  int? viewToModelValue(String? viewValue) {
    if (viewValue != null && viewValue.isNotEmpty) {
      return int.parse(viewValue.replaceAll('Rp', '').replaceAll('.', ''));
    }

    return 0;
  }
}
