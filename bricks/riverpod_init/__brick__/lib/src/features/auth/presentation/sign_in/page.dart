import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:{{app_name.snakeCase()}}/src/features/auth/application/sign_in_provider.dart';
import 'package:{{app_name.snakeCase()}}/src/features/shared/presentation/buttons/button.dart';
import 'package:{{app_name.snakeCase()}}/src/features/shared/presentation/failures/failures.dart';
import 'package:{{app_name.snakeCase()}}/src/helper/theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signIn = ref.watch(signInProvider);

    final form = useMemoized(
        () => FormGroup({
              'email': FormControl<String>(),
              'password': FormControl<String>(),
            }),
        []);

    final submit = useCallback(() {
      ref.watch(signInProvider.notifier).submit(form.value);
    }, []);

    ref.listen(signInProvider, (previous, next) {
      if (next.isError) {
        handleFailureWidget(context: context, error: next.error);
      }
    });

    return ReactiveForm(
      formGroup: form,
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          children: [
            Text(
              '{{app_name.snakeCase()}}',
              textAlign: TextAlign.center,
              style: context.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: ReactiveTextField(
                formControlName: 'email',
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Email',
                  hintText: 'Email',
                ),
              ),
            ),
            const Gap(15),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: ReactiveTextField(
                formControlName: 'password',
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Password',
                  hintText: 'Password',
                ),
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: FilledButtonWidget(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(20, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                isLoading: signIn.isLoading,
                onPressed: submit,
                label: 'Masuk',
              ),
            ),
            const Gap(220),
          ],
        ),
      ),
    );
  }
}
