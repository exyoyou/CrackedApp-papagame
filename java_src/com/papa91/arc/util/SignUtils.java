package com.papa91.arc.util;

import com.google.gson.JsonObject;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class SignUtils {
    private static final String SECURE_KEY = "21wq7byuGiENB4r7mOsqBYiNUyhpXAXu";

    public static String buildRequestSign(JsonObject jsonObject) {
        return buildRequestSign(SECURE_KEY, jsonObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$sortMapByKey$0(boolean z10, String str, String str2) {
        return z10 ? str.compareTo(str2) : str2.compareTo(str);
    }

    public static Map<String, String> sortMapByKey(Map<String, String> map, final boolean z10) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        TreeMap treeMap = new TreeMap(new Comparator() { // from class: com.papa91.arc.util.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return SignUtils.lambda$sortMapByKey$0(z10, (String) obj, (String) obj2);
            }
        });
        treeMap.putAll(map);
        return treeMap;
    }

    public static String buildRequestSign(Map<String, String> map) {
        return buildRequestSign(SECURE_KEY, map);
    }

    public static String buildRequestSign(String str, JsonObject jsonObject) {
        Set<String> setKeySet = jsonObject.keySet();
        HashMap map = new HashMap();
        for (String str2 : setKeySet) {
            map.put(str2, jsonObject.get(str2).getAsString());
        }
        return buildRequestSign(str, map);
    }

    public static String buildRequestSign(String str, Map<String, String> map) {
        Map<String, String> mapSortMapByKey = sortMapByKey(map, true);
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : mapSortMapByKey.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
            sb2.append(entry.getValue());
            sb2.append(x.a.f97576d);
        }
        return DigestUtils.md5DigestAsHex((str + sb2.substring(0, sb2.length() - 1)).getBytes());
    }
}
