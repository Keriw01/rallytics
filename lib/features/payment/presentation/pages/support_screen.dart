import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rallytics/core/di/injection.dart';
import 'package:rallytics/core/presentation/widgets/tennis_ball_loader/tennis_ball_loader.dart';
import 'package:rallytics/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:rallytics/generated/l10n.dart';
import 'package:rallytics/helpers/error_message_helper.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentBloc>(),
      child: const _SupportView(),
    );
  }
}

class _SupportView extends StatefulWidget {
  const _SupportView();

  @override
  State<_SupportView> createState() => __SupportViewState();
}

class __SupportViewState extends State<_SupportView> {
  int? _selectedAmount;
  late final TextEditingController _ownAmountController;

  @override
  void initState() {
    super.initState();
    _ownAmountController = TextEditingController();
  }

  @override
  void dispose() {
    _ownAmountController.dispose();
    super.dispose();
  }

  int? get _activeAmount {
    if (_selectedAmount != null) {
      return _selectedAmount;
    }
    if (_ownAmountController.text.isNotEmpty) {
      return int.tryParse(_ownAmountController.text);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).supportMeTitle),
      ),
      body: BlocConsumer<PaymentBloc, PaymentState>(
        listener: (context, state) {
          state.maybeWhen(
            readyToPay: (clientSecret) {
              context.read<PaymentBloc>().add(
                PaymentEvent.paymentConfirmed(clientSecret: clientSecret),
              );
            },
            error: (paymentErrorCode) {
              final errorMessage = getErrorMessage(context, paymentErrorCode);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(errorMessage)));
            },
            success: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(S.of(context).paymentSuccessMessage)),
              );
              context.goNamed('dashboard');
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          final bool isLoading = state is Loading;

          return Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Column(
                      children: [
                        GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 32,
                          crossAxisSpacing: 32,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [2, 5, 10, 15].map((amount) {
                            final isSelected = _selectedAmount == amount;
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedAmount = isSelected ? null : amount;
                                  _ownAmountController.clear();
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? Theme.of(
                                          context,
                                        ).colorScheme.surfaceContainerHighest
                                      : Theme.of(context).colorScheme.surface,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.surfaceContainerHighest,
                                    width: 2,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '$amount zł',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 32),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: TextField(
                            controller: _ownAmountController,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 16,
                              ),
                              filled: true,
                              hintText: S.of(context).supportMeHintText,
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              setState(() {
                                _selectedAmount = null;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 32),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              onPressed:
                                  ((_activeAmount ?? 0) > 0 && !isLoading)
                                  ? () {
                                      final amountToPay = _activeAmount;
                                      if (amountToPay == null) return;

                                      context.read<PaymentBloc>().add(
                                        PaymentEvent.paymentIntentCreationRequested(
                                          amount: amountToPay,
                                          currency: 'pln',
                                        ),
                                      );
                                    }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(S.of(context).paymentButton),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              if (isLoading) const TennisBallLoader(),
            ],
          );
        },
      ),
    );
  }
}
