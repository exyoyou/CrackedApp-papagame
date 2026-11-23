package com.facebook.fresco.animation.backend;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import com.facebook.fresco.animation.backend.a;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c<T extends com.facebook.fresco.animation.backend.a> extends com.facebook.fresco.animation.backend.b<T> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @VisibleForTesting
    static final long f27386p = 2000;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @VisibleForTesting
    static final long f27387q = 1000;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final l3.c f27388h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ScheduledExecutorService f27389i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f27390j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f27391k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f27392l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f27393m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private b f27394n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Runnable f27395o;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (c.this) {
                c.this.f27390j = false;
                if (!c.this.v()) {
                    c.this.w();
                } else if (c.this.f27394n != null) {
                    c.this.f27394n.k();
                }
            }
        }
    }

    public interface b {
        void k();
    }

    private c(@Nullable T animationBackend, @Nullable b inactivityListener, l3.c monotonicClock, ScheduledExecutorService scheduledExecutorServiceForUiThread) {
        super(animationBackend);
        this.f27390j = false;
        this.f27392l = f27386p;
        this.f27393m = 1000L;
        this.f27395o = new a();
        this.f27394n = inactivityListener;
        this.f27388h = monotonicClock;
        this.f27389i = scheduledExecutorServiceForUiThread;
    }

    public static <T extends com.facebook.fresco.animation.backend.a> com.facebook.fresco.animation.backend.b<T> r(T backend, b inactivityListener, l3.c monotonicClock, ScheduledExecutorService scheduledExecutorServiceForUiThread) {
        return new c(backend, inactivityListener, monotonicClock, scheduledExecutorServiceForUiThread);
    }

    public static <T extends com.facebook.fresco.animation.backend.a & b> com.facebook.fresco.animation.backend.b<T> s(T backend, l3.c monotonicClock, ScheduledExecutorService scheduledExecutorServiceForUiThread) {
        return r(backend, (b) backend, monotonicClock, scheduledExecutorServiceForUiThread);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean v() {
        return this.f27388h.now() - this.f27391k > this.f27392l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void w() {
        if (!this.f27390j) {
            this.f27390j = true;
            this.f27389i.schedule(this.f27395o, this.f27393m, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.facebook.fresco.animation.backend.b, com.facebook.fresco.animation.backend.a
    public boolean j(Drawable parent, Canvas canvas, int frameNumber) {
        this.f27391k = this.f27388h.now();
        boolean zJ = super.j(parent, canvas, frameNumber);
        w();
        return zJ;
    }

    public long t() {
        return this.f27393m;
    }

    public long u() {
        return this.f27392l;
    }

    public void x(long inactivityCheckPollingTimeMs) {
        this.f27393m = inactivityCheckPollingTimeMs;
    }

    public void y(@Nullable b inactivityListener) {
        this.f27394n = inactivityListener;
    }

    public void z(long inactivityThresholdMs) {
        this.f27392l = inactivityThresholdMs;
    }
}
