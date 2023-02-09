part of 'task_imports.dart';

///TaskPage class used to show the UI code for the testTask
class TaskPage extends StatefulWidget {
  /// TestPage Constructor
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  TaskController taskController = TaskController();
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeColor(context),
      child: Scaffold(
        backgroundColor: taskController.getRandomColor(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimationContainer(
                index: AppConstants.animationIndex,
                vertical: false,
                duration: const Duration(milliseconds: 400),
                child: Text(
                  "Hey there !",
                  style: TextStyle(
                    fontSize: AppConstants.font50,
                    color: taskController.getRandomColor(),
                  ),
                ),
              ),
              AnimationContainer(
                index: AppConstants.animationIndex,
                vertical: true,
                duration: const Duration(milliseconds: 500),
                child: Offstage(
                  offstage: isTapped,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppConstants.padding20,
                      horizontal: AppConstants.padding15,
                    ),
                    child: Text(
                      "Please , Tap anywhere on the screen to change app Color",
                      style: TextStyle(
                        color: taskController.getRandomColor(),
                        fontSize: AppConstants.font17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onChangeColor(BuildContext context) {
    setState(() {
      taskController.getRandomColor();
      isTapped = true;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.padding10),
        ),
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        duration: const Duration(milliseconds: 500),
        backgroundColor: taskController.getRandomColor(),
        content: Text(
          "Solid Software test app color Changed successfully",
          style: TextStyle(color: taskController.getRandomColor()),
        ),
      ),
    );
  }
}
