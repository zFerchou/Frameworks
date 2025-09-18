import 'package:flutter/material.dart';
import '../models/framework_model.dart';

class FrameworkCard extends StatelessWidget {
  final FrameworkModel framework;
  final VoidCallback onTap;

  const FrameworkCard({required this.framework, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Hero(
                tag: framework.id,
                child: SizedBox(
                  width: 64,
                  height: 64,
                  child: Image.asset(framework.imageAsset),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(framework.name, style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 6),
                    Text(framework.shortDescription, maxLines: 2, overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
