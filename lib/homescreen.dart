import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state/riverpod/counter_provider.dart';


class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context,  WidgetRef ref) {
    print('Called');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                // display the value
                Consumer(builder: (context, ref, _) {
                  final count = ref.watch(counterProvider);
                  return Text(
                    '$count',
                    style: const TextStyle(fontSize: 40),
                  );
                }),

                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: Colors.red,
                      elevation: 0.0,
                      height: 50,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: const Text(
                        "-", style: TextStyle(fontSize: 22, color: Colors
                          .white),),
                      onPressed: () {
                        //called the action
                        ref.read(counterProvider.notifier).state--;
                      },
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    MaterialButton(
                      color: Colors.green,
                      elevation: 0.0,
                      height: 50,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: const Text(
                        "+", style: TextStyle(fontSize: 22, color: Colors
                          .white),),
                      onPressed: () {
                        //called the action
                        ref.read(counterProvider.notifier).state++;
                      },
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
