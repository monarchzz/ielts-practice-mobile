import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/widget/failure_widget.dart';
import 'package:ielts_practice_mobile/common/widget/loading_dialog.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/page/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:ielts_practice_mobile/page/home/home.dart';
import 'package:ielts_practice_mobile/page/library/library.dart';
import 'package:ielts_practice_mobile/page/profile/profile.dart';
import 'package:ielts_practice_mobile/page/study_programme/study_programme.dart';

class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({super.key});

  final List<Widget> _viewItems = <Widget>[
    const HomePage(),
    const StudyProgrammePage(),
    const LibraryPage(),
    const ProfilePage()
  ];

  void _handleItemTapped(int index, BuildContext context) {
    context
        .read<BottomNavigationBloc>()
        .add(BottomNavigationEvent.bottomNavigationIndexChanged(index));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        final currentIndex = state.mapOrNull(
          success: (value) => value.bottomNavigationIndex,
        );

        final l10n = context.l10n;

        return Scaffold(
          backgroundColor: AppColor.background,
          body: SafeArea(
            child: state.map(
              initial: (_) => const LoadingDialog(),
              loading: (_) => const LoadingDialog(),
              success: (value) =>
                  currentIndex == null ? Container() : _viewItems[currentIndex],
              failure: (value) => FailureWidget(
                message: value.message,
              ),
            ),
          ),
          bottomNavigationBar: currentIndex == null
              ? null
              : BottomNavigationBar(
                  backgroundColor: AppColor.background,
                  items: [
                    BottomNavigationBarItem(
                      icon: const Icon(
                        Icons.home,
                      ),
                      label: l10n.home,
                    ),
                    BottomNavigationBarItem(
                      icon: const Icon(
                        Icons.menu_book_outlined,
                      ),
                      label: l10n.studyProgramme,
                    ),
                    BottomNavigationBarItem(
                      icon: const Icon(
                        Icons.library_books_outlined,
                      ),
                      label: l10n.library,
                    ),
                    BottomNavigationBarItem(
                      icon: const Icon(
                        Icons.settings_outlined,
                      ),
                      label: l10n.profile,
                    ),
                  ],
                  currentIndex: currentIndex,
                  selectedItemColor: AppColor.primary,
                  unselectedItemColor: AppColor.silver,
                  onTap: (value) => _handleItemTapped(value, context),
                ),
        );
      },
    );
  }
}
