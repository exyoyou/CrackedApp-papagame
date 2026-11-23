package cn.sharesdk.framework;

import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.MobSDK;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile c f2623b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2624a = false;

    private c() {
        new Thread() { // from class: cn.sharesdk.framework.c.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    c.this.f2624a = MobSDK.isForb();
                } catch (Throwable th) {
                    SSDKLog.b().b(th);
                }
            }
        }.start();
    }

    public static c a() {
        synchronized (c.class) {
            if (f2623b == null) {
                synchronized (c.class) {
                    if (f2623b == null) {
                        f2623b = new c();
                    }
                }
            }
        }
        return f2623b;
    }
}
