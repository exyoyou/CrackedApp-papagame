package cn.fly.tools;

import cn.fly.commons.x;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class b implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Thread.UncaughtExceptionHandler f1843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f1844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f1845c = new AtomicBoolean(false);

    private b() {
    }

    public static synchronized void a() {
        if (!f1844b && x.f1481i && f1845c.compareAndSet(false, true)) {
            FlyLog.getInstance().d("reg UEH", new Object[0]);
            f1843a = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(new b());
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        boolean z10;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2;
        try {
            FlyLog.getInstance().d("UE handled, processing...", new Object[0]);
            FlyLog.getInstance().crash(th);
            uncaughtExceptionHandler2 = f1843a;
            if (uncaughtExceptionHandler2 == null || (uncaughtExceptionHandler2 instanceof b)) {
                return;
            }
        } catch (Throwable th2) {
            try {
                FlyLog.getInstance().d(th2);
                uncaughtExceptionHandler = f1843a;
                if (uncaughtExceptionHandler == null) {
                    return;
                } else {
                    if (z10) {
                        return;
                    }
                }
            } finally {
                uncaughtExceptionHandler = f1843a;
                if (uncaughtExceptionHandler != null && !(uncaughtExceptionHandler instanceof b)) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
            }
        }
        uncaughtExceptionHandler2.uncaughtException(thread, th);
    }
}
