import 'package:stackerbee_app/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed(this.data) : status = Status.COMPLETED;
  ApiResponse.error(this.message) : status = Status.ERROR;

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, T Function(Map<String, dynamic>) fromJsonT) {
    return ApiResponse<T>(
      Status.COMPLETED,
      fromJsonT(
          json['message']), // Pass the 'message' object directly to fromJsonT
      json['full_name'], // Get the 'full_name' value from the top-level JSON
    );
  }

  @override
  String toString() {
    return "Status: $status\nMessage: $message\nData: $data";
  }
}
