package d8;

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f90721a = "d8.a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static HashMap f90722b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f90723c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f90724d = 6;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f90725e = 7;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f90726f = 8;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f90727g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f90728h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f90729i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f90730j = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f90731k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f90732l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f90733m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f90734n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f90735o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f90736p = 9;

    public static void a(int i10, int i11) {
        if (f90722b == null) {
            f90722b = new HashMap();
        }
        synchronized (f90722b) {
            ArrayList<Handler> arrayList = (ArrayList) f90722b.get(Integer.valueOf(i10));
            if (arrayList != null) {
                for (Handler handler : arrayList) {
                    if (handler != null) {
                        handler.sendEmptyMessage(i11);
                    }
                }
            }
        }
    }

    public static void b(int i10, int i11, Object obj) {
        if (f90722b == null) {
            f90722b = new HashMap();
        }
        synchronized (f90722b) {
            ArrayList<Handler> arrayList = (ArrayList) f90722b.get(Integer.valueOf(i10));
            if (arrayList != null) {
                for (Handler handler : arrayList) {
                    if (handler != null) {
                        handler.sendMessage(handler.obtainMessage(i11, obj));
                    }
                }
            }
        }
    }

    public static void c(int i10, Message message) {
        if (f90722b == null) {
            f90722b = new HashMap();
        }
        synchronized (f90722b) {
            ArrayList<Handler> arrayList = (ArrayList) f90722b.get(Integer.valueOf(i10));
            if (arrayList != null) {
                for (Handler handler : arrayList) {
                    if (handler != null) {
                        try {
                            handler.sendMessage(handler.obtainMessage(message.what, message.arg1, message.arg2, message.obj));
                        } catch (Exception e10) {
                            e10.toString();
                        }
                    }
                }
            }
        }
    }

    public static void d(int i10, Handler handler) {
        if (f90722b == null) {
            f90722b = new HashMap();
        }
        ArrayList arrayList = (ArrayList) f90722b.get(Integer.valueOf(i10));
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        arrayList.add(handler);
        f90722b.put(Integer.valueOf(i10), arrayList);
    }

    public static void e(int i10, Handler handler) {
        if (f90722b == null) {
            f90722b = new HashMap();
        }
        ArrayList arrayList = (ArrayList) f90722b.get(Integer.valueOf(i10));
        if (arrayList != null) {
            arrayList.remove(handler);
            if (arrayList.size() <= 0) {
                f90722b.remove(Integer.valueOf(i10));
            }
        }
    }
}
