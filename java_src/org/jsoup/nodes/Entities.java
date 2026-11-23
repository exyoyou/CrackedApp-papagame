package org.jsoup.nodes;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.CharsetEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Properties;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.jsoup.parser.Parser;

/* JADX INFO: loaded from: classes10.dex */
public class Entities {
    private static final Map<String, Character> base;
    private static final Map<Character, String> baseByVal;
    private static final Map<String, Character> full;
    private static final Map<Character, String> fullByVal;
    private static final Object[][] xhtmlArray;
    private static final Pattern unescapePattern = Pattern.compile("&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);?");
    private static final Pattern strictUnescapePattern = Pattern.compile("&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);");
    private static final Map<Character, String> xhtmlByVal = new HashMap();

    public enum EscapeMode {
        xhtml(Entities.xhtmlByVal),
        base(Entities.baseByVal),
        extended(Entities.fullByVal);

        private Map<Character, String> map;

        EscapeMode(Map map) {
            this.map = map;
        }

        public Map<Character, String> getMap() {
            return this.map;
        }
    }

    static {
        Object[][] objArr = {new Object[]{"quot", 34}, new Object[]{"amp", 38}, new Object[]{"apos", 39}, new Object[]{"lt", 60}, new Object[]{"gt", 62}};
        xhtmlArray = objArr;
        Map<String, Character> mapLoadEntities = loadEntities("entities-base.properties");
        base = mapLoadEntities;
        baseByVal = toCharacterKey(mapLoadEntities);
        Map<String, Character> mapLoadEntities2 = loadEntities("entities-full.properties");
        full = mapLoadEntities2;
        fullByVal = toCharacterKey(mapLoadEntities2);
        for (Object[] objArr2 : objArr) {
            xhtmlByVal.put(Character.valueOf((char) ((Integer) objArr2[1]).intValue()), (String) objArr2[0]);
        }
    }

    private Entities() {
    }

    static String escape(String str, Document.OutputSettings outputSettings) {
        return escape(str, outputSettings.encoder(), outputSettings.escapeMode());
    }

    public static Character getCharacterByName(String str) {
        return full.get(str);
    }

    public static boolean isBaseNamedEntity(String str) {
        return base.containsKey(str);
    }

    public static boolean isNamedEntity(String str) {
        return full.containsKey(str);
    }

    private static Map<String, Character> loadEntities(String str) {
        Properties properties = new Properties();
        HashMap map = new HashMap();
        try {
            InputStream resourceAsStream = Entities.class.getResourceAsStream(str);
            properties.load(resourceAsStream);
            resourceAsStream.close();
            for (Map.Entry entry : properties.entrySet()) {
                map.put((String) entry.getKey(), Character.valueOf((char) Integer.parseInt((String) entry.getValue(), 16)));
            }
            return map;
        } catch (IOException e10) {
            throw new MissingResourceException("Error loading entities resource: " + e10.getMessage(), "Entities", str);
        }
    }

    private static Map<Character, String> toCharacterKey(Map<String, Character> map) {
        HashMap map2 = new HashMap();
        for (Map.Entry<String, Character> entry : map.entrySet()) {
            Character value = entry.getValue();
            String key = entry.getKey();
            if (!map2.containsKey(value)) {
                map2.put(value, key);
            } else if (key.toLowerCase().equals(key)) {
                map2.put(value, key);
            }
        }
        return map2;
    }

    static String unescape(String str) {
        return unescape(str, false);
    }

    static String escape(String str, CharsetEncoder charsetEncoder, EscapeMode escapeMode) {
        StringBuilder sb2 = new StringBuilder(str.length() * 2);
        Map<Character, String> map = escapeMode.getMap();
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 65536) {
                char c10 = (char) iCodePointAt;
                if (map.containsKey(Character.valueOf(c10))) {
                    sb2.append(Typography.amp);
                    sb2.append(map.get(Character.valueOf(c10)));
                    sb2.append(';');
                } else if (charsetEncoder.canEncode(c10)) {
                    sb2.append(c10);
                } else {
                    sb2.append("&#x");
                    sb2.append(Integer.toHexString(iCodePointAt));
                    sb2.append(';');
                }
            } else {
                String str2 = new String(Character.toChars(iCodePointAt));
                if (charsetEncoder.canEncode(str2)) {
                    sb2.append(str2);
                } else {
                    sb2.append("&#x");
                    sb2.append(Integer.toHexString(iCodePointAt));
                    sb2.append(';');
                }
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return sb2.toString();
    }

    static String unescape(String str, boolean z10) {
        return Parser.unescapeEntities(str, z10);
    }
}
