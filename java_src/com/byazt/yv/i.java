package com.byazt.yv;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 499, 42})
public class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final x f22447c = new x();
    public static final Map<String, String> tt = new ConcurrentHashMap();

    public static String c(String str) throws IllegalArgumentException {
        Map<String, String> map = tt;
        String str2 = map.get(str);
        if (str2 != null) {
            return str2;
        }
        String strC = f22447c.c(str);
        if (strC != null) {
            map.put(str, strC);
        }
        return strC;
    }
}
