import 'package:flutter/material.dart';
import 'package:mobile_showcases/apple_music/components/wave_bar.dart';

class WaveMusicEffect extends StatefulWidget {
  const WaveMusicEffect({Key? key}) : super(key: key);

  @override
  State<WaveMusicEffect> createState() => _WaveMusicEffectState();
}

class _WaveMusicEffectState extends State<WaveMusicEffect> {
  double bar1Scale = 1.0;
  double bar2Scale = 1.0;
  double bar3Scale = 1.0;
  double bar4Scale = 1.0;

  double bar1Height1 = 40;
  double bar2Height1 = 20;
  double bar3Height1 = 20;
  double bar4Height1 = 40;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        WaveBar(
          barScale: bar1Scale,
          barHeight: bar1Height1,
          updateScale: (newScale) {
            setState(
              () {
                bar1Scale = newScale;
              },
            );
          },
          duration: 500,
        ),
        const SizedBox(
          width: 4,
        ),
        WaveBar(
          barScale: bar2Scale,
          barHeight: bar2Height1,
          updateScale: (newScale) {
            setState(
              () {
                bar2Scale = newScale;
              },
            );
          },
          duration: 250,
        ),
        const SizedBox(
          width: 4,
        ),
        WaveBar(
          barScale: bar3Scale,
          barHeight: bar3Height1,
          updateScale: (newScale) {
            setState(
              () {
                bar3Scale = newScale;
              },
            );
          },
          duration: 375,
        ),
        const SizedBox(
          width: 4,
        ),
        WaveBar(
          barScale: bar4Scale,
          barHeight: bar4Height1,
          updateScale: (newScale) {
            setState(
              () {
                bar4Scale = newScale;
              },
            );
          },
          duration: 500,
        ),
      ],
    );
  }
}
