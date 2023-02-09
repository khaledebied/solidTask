part of 'task_imports.dart';

/// this taskController class responsible for containing Task test methods
class TaskController {
  ///method used to handle splash routing
  void handleSplashRoute(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).push(
        MaterialPageRoute<Widget>(
          builder: (context) => const TaskPage(),
        ),
      );
    });
  }

  /// method used to get random colors
  Color getRandomColor() {
    return Color(Random().nextInt(AppConstants.initHexNumber))
        .withAlpha(AppConstants.alphaHexNumber);
  }
}
