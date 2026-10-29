import 'package:flutter/material.dart';
import '../models/operations_module.dart';

const modules = <OperationsModule>[
  OperationsModule('Billing & Payments', 'Invoices, transactions, and refunds', Icons.payments_outlined),
  OperationsModule('Customer Service', 'Tickets, agents, and escalations', Icons.support_agent),
  OperationsModule('Shipments', 'Delivery tracking and carriers', Icons.local_shipping_outlined),
  OperationsModule('Warehouse Management', 'Inventory and storage locations', Icons.warehouse_outlined),
  OperationsModule('Video Streaming', 'Content and viewing history', Icons.movie_outlined),
  OperationsModule('Audio Streaming', 'Music, albums, and playlists', Icons.library_music_outlined),
  OperationsModule('Customer Support System', 'Live chat and help articles', Icons.forum_outlined),
  OperationsModule('Product & Service Comments', 'Ratings, comments, and reports', Icons.rate_review_outlined),
  OperationsModule('Corporate Relationships', 'Offices, vendors, and partnerships', Icons.account_tree_outlined),
];

