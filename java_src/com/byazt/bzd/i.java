package com.byazt.bzd;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 724, 42})
public class i {

    @com.byazt.zqa.c(c = {0, 1, 724, 64})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f12203c;
        public Map<String, String> tt;
    }

    public static c c(String str) {
        c cVar = new c();
        if (str == null) {
            return cVar;
        }
        String strTrim = str.trim();
        if (strTrim.equals("")) {
            return cVar;
        }
        String[] strArrSplit = strTrim.split("\\?");
        cVar.f12203c = strArrSplit[0];
        if (strArrSplit.length == 1) {
            return cVar;
        }
        String[] strArrSplit2 = strArrSplit[1].split(x.a.f97576d);
        cVar.tt = new HashMap();
        for (String str2 : strArrSplit2) {
            String[] strArrSplit3 = str2.split(SimpleComparison.EQUAL_TO_OPERATION);
            if (strArrSplit3.length >= 2) {
                cVar.tt.put(strArrSplit3[0], strArrSplit3[1]);
            }
        }
        return cVar;
    }

    public static String tt(String str) {
        c cVarC = c(str);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Map<String, String> map = cVarC.tt;
        if (map != null) {
            if (map.containsKey("v")) {
                linkedHashMap.put("v", cVarC.tt.get("v"));
                cVarC.tt.remove("v");
            }
            for (Map.Entry<String, String> entry : cVarC.tt.entrySet()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return c(cVarC.f12203c, linkedHashMap);
    }

    private static String c(String str, LinkedHashMap<String, String> linkedHashMap) {
        StringBuilder sb2 = new StringBuilder();
        if (str == null) {
            return sb2.toString();
        }
        sb2.append(str);
        boolean z10 = str.contains("?") || str.contains(x.a.f97576d);
        if (linkedHashMap != null && linkedHashMap.size() > 0) {
            for (String str2 : linkedHashMap.keySet()) {
                if (!z10) {
                    sb2.append("?");
                    z10 = true;
                } else {
                    sb2.append(x.a.f97576d);
                }
                sb2.append(str2);
                sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                sb2.append(linkedHashMap.get(str2));
            }
        }
        return sb2.toString();
    }
}
