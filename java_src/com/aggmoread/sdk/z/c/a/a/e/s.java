package com.aggmoread.sdk.z.c.a.a.e;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.net.URL;
import java.net.URLDecoder;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class s {
    public static Map<String, String> a(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        URL urlB = b(str);
        if (urlB == null) {
            return linkedHashMap;
        }
        try {
            String query = urlB.getQuery();
            if (query == null) {
                return linkedHashMap;
            }
            if (query.contains("url=")) {
                int iIndexOf = query.indexOf("url=");
                linkedHashMap.put("url", URLDecoder.decode(query.substring(iIndexOf + 4), "UTF-8"));
                query = query.substring(0, iIndexOf);
            }
            if (query.length() > 0) {
                for (String str2 : query.split(x.a.f97576d)) {
                    int iIndexOf2 = str2.indexOf(SimpleComparison.EQUAL_TO_OPERATION);
                    if (iIndexOf2 > 0 && iIndexOf2 < str2.length() - 1) {
                        linkedHashMap.put(URLDecoder.decode(str2.substring(0, iIndexOf2), "UTF-8"), URLDecoder.decode(str2.substring(iIndexOf2 + 1), "UTF-8"));
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return linkedHashMap;
    }

    private static URL b(String str) {
        if (str != null && str.length() != 0 && str.contains("://")) {
            try {
                return new URL("http" + str.substring(str.indexOf("://")));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }
}
