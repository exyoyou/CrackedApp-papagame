package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.FalseOnNull;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class JobScheduler {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final String f28244k = "queueTime";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f28245a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f28246b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f28249e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f28247c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f28248d = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    @VisibleForTesting
    com.facebook.imagepipeline.image.e f28250f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    int f28251g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    JobState f28252h = JobState.IDLE;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    long f28253i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    long f28254j = 0;

    @VisibleForTesting
    enum JobState {
        IDLE,
        QUEUED,
        RUNNING,
        RUNNING_AND_PENDING
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            JobScheduler.this.d();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            JobScheduler.this.j();
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f28257a;

        static {
            int[] iArr = new int[JobState.values().length];
            f28257a = iArr;
            try {
                iArr[JobState.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28257a[JobState.QUEUED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28257a[JobState.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f28257a[JobState.RUNNING_AND_PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface d {
        void a(com.facebook.imagepipeline.image.e encodedImage, int status);
    }

    @VisibleForTesting
    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static ScheduledExecutorService f28258a;

        e() {
        }

        static ScheduledExecutorService a() {
            if (f28258a == null) {
                f28258a = Executors.newSingleThreadScheduledExecutor();
            }
            return f28258a;
        }
    }

    public JobScheduler(Executor executor, d jobRunnable, int minimumJobIntervalMs) {
        this.f28245a = executor;
        this.f28246b = jobRunnable;
        this.f28249e = minimumJobIntervalMs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.facebook.imagepipeline.image.e eVar;
        int i10;
        long jUptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            eVar = this.f28250f;
            i10 = this.f28251g;
            this.f28250f = null;
            this.f28251g = 0;
            this.f28252h = JobState.RUNNING;
            this.f28254j = jUptimeMillis;
        }
        try {
            if (i(eVar, i10)) {
                this.f28246b.a(eVar, i10);
            }
        } finally {
            com.facebook.imagepipeline.image.e.d(eVar);
            g();
        }
    }

    private void e(long delay) {
        Runnable runnableA = i4.a.a(this.f28248d, "JobScheduler_enqueueJob");
        if (delay > 0) {
            e.a().schedule(runnableA, delay, TimeUnit.MILLISECONDS);
        } else {
            runnableA.run();
        }
    }

    private void g() {
        long jMax;
        boolean z10;
        long jUptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            if (this.f28252h == JobState.RUNNING_AND_PENDING) {
                jMax = Math.max(this.f28254j + ((long) this.f28249e), jUptimeMillis);
                this.f28253i = jUptimeMillis;
                this.f28252h = JobState.QUEUED;
                z10 = true;
            } else {
                this.f28252h = JobState.IDLE;
                jMax = 0;
                z10 = false;
            }
        }
        if (z10) {
            e(jMax - jUptimeMillis);
        }
    }

    @FalseOnNull
    private static boolean i(@Nullable com.facebook.imagepipeline.image.e encodedImage, int status) {
        return com.facebook.imagepipeline.producers.b.d(status) || com.facebook.imagepipeline.producers.b.m(status, 4) || com.facebook.imagepipeline.image.e.P(encodedImage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.f28245a.execute(i4.a.a(this.f28247c, "JobScheduler_submitJob"));
    }

    public void c() {
        com.facebook.imagepipeline.image.e eVar;
        synchronized (this) {
            eVar = this.f28250f;
            this.f28250f = null;
            this.f28251g = 0;
        }
        com.facebook.imagepipeline.image.e.d(eVar);
    }

    public synchronized long f() {
        return this.f28254j - this.f28253i;
    }

    public boolean h() {
        long jMax;
        long jUptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            boolean z10 = false;
            if (!i(this.f28250f, this.f28251g)) {
                return false;
            }
            int i10 = c.f28257a[this.f28252h.ordinal()];
            if (i10 != 1) {
                if (i10 == 3) {
                    this.f28252h = JobState.RUNNING_AND_PENDING;
                }
                jMax = 0;
            } else {
                jMax = Math.max(this.f28254j + ((long) this.f28249e), jUptimeMillis);
                this.f28253i = jUptimeMillis;
                this.f28252h = JobState.QUEUED;
                z10 = true;
            }
            if (z10) {
                e(jMax - jUptimeMillis);
            }
            return true;
        }
    }

    public boolean k(@Nullable com.facebook.imagepipeline.image.e encodedImage, int status) {
        com.facebook.imagepipeline.image.e eVar;
        if (!i(encodedImage, status)) {
            return false;
        }
        synchronized (this) {
            eVar = this.f28250f;
            this.f28250f = com.facebook.imagepipeline.image.e.c(encodedImage);
            this.f28251g = status;
        }
        com.facebook.imagepipeline.image.e.d(eVar);
        return true;
    }
}
