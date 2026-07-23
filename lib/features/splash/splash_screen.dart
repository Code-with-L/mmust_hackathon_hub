import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../authentication/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
          () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(
                Icons.rocket_launch,
                size: 90,
                  color: Theme.of(context).colorScheme.primary,
              ),

              const SizedBox(height: 25),


                Text(
                  "MMUST Hackathon Hub",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),


              const SizedBox(height: 12),

              Text(
                "Hack. Build. Innovate.",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 40),

              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}