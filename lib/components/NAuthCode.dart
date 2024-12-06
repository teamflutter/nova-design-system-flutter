import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nova_design_system_flutter/theme/AppTypography.dart';
import 'package:nova_design_system_flutter/theme/ResponsiveUtil.dart';

import '../theme/AppColors.dart';
import '../theme/ThemeUtils.dart';

/// This widget allows users to input a PIN with multiple fields.
class NAuthCode extends StatefulWidget {
  /// Number of PIN fields.
  final int length;

  /// Called when the PIN is fully entered.
  final ValueChanged<String>? onCompleted;

  /// Whether to show an error border.
  final bool showError;

  /// Whether to obscure the input (e.g., for passwords).
  final bool obscureText;

  const NAuthCode({
    super.key,
    this.length = 4,
    this.onCompleted,
    this.showError = false,
    this.obscureText = false,
  });

  @override
  _NAuthCodeState createState() => _NAuthCodeState();
}

class _NAuthCodeState extends State<NAuthCode> {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      widget.length,
          (_) => TextEditingController(),
    );
    _focusNodes = List.generate(
      widget.length,
          (_) => FocusNode(),
    );
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onChanged(int index, String value) {
    if (value.length > 1) {
      return;
    }

    if (value.isNotEmpty && index < widget.length - 1) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }

    // Combine all inputs into a single PIN string.
    final pin = _controllers.map((controller) => controller.text).join();

    if (pin.length == widget.length && widget.onCompleted != null) {
      widget.onCompleted!(pin);
    }
  }

  @override
  Widget build(BuildContext context) {
    final typography = AppTypography.uiStyle(context);
    final ColorPalette colorPalette = ThemeUtils.getPalette(context);

    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(ResponsiveUtils.radius(8)),
      borderSide: BorderSide(
        color: SupportiveColors.scarlet,
        width: ResponsiveUtils.width(1.5),
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(widget.length, (index) {
        return SizedBox(
          width: ResponsiveUtils.width(48),
          height: ResponsiveUtils.height(56),
          child: TextField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            textAlign: TextAlign.center,
            obscureText: widget.obscureText,
            style: typography.sm,
            keyboardType: TextInputType.number,
            maxLength: 1,
            showCursor: false,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow only numbers
            ],
            decoration: InputDecoration(
              counterText: "",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ResponsiveUtils.radius(8)),
                borderSide: BorderSide(
                  color: widget.showError
                      ? SupportiveColors.scarlet
                      : colorPalette.electricBlue,
                  width: ResponsiveUtils.width(1.5),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ResponsiveUtils.radius(8)),
                borderSide: BorderSide(
                  color: widget.showError
                      ? SupportiveColors.scarlet
                      : colorPalette.stone,
                  width: ResponsiveUtils.width(1.5),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ResponsiveUtils.radius(8)),
                borderSide: BorderSide(
                  color: colorPalette.stone,
                  width: ResponsiveUtils.width(1.5),
                ),
              ),
              errorBorder: errorBorder,
              focusedErrorBorder: errorBorder,
            ),
            onChanged: (value) => _onChanged(index, value),
          ),
        );
      }),
    );
  }
}
