package com.codingstones.bdd.igic;

public class IGICCalculator {
    public float calculateTotal(String product, int price) {
        if (product.equals("bread")) return (float) price;
        if (product.equals("car")) return (float) (price * 1.03);
        if (product.equals("bike")) return (float) (price * 1.07);
        if (product.equals("boat")) return (float) (price * 1.095);
        if (product.equals("wine")) return (float) (price * 1.135);
        if (product.equals("tobaco")) return (float) (price * 1.2);
        return -1;
    }
}
