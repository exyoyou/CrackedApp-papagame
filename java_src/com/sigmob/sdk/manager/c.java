package com.sigmob.sdk.manager;

import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class c extends ThreadPoolExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile c f80844a;

    public c() {
        super(0, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue());
    }

    public static c a() {
        if (f80844a == null) {
            synchronized (c.class) {
                if (f80844a == null) {
                    f80844a = new c();
                }
            }
        }
        return f80844a;
    }
}
