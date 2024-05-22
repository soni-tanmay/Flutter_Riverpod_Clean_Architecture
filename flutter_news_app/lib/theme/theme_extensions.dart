import "package:flutter/material.dart";

@immutable
class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.backgroundGradient,
    required this.containerBgColor,
    required this.borderGradient,
  });

  final Color? backgroundGradient;
  final Color? containerBgColor;
  final Gradient? borderGradient;

  @override
  MyColors copyWith({
    Color? backgroundGradient,
    Color? containerBgColor,
    Gradient? borderGradient,
  }) {
    return MyColors(
      backgroundGradient: backgroundGradient ?? this.backgroundGradient,
      containerBgColor: containerBgColor ?? this.containerBgColor,
      borderGradient: borderGradient ?? this.borderGradient,
    );
  }

  @override
  MyColors lerp(MyColors? other, double t) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      backgroundGradient:
          Color.lerp(backgroundGradient, other.backgroundGradient, t),
      containerBgColor: Color.lerp(containerBgColor, other.containerBgColor, t),
      borderGradient: Gradient.lerp(borderGradient, other.borderGradient, t),
    );
  }
}
