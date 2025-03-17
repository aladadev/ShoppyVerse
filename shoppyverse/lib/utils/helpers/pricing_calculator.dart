class PricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    return productPrice +
        getShippingCost(location) +
        (productPrice * getTaxForLocation(location));
  }

  static double getShippingCost(String location) {
    return 60;
  }

  static double getTaxForLocation(String location) {
    return 0.1;
  }

  static String calculateTaxAmount(double productPrice, String location) {
    return (productPrice * getTaxForLocation(location)).toStringAsFixed(2);
  }

  static String calculateShippingCost(double productPrice, String location) {
    return getShippingCost(location).toStringAsFixed(2);
  }
}
