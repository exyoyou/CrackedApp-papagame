package bolts;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes7.dex */
final class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final b f421d = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f424c;

    /* JADX INFO: renamed from: bolts.b$b, reason: collision with other inner class name */
    private static class ExecutorC0021b implements Executor {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final int f425c = 15;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ThreadLocal<Integer> f426b;

        private ExecutorC0021b() {
            this.f426b = new ThreadLocal<>();
        }

        private int a() {
            Integer num = this.f426b.get();
            if (num == null) {
                num = 0;
            }
            int iIntValue = num.intValue() - 1;
            if (iIntValue == 0) {
                this.f426b.remove();
            } else {
                this.f426b.set(Integer.valueOf(iIntValue));
            }
            return iIntValue;
        }

        private int b() {
            Integer num = this.f426b.get();
            if (num == null) {
                num = 0;
            }
            int iIntValue = num.intValue() + 1;
            this.f426b.set(Integer.valueOf(iIntValue));
            return iIntValue;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                if (b() <= 15) {
                    runnable.run();
                } else {
                    b.a().execute(runnable);
                }
                a();
            } catch (Throwable th) {
                a();
                throw th;
            }
        }
    }

    private b() {
        this.f422a = !c() ? Executors.newCachedThreadPool() : bolts.a.b();
        this.f423b = Executors.newSingleThreadScheduledExecutor();
        this.f424c = new ExecutorC0021b();
    }

    public static ExecutorService a() {
        return f421d.f422a;
    }

    static Executor b() {
        return f421d.f424c;
    }

    private static boolean c() {
        String property = System.getProperty("java.runtime.name");
        if (property == null) {
            return false;
        }
        return property.toLowerCase(Locale.US).contains("android");
    }

    static ScheduledExecutorService d() {
        return f421d.f423b;
    }
}
