class AppointmentResponse {
  Client? client;
  String? createdAt;
  int? id;
  Client? professional;
  String? scheduledAt;
  Service? service;
  String? status;
  String? updatedAt;

  AppointmentResponse({
    this.client,
    this.createdAt,
    this.id,
    this.professional,
    this.scheduledAt,
    this.service,
    this.status,
    this.updatedAt,
  });

  AppointmentResponse.fromJson(Map<String, dynamic> json) {
    client = json['client'] != null ? Client.fromJson(json['client']) : null;
    createdAt = json['createdAt'];
    id = json['id'] as int?;
    professional = json['professional'] != null
        ? Client.fromJson(json['professional'])
        : null;
    scheduledAt = json['scheduledAt'];
    service = json['service'] != null
        ? Service.fromJson(json['service'])
        : null;
    status = json['status'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (client != null) data['client'] = client!.toJson();
    data['createdAt'] = createdAt;
    data['id'] = id;
    if (professional != null) data['professional'] = professional!.toJson();
    data['scheduledAt'] = scheduledAt;
    if (service != null) data['service'] = service!.toJson();
    data['status'] = status;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class Client {
  String? createdAt;
  String? email;
  int? id;
  String? name;
  String? password;
  String? role;

  Client({
    this.createdAt,
    this.email,
    this.id,
    this.name,
    this.password,
    this.role,
  });

  Client.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    email = json['email'];
    id = json['id'] as int?;
    name = json['name'];
    password = json['password'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['createdAt'] = createdAt;
    data['email'] = email;
    data['id'] = id;
    data['name'] = name;
    data['password'] = password;
    data['role'] = role;
    return data;
  }
}

class Service {
  bool? isActive;
  String? description;
  int? durationMinutes;
  int? id;
  String? name;
  double? price;
  Client? professional;

  Service({
    this.isActive,
    this.description,
    this.durationMinutes,
    this.id,
    this.name,
    this.price,
    this.professional,
  });

  Service.fromJson(Map<String, dynamic> json) {
    isActive = json['isActive'] ?? json['active'];
    description = json['description'];
    durationMinutes = json['durationMinutes'] as int?;
    id = json['id'] as int?;
    name = json['name'];
    price = (json['price'] as num?)?.toDouble();
    professional = json['professional'] != null
        ? Client.fromJson(json['professional'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['isActive'] = isActive;
    data['description'] = description;
    data['durationMinutes'] = durationMinutes;
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    if (professional != null) data['professional'] = professional!.toJson();
    return data;
  }
}
