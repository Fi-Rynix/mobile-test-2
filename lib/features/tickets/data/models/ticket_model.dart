import 'package:uts_mobile_newest/core/constants/app_constants.dart';
import 'package:uts_mobile_newest/features/tickets/data/models/comment_model.dart';

class Ticket {
  final String id;
  final String title;
  final String description;
  final TicketStatus status;
  final String createdBy;
  final String? assignedTo;
  final DateTime createdAt;

  Ticket({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.createdBy,
    this.assignedTo,
    required this.createdAt,
  });
}