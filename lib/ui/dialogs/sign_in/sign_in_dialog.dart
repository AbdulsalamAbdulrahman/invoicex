import 'package:flutter/material.dart';
import 'package:invoicex/ui/common/app_colors.dart';
import 'package:invoicex/ui/common/shared_styles.dart';
import 'package:invoicex/ui/common/ui_helpers.dart';
import 'package:invoicex/ui/dialogs/sign_in/sign_in_dialog.form.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'sign_in_dialog_model.dart';

@FormView(fields: [
  FormTextField(name: 'username'),
  FormTextField(name: 'password'),
])
class SignInDialog extends StackedView<SignInDialogModel> with $SignInDialog {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const SignInDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignInDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Stack(
        children: [
          SizedBox(
            height: 400,
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'SIGN',
                    children: const <TextSpan>[
                      TextSpan(text: ' IN', style: TextStyle(color: kcPurple))
                    ],
                    style: ktsTitleText.copyWith(
                      fontSize: getValueForScreenType<double>(
                        context: context,
                        mobile: 15,
                        desktop: 50,
                      ),
                    ),
                  ),
                ),
                verticalSpaceMedium,
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Form(
                      child: Column(
                    children: [
                      TextFormField(
                        controller: usernameController,
                        decoration:
                            viewModel.decorate(Icons.person, 'Your username'),
                      ),
                      verticalSpaceMedium,
                      TextFormField(
                        controller: passwordController,
                        decoration:
                            viewModel.decorate(Icons.lock, 'Your password'),
                      ),
                      verticalSpaceMedium,
                      ElevatedButton(
                          onPressed: viewModel.navigateToUserProfile,
                          child: const Text('Sign In'))
                    ],
                  )),
                )
              ],
            ),
          ),
          //your code,
          Positioned(
            right: 10,
            top: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  key: Key('closeIconKey'),
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.close,
                    color: kcBlack,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  SignInDialogModel viewModelBuilder(BuildContext context) =>
      SignInDialogModel();
}
