import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/core/build_variants/enum.dart';
import 'package:project_init/core/config/environment_helper.dart';
import 'package:project_init/core/route/app_router.dart';
import 'package:project_init/enum/the_states.dart';
import 'package:project_init/features/common/app_scaffold.dart';
import 'package:project_init/features/common/app_spacing.dart';
import 'package:project_init/features/common/app_state_wrapper.dart';
import 'package:project_init/features/common/app_text_form_field.dart';
import 'package:project_init/features/login/presentation/bloc/login_bloc.dart';
import 'package:project_init/utlis/app_flushbar.dart';
import 'package:project_init/utlis/uihelper.dart';
import 'package:upgrader/upgrader.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePassword = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initCredentials();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return UpgradeAlert(
      dialogStyle: Platform.isIOS
          ? UpgradeDialogStyle.cupertino
          : UpgradeDialogStyle.material,
      showIgnore: false,
      child: AppScaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state.theStates == TheStates.success) {
                    Navigator.pop(context);
                    AutoRouter.of(context).replace(const HomeRoute());
                  } else if (state.theStates == TheStates.error) {
                    Navigator.pop(context);
                    AppFlushbar.error(context);
                  }
                },
                listenWhen: (previous, current) =>
                    previous.theStates != current.theStates,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<LoginBloc, LoginState>(
                      buildWhen: (previous, current) =>
                          previous.theStates != current.theStates,
                      builder: (context, state) {
                        return AppStateWrapper(
                          successChild: Text(state.theStates.name),
                          theStates: state.theStates,
                        );
                      },
                    ),
                    const VerticalSpacing(16),
                    const Text(
                      'Welcome back!',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                    ),
                    const VerticalSpacing(12),
                    const Text(
                      'Log in to access your account and start using our services.',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textFieldGrey,
                      ),
                    ),
                    const VerticalSpacing(12),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          AppTextFormField(
                            hintText: 'Email',
                            textEditingController: emailController,
                            validator: ValidationBuilder().email().build(),
                          ),
                          const VerticalSpacing(12),
                          AppTextFormField(
                            hintText: 'Password',
                            textEditingController: passwordController,
                            obscureText: hidePassword,
                            textInputAction: TextInputAction.done,
                            suffixIcon: IconButton(
                              icon: Icon(
                                hidePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppColors.primaryDark,
                              ),
                              onPressed: () {
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                            ),
                            validator: ValidationBuilder().minLength(6).build(),
                          ),
                        ],
                      ),
                    ),
                    const VerticalSpacing(12),
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            child: const Text('Login'),
                            onPressed: () {
                              final isFormValid =
                                  _formKey.currentState!.validate();
                              if (isFormValid) {
                                UiHelper.showloaderdialog(context);
                                BlocProvider.of<LoginBloc>(context)
                                    .add(const LoginEvent.login());
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _initCredentials() {
    if (kDebugMode) {
      if (EnvironmentHelper().getValue(EnvironmentKey.env) ==
          AppEnvironment.development.name) {
        emailController.text = 'test@test.com';
        passwordController.text = 'test123';
      } else {
        emailController.text = 'test@test.com';
        passwordController.text = 'test123';
      }
    }
  }
}
