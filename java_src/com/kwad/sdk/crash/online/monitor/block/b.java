package com.kwad.sdk.crash.online.monitor.block;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private static List<String> bfb = null;
    private static List<String> bfc = null;
    private static int bfd = 5;

    public static void a(com.kwad.sdk.crash.online.monitor.a.a aVar) {
        bfb = new ArrayList();
        List<String> list = aVar.bfo;
        if (list == null || list.isEmpty()) {
            bfb.add("com.kwad");
            bfb.add("com.kwai");
            bfb.add("com.ksad");
            bfb.add("tkruntime");
            bfb.add("tachikoma");
            bfb.add("kuaishou");
        } else {
            bfb.addAll(aVar.bfo);
        }
        bfd = aVar.bft;
        bfc = new ArrayList();
        List<String> list2 = aVar.bfn;
        if (list2 != null && !list2.isEmpty()) {
            bfc.addAll(aVar.bfn);
            return;
        }
        bfc.add("android.");
        bfc.add("androidx.");
        bfc.add("org.");
        bfc.add("java.");
    }

    private static boolean gu(String str) {
        List<String> list = bfc;
        if (list == null) {
            return false;
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (str.contains(it2.next())) {
                return true;
            }
        }
        return false;
    }

    private static boolean gv(String str) {
        List<String> list = bfb;
        if (list == null) {
            return false;
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (str.contains(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public static String gw(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] strArrSplit = str.split("\n");
        com.kwad.sdk.core.d.c.d("perfMonitor.Filter", "stacks after split:" + strArrSplit.length);
        boolean z10 = false;
        int i10 = 0;
        for (String str2 : strArrSplit) {
            if (z10 || !gu(str2)) {
                if (i10 >= bfd) {
                    return "";
                }
                if (gv(str2)) {
                    return str;
                }
                i10++;
                z10 = true;
            }
        }
        return "";
    }
}
