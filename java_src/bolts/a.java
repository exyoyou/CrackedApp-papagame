package bolts;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f415b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f416c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int f417d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int f418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final long f419f = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f420a = new b();

    private static class b implements Executor {
        private b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f416c = iAvailableProcessors;
        f417d = iAvailableProcessors + 1;
        f418e = (iAvailableProcessors * 2) + 1;
    }

    private a() {
    }

    @SuppressLint({"NewApi"})
    public static void a(ThreadPoolExecutor threadPoolExecutor, boolean z10) {
        threadPoolExecutor.allowCoreThreadTimeOut(z10);
    }

    public static ExecutorService b() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f417d, f418e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    public static ExecutorService c(ThreadFactory threadFactory) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f417d, f418e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    public static Executor d() {
        return f415b.f420a;
    }
}
