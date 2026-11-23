package com.byazt.gv;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 247, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f14762c;
    public static volatile ThreadPoolExecutor tt;
    public static volatile ScheduledExecutorService uj;
    public static volatile ThreadPoolExecutor ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final ConcurrentHashMap<String, ve> f14763n = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap<String, ve> f14761a = new ConcurrentHashMap<>();

    private c() {
        tt = n.c();
        ve = n.tt();
        uj = n.ve();
    }

    public static c c() {
        if (f14762c == null) {
            synchronized (c.class) {
                if (f14762c == null) {
                    f14762c = new c();
                }
            }
        }
        return f14762c;
    }

    public void c(ve veVar) {
        if (veVar != null) {
            if (tt != null) {
                tt.execute(veVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("param is not be null");
    }
}
