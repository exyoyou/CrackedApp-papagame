package com.byazt.jl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import com.byazt.dna.qp;
import com.byazt.nr.m;
import com.byazt.on.a;
import com.byazt.on.sp;
import com.bytedance.component.sdk.annotation.WorkerThread;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 157, 42})
public abstract class i<R extends com.byazt.on.a, W extends com.byazt.on.sp> {
    public static final String sp = "i";
    public static final Rect yp = new Rect();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Rect f15859a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f15861da;
    public boolean gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Handler f15862i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Set<Bitmap> f15863m;
    public R my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ByteBuffer f15864n;
    public final Object nu;
    public W rh;
    public volatile tt rl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Set<c> f15865t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AtomicBoolean f15866u;
    public Map<Bitmap, Canvas> uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.zt.tt f15867x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Runnable f15868z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<x<R, W>> f15860c = new ArrayList();
    public int tt = -1;
    public Integer sl = null;

    public interface c {
        void c();

        void tt();

        void tt(ByteBuffer byteBuffer);
    }

    private enum tt {
        IDLE,
        RUNNING,
        INITIALIZING,
        FINISHING
    }

    public i(com.byazt.zt.tt ttVar, c cVar) {
        HashSet hashSet = new HashSet();
        this.f15865t = hashSet;
        this.f15866u = new AtomicBoolean(true);
        this.f15868z = new Runnable() { // from class: com.byazt.jl.i.1
            @Override // java.lang.Runnable
            public void run() {
                if (i.this.f15866u.get()) {
                    return;
                }
                if (!i.this.nu()) {
                    i.this.i();
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                i.this.f15862i.postDelayed(this, Math.max(0L, i.this.rh() - (System.currentTimeMillis() - jCurrentTimeMillis)));
                Iterator it2 = i.this.f15865t.iterator();
                while (it2.hasNext()) {
                    ((c) it2.next()).tt(i.this.f15864n);
                }
            }
        };
        this.ve = 1;
        this.f15863m = new HashSet();
        this.nu = new Object();
        this.uj = new WeakHashMap();
        this.rh = (W) uj();
        this.my = null;
        this.gt = false;
        this.rl = tt.IDLE;
        this.f15867x = ttVar;
        if (cVar != null) {
            hashSet.add(cVar);
        }
        this.f15862i = ((qp) com.byazt.ut.uj.getService("thread_service")).getIOHandler();
    }

    private int m() {
        Integer num = this.sl;
        return num != null ? num.intValue() : tt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean nu() {
        if (!da() || this.f15860c.size() == 0) {
            return false;
        }
        if (m() <= 0 || this.f15861da < m() - 1) {
            return true;
        }
        if (this.f15861da == m() - 1 && this.tt < sp() - 1) {
            return true;
        }
        this.gt = true;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public long rh() {
        int i10 = this.tt + 1;
        this.tt = i10;
        if (i10 >= sp()) {
            this.tt = 0;
            this.f15861da++;
        }
        x<R, W> xVarC = c(this.tt);
        if (xVarC == null) {
            return 0L;
        }
        c(xVarC);
        return xVarC.f15898t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void yp() {
        this.f15862i.removeCallbacks(this.f15868z);
        this.f15860c.clear();
        synchronized (this.nu) {
            for (Bitmap bitmap : this.f15863m) {
                if (bitmap != null && !bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            }
            this.f15863m.clear();
        }
        if (this.f15864n != null) {
            this.f15864n = null;
        }
        this.uj.clear();
        try {
            if (this.my != null) {
                this.my = null;
            }
        } catch (IOException e10) {
            m.c(e10);
        }
        ve();
        this.rl = tt.IDLE;
        Iterator<c> it2 = this.f15865t.iterator();
        while (it2.hasNext()) {
            it2.next().tt();
        }
    }

    private String z() {
        return "";
    }

    public abstract void c(x<R, W> xVar);

    public boolean da() {
        return this.rl == tt.RUNNING || this.rl == tt.INITIALIZING;
    }

    public void sl() {
        this.f15862i.post(new Runnable() { // from class: com.byazt.jl.i.8
            @Override // java.lang.Runnable
            public void run() {
                i.this.f15861da = 0;
                i iVar = i.this;
                iVar.tt = -1;
                iVar.gt = false;
            }
        });
    }

    public int t() {
        return this.ve;
    }

    public abstract int tt();

    public abstract Rect tt(R r10) throws IOException;

    public abstract W uj();

    public abstract R ve(com.byazt.on.a aVar);

    public abstract void ve();

    public Rect a() {
        if (this.f15859a == null) {
            if (this.rl == tt.FINISHING) {
                m.uj(sp, "In finishing,do not interrupt");
            }
            final Thread threadCurrentThread = Thread.currentThread();
            this.f15862i.post(new Runnable() { // from class: com.byazt.jl.i.5
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        try {
                            if (i.this.f15859a == null) {
                                if (i.this.my == null) {
                                    i iVar = i.this;
                                    iVar.my = iVar.ve(iVar.f15867x.tt());
                                } else {
                                    i.this.my.d_();
                                }
                                i iVar2 = i.this;
                                iVar2.c(iVar2.tt(iVar2.my));
                            }
                        } catch (Exception e10) {
                            m.c(e10);
                            i.this.f15859a = i.yp;
                        }
                    } finally {
                        LockSupport.unpark(threadCurrentThread);
                    }
                }
            });
            LockSupport.park(threadCurrentThread);
        }
        return this.f15859a == null ? yp : this.f15859a;
    }

    public void i() {
        if (this.f15859a == yp) {
            return;
        }
        tt ttVar = this.rl;
        tt ttVar2 = tt.FINISHING;
        if (ttVar == ttVar2 || this.rl == tt.IDLE) {
            m.c(sp, z() + "No need to stop");
            return;
        }
        if (this.rl == tt.INITIALIZING) {
            m.uj(sp, z() + "Processing,wait for finish at " + this.rl);
        }
        this.rl = ttVar2;
        if (Looper.myLooper() == this.f15862i.getLooper()) {
            yp();
        } else {
            this.f15862i.post(new Runnable() { // from class: com.byazt.jl.i.7
                @Override // java.lang.Runnable
                public void run() {
                    i.this.yp();
                }
            });
        }
    }

    public void n() {
        this.f15862i.post(new Runnable() { // from class: com.byazt.jl.i.4
            @Override // java.lang.Runnable
            public void run() {
                if (i.this.f15865t.size() == 0) {
                    i.this.i();
                }
            }
        });
    }

    public int sp() {
        return this.f15860c.size();
    }

    public void tt(final c cVar) {
        this.f15862i.post(new Runnable() { // from class: com.byazt.jl.i.3
            @Override // java.lang.Runnable
            public void run() {
                i.this.f15865t.remove(cVar);
            }
        });
    }

    public int ve(int i10, int i11) {
        int i12 = 1;
        if (i10 != 0 && i11 != 0) {
            int iMin = Math.min(a().width() / i10, a().height() / i11);
            while (true) {
                int i13 = i12 * 2;
                if (i13 > iMin) {
                    break;
                }
                i12 = i13;
            }
        }
        return i12;
    }

    public void x() {
        if (this.f15859a == yp) {
            return;
        }
        if (this.rl != tt.RUNNING) {
            tt ttVar = this.rl;
            tt ttVar2 = tt.INITIALIZING;
            if (ttVar != ttVar2) {
                if (this.rl == tt.FINISHING) {
                    m.uj(sp, z() + " Processing,wait for finish at " + this.rl);
                }
                this.rl = ttVar2;
                if (Looper.myLooper() == this.f15862i.getLooper()) {
                    c();
                    return;
                } else {
                    this.f15862i.post(new Runnable() { // from class: com.byazt.jl.i.6
                        @Override // java.lang.Runnable
                        public void run() {
                            i.this.c();
                        }
                    });
                    return;
                }
            }
        }
        m.c(sp, z() + " Already started");
    }

    public boolean tt(int i10, int i11) {
        final int iVe = ve(i10, i11);
        if (iVe == this.ve) {
            return false;
        }
        final boolean zDa = da();
        this.f15862i.removeCallbacks(this.f15868z);
        this.f15862i.post(new Runnable() { // from class: com.byazt.jl.i.9
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                i.this.yp();
                try {
                    i iVar = i.this;
                    iVar.ve = iVe;
                    iVar.c(iVar.tt(iVar.ve(iVar.f15867x.tt())));
                    if (zDa) {
                        i.this.c();
                    }
                } catch (IOException e10) {
                    m.c(e10);
                }
            }
        });
        return true;
    }

    public Bitmap c(int i10, int i11) {
        synchronized (this.nu) {
            try {
                Iterator<Bitmap> it2 = this.f15863m.iterator();
                Bitmap bitmapCreateBitmap = null;
                while (it2.hasNext()) {
                    int i12 = i10 * i11 * 4;
                    Bitmap next = it2.next();
                    if (next != null && next.getAllocationByteCount() >= i12) {
                        it2.remove();
                        if ((next.getWidth() != i10 || next.getHeight() != i11) && i10 > 0 && i11 > 0) {
                            next.reconfigure(i10, i11, Bitmap.Config.ARGB_4444);
                        }
                        next.eraseColor(0);
                        return next;
                    }
                    bitmapCreateBitmap = next;
                }
                if (i10 <= 0 || i11 <= 0) {
                    return null;
                }
                try {
                    bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_4444);
                } catch (Exception e10) {
                    m.c(e10);
                } catch (OutOfMemoryError e11) {
                    m.c(e11);
                }
                return bitmapCreateBitmap;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c(Bitmap bitmap) {
        synchronized (this.nu) {
            if (bitmap != null) {
                this.f15863m.add(bitmap);
            }
        }
    }

    public void c(final c cVar) {
        this.f15862i.post(new Runnable() { // from class: com.byazt.jl.i.2
            @Override // java.lang.Runnable
            public void run() {
                i.this.f15865t.add(cVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Rect rect) {
        this.f15859a = rect;
        int iWidth = rect.width() * rect.height();
        int i10 = this.ve;
        this.f15864n = ByteBuffer.allocate(((iWidth / (i10 * i10)) + 1) * 4);
        if (this.rh == null) {
            this.rh = (W) uj();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void c() {
        this.f15866u.compareAndSet(true, false);
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            if (this.f15860c.size() == 0) {
                try {
                    R r10 = this.my;
                    if (r10 == null) {
                        this.my = (R) ve(this.f15867x.tt());
                    } else {
                        r10.d_();
                    }
                    c(tt(this.my));
                } catch (Throwable th) {
                    m.c(th);
                }
            }
            String str = sp;
            m.c(str, z() + " Set state to RUNNING,cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
            this.rl = tt.RUNNING;
            if (m() != 0 && this.gt) {
                m.c(str, z() + " No need to started");
                return;
            }
            this.tt = -1;
            this.f15868z.run();
            Iterator<c> it2 = this.f15865t.iterator();
            while (it2.hasNext()) {
                it2.next().c();
            }
        } catch (Throwable th2) {
            m.c(sp, z() + " Set state to RUNNING,cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
            this.rl = tt.RUNNING;
            throw th2;
        }
    }

    public x<R, W> c(int i10) {
        if (i10 < 0 || i10 >= this.f15860c.size()) {
            return null;
        }
        return this.f15860c.get(i10);
    }
}
