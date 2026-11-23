package com.switfpass.pay.utils;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.dto.Constant;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class h0 {
    public static void a(StringBuilder sb2, Map map, boolean z10) {
        ArrayList<String> arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        for (String str : arrayList) {
            sb2.append(str);
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
            String strF = (String) map.get(str);
            if (z10) {
                strF = f(strF);
            }
            sb2.append(strF);
            sb2.append(x.a.f97576d);
        }
        sb2.setLength(sb2.length() - 1);
    }

    public static Map b(Map map) {
        HashMap map2 = new HashMap(map.size());
        if (map.size() <= 0) {
            return map2;
        }
        for (String str : map.keySet()) {
            String str2 = (String) map.get(str);
            if (str2 != null && !str2.equals("") && !str.equalsIgnoreCase(Constant.MD5)) {
                map2.put(str, str2);
            }
        }
        return map2;
    }

    public static String c(StringBuilder sb2, Map map, boolean z10) {
        a(sb2, map, z10);
        return sb2.toString();
    }

    public static String d(Map map) {
        return e(map, false);
    }

    public static String e(Map map, boolean z10) {
        return c(new StringBuilder(), map, z10);
    }

    public static String f(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Throwable unused) {
            return str;
        }
    }
}
