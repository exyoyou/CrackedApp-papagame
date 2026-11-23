package com.byazt.th;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.MethodUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 78, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class f20182c;
    public static Object tt;

    public static final Object c() {
        if (tt == null) {
            try {
                synchronized (c.class) {
                    if (tt == null) {
                        if (f20182c == null) {
                            f20182c = Class.forName("android.app.ActivityThread");
                        }
                        tt = MethodUtils.invokeStaticMethod(f20182c, "currentActivityThread", new Object[0]);
                    }
                    if (tt == null && Looper.myLooper() != Looper.getMainLooper()) {
                        final Object obj = new Object();
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.th.c.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    try {
                                        Object unused = c.tt = MethodUtils.invokeStaticMethod(c.f20182c, "currentActivityThread", new Object[0]);
                                        synchronized (obj) {
                                            obj.notify();
                                        }
                                    } catch (Exception e10) {
                                        ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper main looper invoke currentActivityThread failed.", e10);
                                        synchronized (obj) {
                                            obj.notify();
                                        }
                                    }
                                } catch (Throwable th) {
                                    synchronized (obj) {
                                        obj.notify();
                                        throw th;
                                    }
                                }
                            }
                        });
                        if (tt == null) {
                            synchronized (obj) {
                                try {
                                    obj.wait(5000L);
                                } catch (InterruptedException e10) {
                                    ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper currentActivityThread interruptedException failed.", e10);
                                }
                            }
                        }
                    }
                }
            } catch (Exception e11) {
                ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper currentActivityThread failed.", e11);
            }
        }
        return tt;
    }
}
