package com.byazt.pm;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1355, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<String, tt> f18774c = new HashMap();

    public static void c(List<tt> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (tt ttVar : list) {
            if (ttVar != null) {
                f18774c.put(ttVar.c(), ttVar);
            }
        }
    }

    public static tt c(String str) {
        return f18774c.get(str);
    }
}
