import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';

class HomeState {
  final List<SectionEntity> sections;

  const HomeState({this.sections = const []});

  HomeState copyWith({List<SectionEntity>? sections}) {
    return HomeState(sections: sections ?? this.sections);
  }
}
