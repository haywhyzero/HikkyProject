mixin LogErrors {
  void logError(String error) => print('Error logged: $error');
}

mixin FetchIP {
  String get ipAddress => "192.168.1.1"; 
}


mixin TimeStampedLogErrors {
  DateTime get currentTime => DateTime.now();
}

class Order with LogErrors, TimeStampedLogErrors, FetchIP {
  final String orderId;
  Order(this.orderId);
}



void main() {
  Order order = Order("1");
  order.logError("Order not found. Check /api/orders/${order.orderId}");
  print(order.currentTime);
  print(order.ipAddress);

}
