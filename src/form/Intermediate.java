/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package form;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author nirav
 */
public class Intermediate {
    
    Map<String, Object> items;
    
    public Intermediate() {
        items = new HashMap<>();
    }
    
    public Object getItem(String key) {
        if (items.containsKey(key)) {
            return items.get(key);
        }
        else {
            System.out.println("Key "+key+" does not exists... Returning null!");
            return null;
        }
    }
    
    public void removeItem(String key) {
        if (items.containsKey(key)) {
            items.remove(key);
        }
    }
    
    public void clearItems() {
        items.clear();
    }
}
