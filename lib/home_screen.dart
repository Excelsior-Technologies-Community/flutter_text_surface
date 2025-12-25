import 'package:flutter/material.dart';
import 'package:flutter_text_surface/widgets/text_surface/animated_text_surface.dart';
import 'package:flutter_text_surface/widgets/text_surface/text_surface_animation.dart';
import 'package:flutter_text_surface/widgets/text_surface/text_surface_style.dart';
import '../../widgets/text_surface/text_surface.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TextSurface Demo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextSurface(
              text:
                  'TextSurface ek reusable widget hai jo future me library ke liye perfect hai.',
              // overflow: TextOverflow.visible,
            ),
            SizedBox(height: 16),
            TextSurface(
              text:
                  'Ye long text handle karta hai aur overflow ko automatically manage karta hai.',
              maxLines: 2,
              overflow: TextOverflow.clip,
              textStyle: TextStyle(color: Colors.white),
              style: TextSurfaceStyle(
                backgroundColor: Colors.red,
                padding: EdgeInsets.all(30),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 20),
            AnimatedTextSurface(
              text: "SLIDE & FADE",
              animation: TextSurfaceAnimation.slideFade,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            AnimatedTextSurface(
              text: "BOUNCE EFFECT",
              animation: TextSurfaceAnimation.bounce,
              style: TextStyle(
                color: Colors.green,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),
            AnimatedTextSurface(
              text: "RAINBOW / WAVE",
              animation: TextSurfaceAnimation.wave,
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            AnimatedTextSurface(
              text: "Scale Color Effect",
              animation: TextSurfaceAnimation.scaleColor,
              style: TextStyle(
                color: Colors.purple,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
