package com.byazt.ip;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1363, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f15458c;
    public Map<String, Object> tt = new ConcurrentHashMap();

    public x(long j10) {
        this.f15458c = j10;
    }

    public long c() {
        return this.f15458c;
    }

    public void c(String str, Object obj) {
        if (str == null || obj == null) {
            return;
        }
        this.tt.put(str, obj);
    }

    public Object c(String str) {
        if (str == null) {
            return null;
        }
        return this.tt.get(str);
    }
}
