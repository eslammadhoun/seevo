import 'package:flutter/material.dart';
import '../../app.dart';
import 'seevo_dimens.dart';
import 'seevo_theme.dart';
import 'seevo_typography.dart';

/// Temporary developer screen to check the theme against Figma.
/// Removed in Sprint 1 when real screens and routing arrive.
class ThemePreviewScreen extends StatelessWidget {
  const ThemePreviewScreen({
    required this.mode,
    required this.onModeChanged,
    super.key,
  });

  final SeevoThemeMode mode;
  final ValueChanged<SeevoThemeMode> onModeChanged;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final t = context.textStyles;
    return Scaffold(
      appBar: AppBar(title: const Text('Seevo theme')),
      body: ListView(
        padding: const EdgeInsets.all(SeevoSpacing.lg),
        children: [
          SegmentedButton<SeevoThemeMode>(
            segments: const [
              ButtonSegment(value: SeevoThemeMode.system, label: Text('Auto')),
              ButtonSegment(value: SeevoThemeMode.light, label: Text('Light')),
              ButtonSegment(value: SeevoThemeMode.dark, label: Text('Dark')),
            ],
            selected: {mode},
            onSelectionChanged: (s) => onModeChanged(s.first),
          ),
          const SizedBox(height: SeevoSpacing.xl),
          Text('Seevo', style: t.displaySmall),
          Text('Point. See. Know.', style: t.headlineMedium),
          Text('4 objects found', style: t.titleLarge),
          Text(
            'Aim your camera at anything and Seevo tells you what it sees.',
            style: t.bodyLarge?.copyWith(color: c.textSecondary),
          ),
          Text('VOICE & FEEDBACK', style: t.labelSmall),
          const SizedBox(height: SeevoSpacing.xl),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.photo_camera_outlined),
            label: const Text('Allow camera'),
          ),
          const SizedBox(height: SeevoSpacing.md),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.image_outlined),
            label: const Text('Pick a photo instead'),
          ),
          const SizedBox(height: SeevoSpacing.md),
          TextButton(onPressed: () {}, child: const Text('Not now')),
          const SizedBox(height: SeevoSpacing.xl),
          SwitchListTile(
            value: true,
            onChanged: (_) {},
            secondary: const Icon(Icons.volume_up_outlined),
            title: const Text('Voice feedback'),
            subtitle: const Text('Speak detected objects aloud'),
          ),
          Slider(value: 0.5, onChanged: (_) {}),
          const SizedBox(height: SeevoSpacing.xl),
          _DetectionLabel(label: 'cup', confidence: '88%', color: c.detectBox),
          const SizedBox(height: SeevoSpacing.sm),
          _DetectionLabel(
            label: 'potted plant',
            confidence: '91%',
            color: c.detectBoxAlt,
          ),
        ],
      ),
    );
  }
}

class _DetectionLabel extends StatelessWidget {
  const _DetectionLabel({
    required this.label,
    required this.confidence,
    required this.color,
  });

  final String label;
  final String confidence;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final textColor = context.colors.detectLabelText;
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(SeevoRadius.sm),
        ),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '$label ',
                style: SeevoTypography.detectionLabel.copyWith(
                  color: textColor,
                ),
              ),
              TextSpan(
                text: confidence,
                style: SeevoTypography.caption.copyWith(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
