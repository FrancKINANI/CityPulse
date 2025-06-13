import 'dart:io';
import 'package:path/path.dart' as p;

void main() {
  final sourceDir = Directory('lib/screens');
  final targetDir = Directory('lib/features/legacy');

  if (!sourceDir.existsSync()) {
    print('lib/screens not found');
    return;
  }
  if (!targetDir.existsSync()) {
    targetDir.createSync(recursive: true);
  }

  for (final entity in sourceDir.listSync(recursive: false)) {
    final name = p.basename(entity.path);
    final newPath = p.join(targetDir.path, name);
    if (entity is File) {
      entity.renameSync(newPath);
      print('Moved file: $name');
    } else if (entity is Directory) {
      entity.renameSync(newPath);
      print('Moved directory: $name');
    }
  }

  // Remove the now-empty lib/screens directory
  if (sourceDir.existsSync()) {
    sourceDir.deleteSync(recursive: true);
    print('Removed lib/screens');
  }
}
