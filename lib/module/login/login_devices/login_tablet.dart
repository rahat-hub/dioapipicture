import 'package:dioapipicture/module/login/login_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../shared/assets/images.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/font_sizes.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_fields.dart';
import '../../../widgets/texts.dart';

class LoginPageTabletPortrait extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;
  const LoginPageTabletPortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'F10 Solutions',
            style: Texts.textStyles(
                colors: ConstColors.TEXTCOLORS,
                textSize: FontSizes.BIG,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                Images.loginLogo,
                width: 200,
              ),
            ),
          ),
          FormBuilder(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Texts.texts(
                      texts: 'User Name',
                      colors: ConstColors.TEXTCOLORS,
                      fontWeight: FontWeight.w400,
                      align: TextAlign.start,
                      textSize: FontSizes.MEDIUM,
                    ),
                  ),
                ),
                TextFieldView.formField(
                    paddingValue: 20.0,
                    name: 'username',
                    obscureText: false,
                    key: controller.userFieldKey,
                    label: 'user name',
                    inputText: TextInputType.name,
                    radiusValue: 10.0,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(errorText: "Enter user name"),
                    ])),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Texts.texts(
                      texts: 'Password',
                      colors: ConstColors.TEXTCOLORS,
                      fontWeight: FontWeight.w400,
                      align: TextAlign.start,
                      textSize: FontSizes.MEDIUM,
                    ),
                  ),
                ),
                Obx(() {
                  return TextFieldView.formField(
                      passwordIcon: controller.isPasswordHidden.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      onTap: () {
                        controller.isPasswordHidden.value =
                        !controller.isPasswordHidden.value;
                      },
                      paddingValue: 20.0,
                      name: 'Password',
                      obscureText: controller.isPasswordHidden.value,
                      key: controller.passFieldKey,
                      label: '...........',
                      inputText: TextInputType.visiblePassword,
                      radiusValue: 10.0,
                      letterSpace: 5.0,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: 'Please enter password'),
                        FormBuilderValidators.minLength(6,
                            allowEmpty: false,
                            errorText: "Password Must be 6 character")
                      ]));
                }),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20.0),
                  child: Buttons.buttons(
                      colorValue: ConstColors.BLUE,
                      circularValue: 10.0,
                      text: "Sign In",
                      onPressed: () async{
                        if (controller.formKey.currentState!.validate()) {
                          controller.formKey.currentState!.save();
                          //print(controller.userFieldKey.currentState!.value);
                          await controller.logIn();
                        }
                      }),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class LoginPageTabletLandscape extends GetView<LoginLogic> {

  final SizingInformation? sizingInformation;
  const LoginPageTabletLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'F10 Solutions',
            style: Texts.textStyles(
                colors: ConstColors.TEXTCOLORS,
                textSize: FontSizes.BIG,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                Images.loginLogo,
                width: 200,
              ),
            ),
          ),
          FormBuilder(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Texts.texts(
                      texts: 'User Name',
                      colors: ConstColors.TEXTCOLORS,
                      fontWeight: FontWeight.w400,
                      align: TextAlign.start,
                      textSize: FontSizes.MEDIUM,
                    ),
                  ),
                ),
                TextFieldView.formField(
                    paddingValue: 20.0,
                    name: 'username',
                    obscureText: false,
                    key: controller.userFieldKey,
                    label: 'user name',
                    inputText: TextInputType.name,
                    radiusValue: 10.0,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(errorText: "Enter user name"),
                    ])),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Texts.texts(
                      texts: 'Password',
                      colors: ConstColors.TEXTCOLORS,
                      fontWeight: FontWeight.w400,
                      align: TextAlign.start,
                      textSize: FontSizes.MEDIUM,
                    ),
                  ),
                ),
                Obx(() {
                  return TextFieldView.formField(
                      passwordIcon: controller.isPasswordHidden.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      onTap: () {
                        controller.isPasswordHidden.value =
                        !controller.isPasswordHidden.value;
                      },
                      paddingValue: 20.0,
                      name: 'Password',
                      obscureText: controller.isPasswordHidden.value,
                      key: controller.passFieldKey,
                      label: '...........',
                      inputText: TextInputType.visiblePassword,
                      radiusValue: 10.0,
                      letterSpace: 5.0,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: 'Please enter password'),
                        FormBuilderValidators.minLength(6,
                            allowEmpty: false,
                            errorText: "Password Must be 6 character")
                      ]));
                }),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20.0),
                  child: Buttons.buttons(
                      colorValue: ConstColors.BLUE,
                      circularValue: 10.0,
                      text: "Sign In",
                      onPressed: () async{
                        if (controller.formKey.currentState!.validate()) {
                          controller.formKey.currentState!.save();
                          //print(controller.userFieldKey.currentState!.value);
                          await controller.logIn();
                        }
                      }),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}