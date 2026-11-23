package com.facebook.imagepipeline.core;

import android.os.Process;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class m implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f27931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f27932c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f27933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicInteger f27934e;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Runnable f27935b;

        a(final Runnable val$runnable) {
            this.f27935b = val$runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Process.setThreadPriority(m.this.f27931b);
            } catch (Throwable unused) {
            }
            this.f27935b.run();
        }
    }

    public m(int threadPriority) {
        this(threadPriority, "PriorityThreadFactory", true);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(final Runnable runnable) {
        String str;
        a aVar = new a(runnable);
        if (this.f27933d) {
            str = this.f27932c + "-" + this.f27934e.getAndIncrement();
        } else {
            str = this.f27932c;
        }
        return new Thread(aVar, str);
    }

    public m(int threadPriority, String prefix, boolean addThreadNumber) {
        this.f27934e = new AtomicInteger(1);
        this.f27931b = threadPriority;
        this.f27932c = prefix;
        this.f27933d = addThreadNumber;
    }
}
