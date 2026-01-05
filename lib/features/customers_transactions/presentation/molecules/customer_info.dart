import 'package:flutter/material.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/context.extensions.dart';
import '../organisms/customer_contact_card.dart';
import '../organisms/customer_notes_list.dart';
import 'customer_note_text_field.dart';

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        crossAxisAlignment: .start,
        children: [
          const CustomerContactCard(),
          Text(AppConstants.customerNotesLabel, style: context.textTheme.titleLarge),
          const CustomerNoteTextField(),
          const Expanded(child: CustomerNotesList()),
        ],
      ),
    );
  }
}
