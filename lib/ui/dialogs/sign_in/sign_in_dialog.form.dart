// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String UsernameValueKey = 'username';
const String PasswordValueKey = 'password';

final Map<String, TextEditingController> _SignInDialogTextEditingControllers =
    {};

final Map<String, FocusNode> _SignInDialogFocusNodes = {};

final Map<String, String? Function(String?)?> _SignInDialogTextValidations = {
  UsernameValueKey: null,
  PasswordValueKey: null,
};

mixin $SignInDialog {
  TextEditingController get usernameController =>
      _getFormTextEditingController(UsernameValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);
  FocusNode get usernameFocusNode => _getFormFocusNode(UsernameValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_SignInDialogTextEditingControllers.containsKey(key)) {
      return _SignInDialogTextEditingControllers[key]!;
    }

    _SignInDialogTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _SignInDialogTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_SignInDialogFocusNodes.containsKey(key)) {
      return _SignInDialogFocusNodes[key]!;
    }
    _SignInDialogFocusNodes[key] = FocusNode();
    return _SignInDialogFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    usernameController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    usernameController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
  }

  static const bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          UsernameValueKey: usernameController.text,
          PasswordValueKey: passwordController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _SignInDialogTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _SignInDialogFocusNodes.values) {
      focusNode.dispose();
    }

    _SignInDialogTextEditingControllers.clear();
    _SignInDialogFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get usernameValue => this.formValueMap[UsernameValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;

  set usernameValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          UsernameValueKey: value,
        }),
    );

    if (_SignInDialogTextEditingControllers.containsKey(UsernameValueKey)) {
      _SignInDialogTextEditingControllers[UsernameValueKey]?.text = value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          PasswordValueKey: value,
        }),
    );

    if (_SignInDialogTextEditingControllers.containsKey(PasswordValueKey)) {
      _SignInDialogTextEditingControllers[PasswordValueKey]?.text = value ?? '';
    }
  }

  bool get hasUsername =>
      this.formValueMap.containsKey(UsernameValueKey) &&
      (usernameValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);

  bool get hasUsernameValidationMessage =>
      this.fieldsValidationMessages[UsernameValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;

  String? get usernameValidationMessage =>
      this.fieldsValidationMessages[UsernameValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
}

extension Methods on FormViewModel {
  setUsernameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[UsernameValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    usernameValue = '';
    passwordValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      UsernameValueKey: getValidationMessage(UsernameValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _SignInDialogTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _SignInDialogTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormViewModel model) => model.setValidationMessages({
      UsernameValueKey: getValidationMessage(UsernameValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
    });
