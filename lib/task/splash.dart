part of 'task_imports.dart';
/// Splash class used to show the UI of initial page
class Splash extends StatefulWidget {
  /// splash constructor
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  TaskController taskController = TaskController();

  @override
  void initState() {
    taskController.handleSplashRoute(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.teal,
        child: Center(
          child: AnimationContainer(
            index: AppConstants.animationIndex,
            vertical: true,
            duration: const Duration(milliseconds: 600),
            child: SvgPicture.asset(
              AppConstants.logo,
              width: AppConstants.logoWidth,
              height: AppConstants.logoHeight,
            ),
          ),
        ),
      ),
    );
  }
}
