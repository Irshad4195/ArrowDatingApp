import 'package:arrow_dating_app/blocs/ImageSwipe/bloc/swipe_bloc.dart';
import 'package:arrow_dating_app/custom_widgets/choice_button.dart';
import 'package:arrow_dating_app/custom_widgets/custom_appbar.dart';
import 'package:arrow_dating_app/custom_widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context, state) {
          if (state is SwipeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SwipeLoaded) {
            return Column(
              children: [
                Draggable(
                  feedback: UserCard(user: state.users[0]),
                  childWhenDragging: UserCard(user: state.users[1]),
                  onDragEnd: (details) {
                    if (details.velocity.pixelsPerSecond.dx < 0) {
                      context
                          .read<SwipeBloc>()
                          .add(SwipeLeftEvent(user: state.users[0]));
                      print("Swiped Left");
                    } else {
                      context
                          .read<SwipeBloc>()
                          .add(SwipeRightEvent(user: state.users[0]));
                      print("Swiped Right");
                    }
                  },
                  child: UserCard(user: state.users[0]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ChoiceButton(
                          width: 60,
                          height: 60,
                          color: Theme.of(context).hintColor,
                          size: 25,
                          hasGradient: false,
                          icon: Icons.clear_rounded),
                      const ChoiceButton(
                          width: 80,
                          height: 80,
                          color: Colors.white,
                          size: 30,
                          hasGradient: true,
                          icon: Icons.favorite),
                      ChoiceButton(
                          width: 60,
                          height: 60,
                          color: Theme.of(context).primaryColor,
                          size: 25,
                          hasGradient: false,
                          icon: Icons.watch_later),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: Text("Error"),
            );
          }
        },
      ),
    );
  }
}
