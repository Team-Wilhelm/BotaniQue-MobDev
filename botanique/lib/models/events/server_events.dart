import 'package:botanique/models/events/client_events.dart';
import 'package:image_picker/image_picker.dart';

class ServerSendsImageWithoutBackground extends BaseEvent {
  final XFile image;

  ServerSendsImageWithoutBackground(this.image);
}