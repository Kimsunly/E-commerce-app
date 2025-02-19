

class TPricingCalculator {
  // Calculate the price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
  double taxRate = getTaxRateForLocation(location);
  double taxAmount = productPrice * taxRate;

  double shippingCost = getShippingCost(location);

  double totalPrice = productPrice + taxAmount + shippingCost;
  return totalPrice;
  }

  // Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
  double shippingCost = getShippingCost(location);
  return shippingCost.toStringAsFixed(2);
  }

  // Calculate tax
  static String calculateTax(double productPrice, String location) {
  double taxRate = getTaxRateForLocation(location);
  double taxAmount = productPrice * taxRate;
  return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    if (location == 'US') {
      return 0.06;
    } else if (location == 'UK') {
      return 0.05;
    } else if (location == 'CA') {
      return 0.04;
    } else {
      return 0.03;
    }
  }

  static double getShippingCost(String location) {
    if (location == 'US') {
      return 5.0;
    } else if (location == 'UK') {
      return 10.0;
    } else if (location == 'CA') {
      return 8.0;
    } else {
      return 3.0;
    }
  }

  // Sum all cart Values and return the total amount
  /*static double calculateCartTotal(List<double> cartValues, String location) {
    return cart.items.map((item) => item.price).reduce((a, b) => a + b);
  }*/

}
