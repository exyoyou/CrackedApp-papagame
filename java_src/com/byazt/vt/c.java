package com.byazt.vt;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1282, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Map<String, ve> f21341c = new HashMap();

    public ve c(String str) {
        if (this.f21341c.containsKey(str) && this.f21341c.get(str) != null) {
            return this.f21341c.get(str);
        }
        tt ttVar = new tt();
        this.f21341c.put(str, ttVar);
        return ttVar;
    }

    public void c(String str, ve veVar) {
        if (!this.f21341c.containsKey(str) || this.f21341c.get(str) == null) {
            this.f21341c.put(str, veVar);
        }
    }
}
