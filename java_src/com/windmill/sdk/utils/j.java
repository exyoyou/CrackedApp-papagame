package com.windmill.sdk.utils;

import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
public final class j extends ThreadPoolExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile j f87380a;

    public j() {
        super(0, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue());
    }

    public static j a() {
        if (f87380a == null) {
            synchronized (j.class) {
                if (f87380a == null) {
                    f87380a = new j();
                }
            }
        }
        return f87380a;
    }
}
