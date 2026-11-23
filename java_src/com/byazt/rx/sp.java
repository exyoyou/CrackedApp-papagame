package com.byazt.rx;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 152, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile HandlerThread f19548c;
    public static volatile Handler tt;
    public static volatile Handler ve;

    public static HandlerThread c() {
        if (f19548c == null) {
            synchronized (sp.class) {
                if (f19548c == null) {
                    HandlerThread handlerThread = new HandlerThread("default_npth_thread");
                    f19548c = handlerThread;
                    handlerThread.start();
                    tt = new Handler(f19548c.getLooper());
                }
            }
        }
        return f19548c;
    }

    public static Handler tt() {
        if (tt == null) {
            c();
        }
        return tt;
    }
}
