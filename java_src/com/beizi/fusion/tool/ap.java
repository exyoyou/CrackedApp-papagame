package com.beizi.fusion.tool;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class ap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile ap f10543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Long> f10544b = new HashMap();

    public static ap a() {
        if (f10543a == null) {
            synchronized (ap.class) {
                if (f10543a == null) {
                    f10543a = new ap();
                }
            }
        }
        return f10543a;
    }

    public long b(String str) {
        if (this.f10544b.containsKey(str)) {
            return this.f10544b.get(str).longValue();
        }
        return 0L;
    }

    public void a(String str, long j10) {
        this.f10544b.put(str, Long.valueOf(j10));
    }

    public void a(String str) {
        if (this.f10544b.containsKey(str)) {
            this.f10544b.remove(str);
        }
    }
}
