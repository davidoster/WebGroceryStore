/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author mac
 */
public class Vegetable extends Product {

    public Vegetable(String name, float price) {
//        super(name, price);
        super.setName(name);
        super.setPrice(price);
    }
    
    protected void demoMethod() {
        System.out.println("protected");
    }
    
    
}
