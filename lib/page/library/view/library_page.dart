import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/page/library/bloc/library_bloc.dart';
import 'package:ielts_practice_mobile/page/library/view/library_view.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: LibraryBloc()
        ..add(
          const LibraryEvent.started(),
        ),
      child: const LibraryView(),
    );
  }
}
