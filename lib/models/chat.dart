
import 'package:cloud_firestore/cloud_firestore.dart';

class Chat {
  final String roomId;
  final String message;
  final String receveId;
  final String senderId;
  final Map? bikeDetail;
  final Timestamp? timestamp;
  Chat({
    required this.roomId,
    required this.message,
    required this.receveId,
    required this.senderId,
    this.bikeDetail,
    this.timestamp,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'roomId': roomId,
      'message': message,
      'receveId': receveId,
      'senderId': senderId,
      'bikeDetail': bikeDetail,
      'timestamp': FieldValue.serverTimestamp(),
    };
  }

  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      roomId: json['roomId'] as String,
      message: json['message'] as String,
      receveId: json['receveId'] as String,
      senderId: json['senderId'] as String,
      bikeDetail: json['bikeDetail'] != null 
        ? Map.from(json['bikeDetail'] as Map<String,dynamic>) 
        : null,
      timestamp: json['timestamp'],
    );
  }
}
