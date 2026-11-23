package org.androidannotations.api;

import android.os.Looper;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f94991a = "BackgroundExecutor";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Executor f94992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Executor f94993c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d f94994d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static d f94995e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final List<c> f94996f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ThreadLocal<String> f94997g;

    /* JADX INFO: renamed from: org.androidannotations.api.a$a, reason: collision with other inner class name */
    static class C1220a implements d {
        C1220a() {
        }

        @Override // org.androidannotations.api.a.d
        public void a() {
            throw new IllegalStateException("Method invocation is expected from the UI thread");
        }

        @Override // org.androidannotations.api.a.d
        public void b(String str, String... strArr) {
            if (str == null) {
                str = "anonymous";
            }
            throw new IllegalStateException("Method invocation is expected from one of serials " + Arrays.toString(strArr) + ", but it was called from " + str + " serial");
        }

        @Override // org.androidannotations.api.a.d
        public void c(String... strArr) {
            if (strArr.length == 0) {
                throw new IllegalStateException("Method invocation is expected from a background thread, but it was called from the UI thread");
            }
            throw new IllegalStateException("Method invocation is expected from one of serials " + Arrays.toString(strArr) + ", but it was called from the UI thread");
        }
    }

    static class b extends c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Runnable f94998b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j10, String str2, Runnable runnable) {
            super(str, j10, str2);
            this.f94998b = runnable;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            this.f94998b.run();
        }
    }

    public static abstract class c implements Runnable {
        private boolean executionAsked;
        private Future<?> future;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f94999id;
        private AtomicBoolean managed = new AtomicBoolean();
        private long remainingDelay;
        private String serial;
        private long targetTimeMillis;

        public c(String str, long j10, String str2) {
            if (!"".equals(str)) {
                this.f94999id = str;
            }
            if (j10 > 0) {
                this.remainingDelay = j10;
                this.targetTimeMillis = SystemClock.elapsedRealtime() + j10;
            }
            if ("".equals(str2)) {
                return;
            }
            this.serial = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            c cVarP;
            if (this.f94999id == null && this.serial == null) {
                return;
            }
            a.f94997g.set(null);
            synchronized (a.class) {
                a.f94996f.remove(this);
                String str = this.serial;
                if (str != null && (cVarP = a.p(str)) != null) {
                    if (cVarP.remainingDelay != 0) {
                        cVarP.remainingDelay = Math.max(0L, cVarP.targetTimeMillis - SystemClock.elapsedRealtime());
                    }
                    a.l(cVarP);
                }
            }
        }

        public abstract void execute();

        @Override // java.lang.Runnable
        public void run() {
            if (this.managed.getAndSet(true)) {
                return;
            }
            try {
                a.f94997g.set(this.serial);
                execute();
            } finally {
                a();
            }
        }
    }

    public interface d {
        void a();

        void b(String str, String... strArr);

        void c(String... strArr);
    }

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors() * 2);
        f94992b = scheduledExecutorServiceNewScheduledThreadPool;
        f94993c = scheduledExecutorServiceNewScheduledThreadPool;
        C1220a c1220a = new C1220a();
        f94994d = c1220a;
        f94995e = c1220a;
        f94996f = new ArrayList();
        f94997g = new ThreadLocal<>();
    }

    private a() {
    }

    public static synchronized void d(String str, boolean z10) {
        for (int size = f94996f.size() - 1; size >= 0; size--) {
            List<c> list = f94996f;
            c cVar = list.get(size);
            if (str.equals(cVar.f94999id)) {
                if (cVar.future != null) {
                    cVar.future.cancel(z10);
                    if (!cVar.managed.getAndSet(true)) {
                        cVar.a();
                    }
                } else if (cVar.executionAsked) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("A task with id ");
                    sb2.append(cVar.f94999id);
                    sb2.append(" cannot be cancelled (the executor set does not support it)");
                } else {
                    list.remove(size);
                }
            }
        }
    }

    public static void e(String... strArr) {
        if (strArr.length == 0) {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                f94995e.c(strArr);
                return;
            }
            return;
        }
        String str = f94997g.get();
        if (str == null) {
            f94995e.b(null, strArr);
            return;
        }
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return;
            }
        }
        f94995e.b(str, strArr);
    }

    public static void f() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            f94995e.a();
        }
    }

    private static Future<?> g(Runnable runnable, long j10) {
        if (j10 > 0) {
            Executor executor = f94993c;
            if (executor instanceof ScheduledExecutorService) {
                return ((ScheduledExecutorService) executor).schedule(runnable, j10, TimeUnit.MILLISECONDS);
            }
            throw new IllegalArgumentException("The executor set does not support scheduling");
        }
        Executor executor2 = f94993c;
        if (executor2 instanceof ExecutorService) {
            return ((ExecutorService) executor2).submit(runnable);
        }
        executor2.execute(runnable);
        return null;
    }

    public static void h(Runnable runnable) {
        g(runnable, 0L);
    }

    public static void i(Runnable runnable, long j10) {
        g(runnable, j10);
    }

    public static void j(Runnable runnable, String str, long j10, String str2) {
        l(new b(str, j10, str2, runnable));
    }

    public static void k(Runnable runnable, String str, String str2) {
        j(runnable, str, 0L, str2);
    }

    public static synchronized void l(c cVar) {
        if (cVar.f94999id != null || cVar.serial != null) {
            f94996f.add(cVar);
        }
        if (cVar.serial == null || !m(cVar.serial)) {
            cVar.executionAsked = true;
            cVar.future = g(cVar, cVar.remainingDelay);
        }
    }

    private static boolean m(String str) {
        for (c cVar : f94996f) {
            if (cVar.executionAsked && str.equals(cVar.serial)) {
                return true;
            }
        }
        return false;
    }

    public static void n(Executor executor) {
        f94993c = executor;
    }

    public static void o(d dVar) {
        f94995e = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c p(String str) {
        int size = f94996f.size();
        for (int i10 = 0; i10 < size; i10++) {
            List<c> list = f94996f;
            if (str.equals(list.get(i10).serial)) {
                return list.remove(i10);
            }
        }
        return null;
    }
}
