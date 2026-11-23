package com.byazt.rv;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1194, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f19538c;
    public static Map<String, Map<String, Object>> tt = new HashMap();

    private c() {
    }

    public static c c() {
        if (f19538c != null) {
            return f19538c;
        }
        synchronized (c.class) {
            if (f19538c != null) {
                return f19538c;
            }
            c cVar = new c();
            f19538c = cVar;
            return cVar;
        }
    }

    public Map<String, Object> c(String str) {
        Map<String, Object> map = tt.get(str);
        if (map != null) {
            return map;
        }
        HashMap map2 = new HashMap();
        tt.put(str, map2);
        return map2;
    }
}
