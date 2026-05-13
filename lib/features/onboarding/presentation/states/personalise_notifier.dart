import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/onboarding/presentation/states/personalise_state.dart';

final personaliseNotifierProvider =
    StateNotifierProvider<PersonaliseNotifier, PersonaliseState>(
      (ref) => PersonaliseNotifier(),
    );

class PersonaliseNotifier extends StateNotifier<PersonaliseState> {
  PersonaliseNotifier() : super(PersonaliseState(interests: []));

  void toggleInterests(String interest) {
    final updated = Set<String>.from(state.interests);
    if (updated.contains(interest)) {
      updated.remove(interest);
    } else {
      updated.add(interest);
    }

    state = state.copyWith(interests: updated.toList());
  }
}

abstract class InterestsData {
  static const List<String> interests = [
    'User Interface',
    'User Experience',
    'User Research',
    'UX Writing',
    'User Testing',
    'Service Design',
    'Strategy',
    'Design Systems',
  ];
}
