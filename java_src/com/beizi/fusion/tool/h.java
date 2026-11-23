package com.beizi.fusion.tool;

import android.text.TextUtils;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public class h implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f10611a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadGroup f10612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicInteger f10613c = new AtomicInteger(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f10614d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f10615e;

    h(int i10, String str) {
        this.f10615e = i10;
        SecurityManager securityManager = System.getSecurityManager();
        this.f10612b = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        if (TextUtils.isEmpty(str)) {
            this.f10614d = "afBg-" + f10611a.getAndIncrement() + "Td-";
            return;
        }
        this.f10614d = str + f10611a.getAndIncrement() + "Td-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f10612b, runnable, this.f10614d + this.f10613c.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (this.f10615e == 1) {
            thread.setPriority(1);
        } else if (thread.getPriority() != 5) {
            thread.setPriority(3);
        } else {
            thread.setPriority(5);
        }
        return thread;
    }
}
