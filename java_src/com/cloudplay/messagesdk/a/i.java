package com.cloudplay.messagesdk.a;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes9.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile i f23710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile ScheduledExecutorService f23711b;

    private i() {
    }

    public static i b() {
        if (f23710a == null) {
            synchronized (i.class) {
                if (f23710a == null) {
                    f23710a = new i();
                    f23711b = Executors.newScheduledThreadPool(5);
                }
            }
        }
        return f23710a;
    }

    public ScheduledExecutorService a() {
        return f23711b;
    }
}
