package com.byazt.aas;

import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 126})
public class bx {
    public static Map<String, String> c(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        URL urlVe = ve(str);
        if (urlVe == null) {
            return linkedHashMap;
        }
        try {
            String query = urlVe.getQuery();
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
                        String strSubstring = str2.substring(0, iIndexOf2);
                        int i10 = iIndexOf2 + 1;
                        String strSubstring2 = str2.substring(i10);
                        if ("live_short_touch_params".equals(strSubstring) || "extra_pangle_scheme_params".equals(strSubstring)) {
                            linkedHashMap.put(URLDecoder.decode(str2.substring(0, iIndexOf2), "UTF-8"), URLDecoder.decode(str2.substring(i10), "UTF-8"));
                        } else {
                            linkedHashMap.put(strSubstring, strSubstring2);
                        }
                    }
                }
            }
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
        return linkedHashMap;
    }

    public static String tt(String str) {
        return str.contains("?") ? str.substring(0, str.indexOf("?")) : str;
    }

    private static URL ve(String str) {
        if (str != null && str.length() != 0 && str.contains("://")) {
            try {
                return new URL("http" + str.substring(str.indexOf("://")));
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
            }
        }
        return null;
    }

    public static String c(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str) || map == null || map.size() <= 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(tt(str));
        sb2.append("?");
        try {
            Iterator<Map.Entry<String, String>> it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<String, String> next = it2.next();
                String key = next.getKey();
                String value = next.getValue();
                if (it2.hasNext()) {
                    if (!"live_short_touch_params".equals(key) && !"extra_pangle_scheme_params".equals(key)) {
                        sb2.append(key + SimpleComparison.EQUAL_TO_OPERATION + value + x.a.f97576d);
                    } else {
                        sb2.append(URLEncoder.encode(next.getKey(), "UTF-8") + SimpleComparison.EQUAL_TO_OPERATION + URLEncoder.encode(next.getValue(), "UTF-8") + x.a.f97576d);
                    }
                } else if (!"live_short_touch_params".equals(key) && !"extra_pangle_scheme_params".equals(key)) {
                    sb2.append(key + SimpleComparison.EQUAL_TO_OPERATION + value);
                } else {
                    sb2.append(URLEncoder.encode(next.getKey(), "UTF-8") + SimpleComparison.EQUAL_TO_OPERATION + URLEncoder.encode(next.getValue(), "UTF-8"));
                }
            }
        } catch (Exception unused) {
        }
        return sb2.toString();
    }
}
