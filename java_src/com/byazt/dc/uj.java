package com.byazt.dc;

import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2063, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<String, com.byazt.xiv.ve> f12680c = new ConcurrentHashMap();

    public static com.byazt.xiv.ve c(String str) {
        if (!n.n(str)) {
            return null;
        }
        com.byazt.xiv.ve veVar = f12680c.get(str);
        if (veVar != null) {
            return veVar;
        }
        ve veVar2 = new ve(str);
        f12680c.put(str, veVar2);
        return veVar2;
    }

    public static Set<String> c() {
        return f12680c.keySet();
    }
}
