package com.byazt.pm;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1355, 72})
public class da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<String, sp> f18757c = new HashMap();

    public static void c(List<sp> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (sp spVar : list) {
            if (spVar != null) {
                f18757c.put(spVar.c(), spVar);
            }
        }
    }

    public static sp c(String str) {
        return f18757c.get(str);
    }
}
