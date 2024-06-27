package repositories;

import java.util.HashMap;
import java.util.Map;

public class DictionaryRepo {
    private Map<String, String> dictionary;
    public void getDictionary () {
        dictionary = new HashMap<>();
        dictionary.put("Hello","Xin chào");
        dictionary.put("How", "Thế nào");
        dictionary.put("Book","Sách");
        dictionary.put("Computer","Máy tính");

    }

    public String find(String input) {
        for (int i = 0; i < dictionary.size(); i++) {
            if (dictionary.containsKey(input)) {
                return dictionary.get(input);
            }
        }
        return null;
    }

}
