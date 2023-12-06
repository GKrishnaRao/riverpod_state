import 'package:riverpod/riverpod.dart';


//we use StateProvider to create a provider that holds an integer state with an initial value of 0.
/// Providers are declared globally and specify how to create a state
final counterProvider = StateProvider((ref) => 0);