package cn.com.chinatelecom.account.api.b;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class d extends ThreadPoolExecutor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f785a = new LinkedBlockingQueue(256);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadFactory f786b = new ThreadFactory() { // from class: cn.com.chinatelecom.account.api.b.d.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f787a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable);
        }
    };

    public d() {
        this(5);
    }

    public void a(e eVar) {
        execute(eVar);
    }

    public d(int i10) {
        this(i10, i10 * 2, 1L, TimeUnit.SECONDS, f785a, f786b);
    }

    public d(int i10, int i11, long j10, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        super(i10, i11, j10, timeUnit, blockingQueue, threadFactory);
    }
}
