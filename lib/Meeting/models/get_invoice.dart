class GetInVoice {
  int? orderNo;
  String? name;
  dynamic unit;
  int? unitNo;
  int? price;
  int? quantity;
  int? total;
  String? creationDate;

  GetInVoice({
    this.orderNo,
    this.name,
    this.unit,
    this.unitNo,
    this.price,
    this.quantity,
    this.total,
    this.creationDate,
  });

  GetInVoice.fromJson(Map<String, dynamic> json) {
    orderNo = json['orderNo'];
    name = json['name'];
    unit = json['unit'];
    unitNo = json['unitNo'];
    price = json['price'];
    quantity = json['quantity'];
    total = json['total'];
    creationDate = json['creationDate'];
  }

  static List<GetInVoice> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => GetInVoice.fromJson(json)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['orderNo'] = orderNo;
    data['name'] = name;
    data['unit'] = unit;
    data['unitNo'] = unitNo;
    data['price'] = price;
    data['quantity'] = quantity;
    data['total'] = total;
    data['creationDate'] = creationDate;
    return data;
  }
}
