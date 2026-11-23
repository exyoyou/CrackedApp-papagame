package com.umeng.ccg;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f85000a = 101;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f85001b = 102;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f85002c = 103;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f85003d = 104;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f85004e = 105;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f85005f = 106;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f85006g = 107;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f85007h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f85008i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f85009j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f85010k = 201;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f85011l = 202;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f85012m = 203;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f85013n = 301;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f85014o = 302;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f85015p = 303;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static HandlerThread f85016q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static Handler f85017r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static HashMap<Integer, a> f85018s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f85019t = 256;

    public interface a {
        void a(Object obj, int i10);
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Message message) {
        int i10 = message.arg1;
        Object obj = message.obj;
        Integer numValueOf = Integer.valueOf(i10 / 100);
        HashMap<Integer, a> map = f85018s;
        if (map == null) {
            return;
        }
        a aVar = map.containsKey(numValueOf) ? f85018s.get(numValueOf) : null;
        if (aVar != null) {
            aVar.a(obj, i10);
        }
    }

    public static void a(Context context, int i10, int i11, a aVar, Object obj, long j10) {
        if (context == null || aVar == null) {
            return;
        }
        if (f85018s == null) {
            f85018s = new HashMap<>();
        }
        Integer numValueOf = Integer.valueOf(i11 / 100);
        if (!f85018s.containsKey(numValueOf)) {
            f85018s.put(numValueOf, aVar);
        }
        if (f85016q == null || f85017r == null) {
            a();
        }
        try {
            Handler handler = f85017r;
            if (handler != null) {
                Message messageObtainMessage = handler.obtainMessage();
                messageObtainMessage.what = i10;
                messageObtainMessage.arg1 = i11;
                messageObtainMessage.obj = obj;
                f85017r.sendMessageDelayed(messageObtainMessage, j10);
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(Context context, int i10, a aVar, Object obj) {
        a(context, 256, i10, aVar, obj, 0L);
    }

    public static void a(Context context, int i10, a aVar, Object obj, long j10) {
        a(context, 256, i10, aVar, obj, j10);
    }

    private static synchronized void a() {
        try {
            if (f85016q == null) {
                HandlerThread handlerThread = new HandlerThread("ccg_dispatch");
                f85016q = handlerThread;
                handlerThread.start();
                if (f85017r == null) {
                    f85017r = new Handler(f85016q.getLooper()) { // from class: com.umeng.ccg.c.1
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            if (message.what != 256) {
                                return;
                            }
                            c.b(message);
                        }
                    };
                }
            }
        } catch (Throwable unused) {
        }
    }
}
