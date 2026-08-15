mixin LogErrors {
  void logError(String error) => print('Error logged: $error');
}


mixin TimeStampedLogErrors {
  DateTime get currentTime => DateTime.now();
}

class Order with LogErrors, TimeStampedLogErrors {
  final String orderId;
  Order(this.orderId);
}



void main() {
  Order order = Order("1");
  order.logError("Order not found. Check /api/orders/${order.orderId}");
  print(order.currentTime);

}
