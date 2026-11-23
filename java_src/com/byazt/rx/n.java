package com.byazt.rx;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Printer;
import android.util.SparseArray;
import com.byazt.mg.da;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 152, 46})
public class n implements Handler.Callback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Printer f19541c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static final Printer f19542da = new Printer() { // from class: com.byazt.rx.n.1
        @Override // android.util.Printer
        public void println(String str) {
            if (str == null) {
                return;
            }
            if (str.startsWith(">>>>> Dispatching")) {
                n.c().c(str);
            } else if (str.startsWith("<<<<< Finished")) {
                n.c().tt(str);
            }
            if (n.f19541c == null || n.f19541c == n.f19542da) {
                return;
            }
            n.f19541c.println(str);
        }
    };
    public static n tt;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f19543a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f19545n;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f19546t;
    public int uj = 0;
    public final SparseArray<List<Runnable>> sp = new SparseArray<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List<Printer> f19547x = new LinkedList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<Printer> f19544i = new LinkedList();
    public boolean sl = false;
    public Handler ve = new Handler(sp.c().getLooper(), this);

    private n() {
        tt();
    }

    public static n c() {
        if (tt == null) {
            synchronized (n.class) {
                if (tt == null) {
                    tt = new n();
                }
            }
        }
        return tt;
    }

    private Printer n() {
        try {
            Field declaredField = Class.forName("android.os.Looper").getDeclaredField("mLogging");
            declaredField.setAccessible(true);
            return (Printer) declaredField.get(Looper.getMainLooper());
        } catch (Exception e10) {
            da.tt(e10);
            return null;
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            if (this.ve.hasMessages(0)) {
                return true;
            }
            int i10 = message.what;
            if (i10 == 0) {
                this.uj = 0;
                if (this.sp.size() != 0 && this.sp.keyAt(0) == 0) {
                    c(this.sp.valueAt(0));
                    this.uj++;
                }
            } else {
                if (i10 == 1) {
                    this.ve.removeMessages(2);
                    if (this.sp.size() != 0) {
                        SparseArray<List<Runnable>> sparseArray = this.sp;
                        if (sparseArray.keyAt(sparseArray.size() - 1) == 0) {
                            c(this.sp.get(Integer.MAX_VALUE));
                        }
                    }
                    return true;
                }
                if (i10 == 2) {
                    c(this.sp.valueAt(this.uj));
                    this.uj++;
                }
            }
            if (this.uj >= this.sp.size()) {
                return true;
            }
            long jKeyAt = this.sp.keyAt(this.uj);
            if (jKeyAt != 2147483647L) {
                this.ve.sendEmptyMessageAtTime(2, this.f19545n + jKeyAt);
            }
            return true;
        } catch (Throwable unused) {
        }
    }

    public void tt() {
        if (this.sl) {
            return;
        }
        this.sl = true;
        Printer printerN = n();
        f19541c = printerN;
        Printer printer = f19542da;
        if (printerN == printer) {
            f19541c = null;
        }
        Looper.getMainLooper().setMessageLogging(printer);
    }

    public void c(long j10, Runnable runnable) {
        c(j10, runnable, 1, 0L);
    }

    public void tt(String str) {
        this.f19543a = SystemClock.uptimeMillis();
        try {
            this.ve.removeMessages(2);
            c(this.f19544i, str);
            this.ve.sendEmptyMessage(1);
        } catch (Exception e10) {
            da.tt(e10);
        }
    }

    public void c(long j10, Runnable runnable, int i10, long j11) {
        if (j10 < 0) {
            return;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = (int) j10;
            List<Runnable> linkedList = this.sp.get(i12);
            if (linkedList == null) {
                synchronized (this.sp) {
                    linkedList = this.sp.get(i12);
                    if (linkedList == null) {
                        linkedList = new LinkedList<>();
                        this.sp.put(i12, linkedList);
                    }
                }
            }
            linkedList.add(runnable);
            j10 += j11;
        }
    }

    public void c(String str) {
        if (!this.f19546t) {
            a.c(32L);
            this.f19546t = true;
        }
        this.f19545n = SystemClock.uptimeMillis();
        try {
            c(this.f19547x, str);
            this.ve.sendEmptyMessage(0);
        } catch (Exception e10) {
            da.c(e10);
        }
    }

    private static void c(List<? extends Runnable> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            Iterator<? extends Runnable> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().run();
            }
        } catch (Exception e10) {
            da.c(e10);
        }
    }

    private synchronized void c(List<? extends Printer> list, String str) {
        if (list != null) {
            if (!list.isEmpty()) {
                try {
                    Iterator<? extends Printer> it2 = list.iterator();
                    while (it2.hasNext()) {
                        it2.next().println(str);
                    }
                } catch (Exception e10) {
                    da.c(e10);
                }
            }
        }
    }
}
