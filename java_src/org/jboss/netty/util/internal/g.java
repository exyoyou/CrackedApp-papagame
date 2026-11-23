package org.jboss.netty.util.internal;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes10.dex */
public class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f95821c = 256;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicLong f95822a = new AtomicLong();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f95823b = new AtomicBoolean();

    public void a() {
        this.f95822a.decrementAndGet();
    }

    public void b() {
        if (this.f95822a.incrementAndGet() > 256) {
            this.f95823b.compareAndSet(false, true);
        }
    }
}
