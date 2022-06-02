import 'package:clepy/app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String?> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formErrorText(
          error: errors[index]!,
        ),
      ),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenWidth(
            inputWidth: 14,
          ),
          width: getProportionateScreenWidth(
            inputWidth: 14,
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(
            inputWidth: 10,
          ),
        ),
        Text(error),
      ],
    );
  }
}