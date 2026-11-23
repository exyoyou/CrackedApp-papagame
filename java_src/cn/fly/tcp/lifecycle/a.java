package cn.fly.tcp.lifecycle;

import cn.fly.tcp.e.c;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f1667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ScheduledExecutorService f1668b = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledFuture f1669c;

    private a() {
    }

    public static a a() {
        if (f1667a == null) {
            synchronized (a.class) {
                if (f1667a == null) {
                    f1667a = new a();
                }
            }
        }
        return f1667a;
    }

    public synchronized void b() {
        try {
            c();
            this.f1669c = this.f1668b.scheduleWithFixedDelay(new Runnable() { // from class: cn.fly.tcp.lifecycle.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (c.f().g() && c.f().a(2000, 0)) {
                            cn.fly.tcp.f.c.a().b("TP HB tcp send ping success");
                        } else {
                            cn.fly.tcp.b.a().d();
                        }
                    } catch (Throwable unused) {
                    }
                }
            }, 0L, c.f().e(), TimeUnit.SECONDS);
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a("TP HB timer error", th);
        }
    }

    public synchronized boolean c() {
        boolean zCancel;
        zCancel = false;
        try {
            ScheduledFuture scheduledFuture = this.f1669c;
            if (scheduledFuture != null) {
                zCancel = scheduledFuture.cancel(true);
                this.f1669c = null;
                cn.fly.tcp.f.c.a().b("TP HB cancel: " + zCancel);
            }
        } catch (Throwable th) {
            cn.fly.tcp.f.c.a().a(th);
        }
        return zCancel;
    }
}
