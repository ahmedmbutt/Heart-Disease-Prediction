import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final int result;
  const OutputScreen({super.key,required this.result});

  @override
  Widget build(BuildContext context) {
    String title=result==1?"Disease Detected":"Disease not detected";
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: result==1
        ? Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
                //    disease detected
          children: [
              Text("Based on the analysis, signs of heart disease have been detected. It is crucial to take this result seriously and follow up with a healthcare professional as soon as possible. Early detection and treatment can significantly improve outcomes.",style: Theme.of(context).textTheme.bodyLarge,),
              Center(child: Text("Recommendation",style: Theme.of(context).textTheme.headlineMedium,)),
              Row(
                children: [
                  const Text("Consult a Cardiologist"),const Icon(Icons.local_hospital),
                ],
              ),
              Text("Schedule an appointment with a cardiologist to discuss your results and determine the next steps.",style: Theme.of(context).textTheme.bodyLarge,),
              Row(
                children: [
                  const Text("Lifestyle Changes"),const Icon(Icons.restaurant_menu),
                ],
              ),
              Text("Adopt a heart-healthy lifestyle. This includes eating a balanced diet rich in fruits, vegetables, whole grains, and lean proteins. Avoid saturated fats, trans fats, and excessive sodium.",style: Theme.of(context).textTheme.bodyLarge,),
              Row(
                children: [
                  const Text("Regular Exercise"),const Icon(Icons.fitness_center),
                ],
              ),
              Text("Engage in regular physical activity. Aim for at least 150 minutes of moderate-intensity exercise or 75 minutes of vigorous-intensity exercise each week.",style: Theme.of(context).textTheme.bodyLarge,),
              Row(
                children: [
                  const Text("Monitor Your Health"),const Icon(Icons.monitor_heart),
                ],
              ),
              Text("Keep track of your blood pressure, cholesterol levels, and other vital signs. Regular monitoring can help you and your healthcare provider manage your condition more effectively.",style: Theme.of(context).textTheme.bodyLarge,),
              Row(
                children: [
                  const Text("Medications"),const Icon(Icons.medication),
                ],
              ),
              Text("If prescribed, take your medications as directed by your healthcare provider. Do not skip doses or stop taking your medication without consulting your doctor.",style: Theme.of(context).textTheme.bodyLarge,),
              Row(
                children: [
                  const Text("Avoid Smoking and Alcohol"),const Icon(Icons.smoke_free),
                ],
              ),
              Text("Quit smoking and limit alcohol consumption. Both can have adverse effects on your heart health.",style: Theme.of(context).textTheme.bodyLarge,),
              Row(
                children: [
                  const Text("Stress Management"),const Icon(Icons.self_improvement),
                ],
              ),
              Text("Practice stress-reducing techniques such as meditation, yoga, or deep breathing exercises. Managing stress is important for maintaining overall heart health.",style: Theme.of(context).textTheme.bodyLarge,),
          ],
                ),
        )
        :Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
                //   disease not detected
          children: [
                Text("Based on the analysis, no signs of heart disease have been detected. This is a positive result, but it's important to continue maintaining a heart-healthy lifestyle to reduce the risk of future heart-related issues.",style: Theme.of(context).textTheme.bodyLarge,),
                Center(child: Text("Recommendation",style: Theme.of(context).textTheme.headlineMedium,)),
                Row(
                  children: [
                    const Text("Balanced Diet"),const Icon(Icons.restaurant_menu),
                  ],
                ),
                Text("Continue to eat a nutritious diet that includes a variety of fruits, vegetables, whole grains, and lean proteins. Limit the intake of unhealthy fats, sugars, and salt.",style: Theme.of(context).textTheme.bodyLarge,),
                Row(
                  children: [
                    const Text("Regular Exercise"),const Icon(Icons.fitness_center),
                  ],
                ),
                Text("Keep up with regular physical activity. Aim for at least 150 minutes of moderate-intensity exercise or 75 minutes of vigorous-intensity exercise each week.",style: Theme.of(context).textTheme.bodyLarge,),
                Row(
                  children: [
                    const Text("Routine Check-ups"),const Icon(Icons.local_hospital),
                  ],
                ),
                Text("Schedule regular check-ups with your healthcare provider to monitor your heart health and catch any potential issues early.",style: Theme.of(context).textTheme.bodyLarge,),
                Row(
                  children: [
                    const Text("Avoid Smoking and Limit Alcohol"),const Icon(Icons.smoke_free),
                  ],
                ),
                Text("Avoid smoking and limit alcohol consumption, as both can have harmful effects on your heart.",style: Theme.of(context).textTheme.bodyLarge,),
                Row(
                  children: [
                    const Text("Healthy Weight"),const Icon(Icons.monitor_weight),
                  ],
                ),
                Text("Maintain a healthy weight. If you are overweight, even a small amount of weight loss can improve your heart health.",style: Theme.of(context).textTheme.bodyLarge,),
                Row(
                  children: [
                    const Text("Manage Stress"),const Icon(Icons.self_improvement),
                  ],
                ),
                Text("Practice stress management techniques such as meditation, yoga, or other relaxation methods to keep your stress levels in check.",style: Theme.of(context).textTheme.bodyLarge,)

                ],
                ),
        )
    );
  }
}
