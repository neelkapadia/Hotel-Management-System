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
    
    static Map<String, Object> items = new HashMap<>();;
    
    private Intermediate() {
        
    }
    
    public static void addItem(String key, Object value){
        items.put(key, value);
    }
    
    public static Object getItem(String key) {
        if (items.containsKey(key)) {
            return items.get(key);
        }
        else {
            System.out.println("Key "+key+" does not exists... Returning null!");
            return null;
        }
    }
    
    public static void removeItem(String key) {
        if (items.containsKey(key)) {
            items.remove(key);
        }
    }
    
    public static void clearItems() {
        items.clear();
    }
}
