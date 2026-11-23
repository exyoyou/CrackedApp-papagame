package com.byazt.qya;

import android.os.Handler;
import android.util.Log;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.omf.x;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.concurrent.Callable;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 689, 46})
public class n<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f19374a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f19375c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile boolean f19376da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f19377i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f19378n;
    public volatile boolean sl;
    public final tt<T> sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Runnable f19379t;
    public int tt;
    public final int uj;
    public final Callable<T> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile Thread f19380x;

    @com.byazt.zqa.c(c = {0, 1, 689, 151})
    public static class c<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Callable<T> f19382c;
        public tt<T> tt;
        public int ve = 5;
        public long uj = 0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f19383n = 1000;

        public c(Callable<T> callable) {
            this.f19382c = callable;
        }

        public c<T> c(int i10) {
            this.ve = i10;
            return this;
        }

        public c<T> c(long j10) {
            this.uj = j10;
            return this;
        }

        public n<T> c() {
            return new n<>(this);
        }

        public c(Callable<T> callable, tt<T> ttVar) {
            this.f19382c = callable;
            this.tt = ttVar;
        }
    }

    public interface tt<T> {
        boolean c(Exception exc);

        boolean c(T t10);
    }

    public static boolean c(int i10) {
        return i10 >= 500 || i10 == 429;
    }

    public static /* synthetic */ int n(n nVar) {
        int i10 = nVar.tt;
        nVar.tt = i10 + 1;
        return i10;
    }

    private n(c<T> cVar) {
        this.f19375c = da.ve();
        this.tt = 0;
        this.f19374a = false;
        this.f19377i = 0L;
        this.f19376da = false;
        this.sl = false;
        this.f19379t = new Runnable() { // from class: com.byazt.qya.n.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (n.this.tt < n.this.uj && !n.this.sl) {
                        if (x.m().d()) {
                            n.this.ve();
                            return;
                        }
                        long jA = n.this.a();
                        n.n(n.this);
                        n.this.ve.call();
                        n.this.f19375c.postDelayed(n.this.f19379t, jA);
                    }
                } catch (Exception e10) {
                    m.c(e10);
                }
            }
        };
        this.ve = cVar.f19382c;
        this.sp = cVar.tt;
        this.uj = cVar.ve;
        this.f19378n = cVar.uj;
        this.f19377i = cVar.f19383n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a() {
        return (long) ((this.f19377i * Math.pow(2.0d, this.tt)) + this.f19378n);
    }

    private void n() {
        try {
            Thread.sleep(a());
        } catch (InterruptedException unused) {
            this.f19374a = true;
        }
    }

    private void uj() {
        if (this.f19374a) {
            return;
        }
        this.tt++;
        n();
    }

    public void tt() {
        this.f19375c.removeCallbacks(this.f19379t);
        if (this.tt >= this.uj || this.f19376da) {
            return;
        }
        if (x.m().d()) {
            ve();
            return;
        }
        long jA = a();
        this.f19376da = true;
        this.f19375c.postDelayed(this.f19379t, jA);
    }

    public void ve() {
        this.f19375c.removeCallbacks(this.f19379t);
        this.tt = 0;
        this.f19376da = false;
        this.sl = true;
    }

    public T c() throws Exception {
        this.f19380x = Thread.currentThread();
        this.tt = 0;
        T tCall = null;
        while (this.tt < this.uj && !this.f19374a) {
            try {
                if (x.m().d()) {
                    this.f19374a = true;
                    break;
                }
                tCall = this.ve.call();
                tt<T> ttVar = this.sp;
                if (ttVar == null || !ttVar.c(tCall)) {
                    break;
                }
                uj();
            } catch (Exception e10) {
                tt<T> ttVar2 = this.sp;
                if (ttVar2 != null && ttVar2.c(e10)) {
                    uj();
                } else {
                    Log.getStackTraceString(e10);
                    throw e10;
                }
            }
        }
        return tCall;
    }

    public static boolean c(Throwable th) {
        String message;
        if ((th instanceof UnknownHostException) || (th instanceof SSLException) || (th instanceof InterruptedIOException) || (th instanceof EOFException) || (th instanceof SocketException)) {
            return true;
        }
        if (!(th instanceof IOException) || (message = th.getMessage()) == null) {
            return false;
        }
        String lowerCase = message.toLowerCase();
        return lowerCase.contains("canceled") || lowerCase.contains("timeout") || lowerCase.contains("etimedout") || lowerCase.contains("enetunreach") || lowerCase.contains("econnreset") || lowerCase.contains("connection abort") || lowerCase.contains("software caused connection abort");
    }
}
