import 'package:flutter/material.dart';
import 'package:testes_clean/modules/home/presentation/components/box_trivia.dart';
import 'package:testes_clean/modules/home/presentation/cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeCubit _cubit = HomeCubit();

  @override
  void initState() {
    super.initState();
    _cubit.getTrivia();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _cubit.getTrivia(),
        child: Icon(Icons.refresh),
      ),
      body: BlocConsumer<HomeCubit, HomeState>(
        bloc: _cubit,
        listener: (context, state) {
          if (state is HomeErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeTriviaState) {
            return Center(
              child: BoxTrivia(trivia: state.trivia.trivia),
            );
          }
          return Center(
            child: Text('Sem trivias'),
          );
        },
      ),
    );
  }
}
