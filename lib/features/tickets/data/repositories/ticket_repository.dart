import 'package:uts_mobile_newest/core/constants/app_constants.dart';
import 'package:uts_mobile_newest/features/tickets/data/models/ticket_model.dart';

class TicketRepository {
  // Simulasi data
  final List<Ticket> _tickets = [
    Ticket(id: '1', title: 'Laptop rusak', description: 'Gak nyala', status: TicketStatus.open, createdBy: 'user1', createdAt: DateTime.now()),
    Ticket(id: '2', title: 'Printer error', description: 'Kertas nyangkut', status: TicketStatus.assigned, createdBy: 'user1', assignedTo: 'Technician 1', createdAt: DateTime.now()),
  ];

  List<Ticket> getTicketsByUser(String username) {
    return _tickets.where((t) => t.createdBy == username).toList();
  }

  List<Ticket> getAllTickets() => _tickets;
}