package org.jboss.netty.util.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
public final class e {
    private e() {
    }

    public static boolean a(Executor executor) {
        return (executor instanceof ExecutorService) && ((ExecutorService) executor).isShutdown();
    }

    public static void b(ThreadLocal<Executor> threadLocal, Executor... executorArr) {
        if (executorArr == null) {
            throw new NullPointerException("executors");
        }
        int length = executorArr.length;
        Executor[] executorArr2 = new Executor[length];
        for (int i10 = 0; i10 < executorArr.length; i10++) {
            Executor executor = executorArr[i10];
            if (executor == null) {
                throw new NullPointerException("executors[" + i10 + ']');
            }
            executorArr2[i10] = executor;
        }
        Executor executor2 = threadLocal.get();
        if (executor2 != null) {
            for (int i11 = 0; i11 < length; i11++) {
                if (executorArr2[i11] == executor2) {
                    throw new IllegalStateException("An Executor cannot be shut down from the thread acquired from itself.  Please make sure you are not calling releaseExternalResources() from an I/O worker thread.");
                }
            }
        }
        boolean z10 = false;
        for (int i12 = 0; i12 < length; i12++) {
            Executor executor3 = executorArr2[i12];
            if (executor3 instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) executor3;
                while (true) {
                    try {
                        try {
                            try {
                                executorService.shutdownNow();
                            } catch (NullPointerException unused) {
                            }
                        } catch (SecurityException unused2) {
                        }
                    } catch (SecurityException unused3) {
                        executorService.shutdown();
                    }
                    try {
                        if (executorService.awaitTermination(100L, TimeUnit.MILLISECONDS)) {
                            break;
                        }
                    } catch (InterruptedException unused4) {
                        z10 = true;
                    }
                }
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public static void c(Executor... executorArr) {
        b(c.f95814a, executorArr);
    }
}
