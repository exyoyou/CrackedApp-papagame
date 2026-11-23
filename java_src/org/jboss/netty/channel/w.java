package org.jboss.netty.channel;

import com.bykv.vk.component.ttvideo.player.C;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
public class w implements j {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Throwable f95667j = new Throwable();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static volatile boolean f95668k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f95669l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f95670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f95671c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private k f95672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<k> f95673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<l> f95674f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f95675g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Throwable f95676h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f95677i;

    public w(e eVar, boolean z10) {
        this.f95670b = eVar;
        this.f95671c = z10;
    }

    private boolean g(long j10, boolean z10) throws InterruptedException {
        if (z10 && Thread.interrupted()) {
            throw new InterruptedException();
        }
        long jNanoTime = j10 <= 0 ? 0L : System.nanoTime();
        boolean z11 = false;
        try {
            synchronized (this) {
                boolean z12 = this.f95675g;
                if (!z12 && j10 > 0) {
                    h();
                    this.f95677i++;
                    long jNanoTime2 = j10;
                    do {
                        try {
                            try {
                                wait(jNanoTime2 / C.MICROS_PER_SECOND, (int) (jNanoTime2 % C.MICROS_PER_SECOND));
                            } catch (InterruptedException e10) {
                                if (z10) {
                                    throw e10;
                                }
                                z11 = true;
                            }
                            if (this.f95675g) {
                                this.f95677i--;
                                if (z11) {
                                    Thread.currentThread().interrupt();
                                }
                                return true;
                            }
                            jNanoTime2 = j10 - (System.nanoTime() - jNanoTime);
                        } catch (Throwable th) {
                            this.f95677i--;
                            throw th;
                        }
                    } while (jNanoTime2 > 0);
                    boolean z13 = this.f95675g;
                    this.f95677i--;
                    if (z11) {
                        Thread.currentThread().interrupt();
                    }
                    return z13;
                }
                return z12;
            }
        } catch (Throwable th2) {
            if (z11) {
                Thread.currentThread().interrupt();
            }
            throw th2;
        }
    }

    private static void h() {
        if (i() && org.jboss.netty.util.internal.c.f95814a.get() != null) {
            throw new IllegalStateException("await*() in I/O thread causes a dead lock or sudden performance drop. Use addListener() instead or call await*() from a different thread.");
        }
    }

    public static boolean i() {
        return f95668k;
    }

    private void j(k kVar) {
        try {
            kVar.a(this);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void k() {
        k kVar = this.f95672d;
        if (kVar != null) {
            j(kVar);
            this.f95672d = null;
            List<k> list = this.f95673e;
            if (list != null) {
                Iterator<k> it2 = list.iterator();
                while (it2.hasNext()) {
                    j(it2.next());
                }
                this.f95673e = null;
            }
        }
    }

    private void l(l lVar, long j10, long j11, long j12) {
        try {
            lVar.b(this, j10, j11, j12);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void m() {
        Throwable thA = a();
        if (thA == null) {
            return;
        }
        if (thA instanceof RuntimeException) {
            throw ((RuntimeException) thA);
        }
        if (!(thA instanceof Error)) {
            throw new ChannelException(thA);
        }
        throw ((Error) thA);
    }

    public static void n(boolean z10) {
        if (!z10 && !f95669l) {
            f95669l = true;
        }
        f95668k = z10;
    }

    @Override // org.jboss.netty.channel.j
    public synchronized Throwable a() {
        Throwable th = this.f95676h;
        if (th != f95667j) {
            return th;
        }
        return null;
    }

    @Override // org.jboss.netty.channel.j
    public j await() throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        synchronized (this) {
            while (!this.f95675g) {
                h();
                this.f95677i++;
                try {
                    wait();
                    this.f95677i--;
                } catch (Throwable th) {
                    this.f95677i--;
                    throw th;
                }
            }
        }
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public j awaitUninterruptibly() {
        boolean z10;
        synchronized (this) {
            z10 = false;
            while (!this.f95675g) {
                try {
                    h();
                    this.f95677i++;
                    try {
                        try {
                            wait();
                            this.f95677i--;
                        } catch (InterruptedException unused) {
                            this.f95677i--;
                            z10 = true;
                        }
                    } catch (Throwable th) {
                        this.f95677i--;
                        throw th;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public void b(k kVar) {
        if (kVar == null) {
            throw new NullPointerException("listener");
        }
        synchronized (this) {
            if (!this.f95675g) {
                if (kVar == this.f95672d) {
                    List<k> list = this.f95673e;
                    if (list == null || list.isEmpty()) {
                        this.f95672d = null;
                    } else {
                        this.f95672d = this.f95673e.remove(0);
                    }
                } else {
                    List<k> list2 = this.f95673e;
                    if (list2 != null) {
                        list2.remove(kVar);
                    }
                }
                if (kVar instanceof l) {
                    this.f95674f.remove(kVar);
                }
            }
        }
    }

    @Override // org.jboss.netty.channel.j
    public boolean c(long j10, long j11, long j12) {
        synchronized (this) {
            if (this.f95675g) {
                return false;
            }
            List<l> list = this.f95674f;
            if (list != null && !list.isEmpty()) {
                for (l lVar : (l[]) list.toArray(new l[list.size()])) {
                    l(lVar, j10, j11, j12);
                }
                return true;
            }
            return true;
        }
    }

    @Override // org.jboss.netty.channel.j
    public boolean cancel() {
        if (!this.f95671c) {
            return false;
        }
        synchronized (this) {
            if (this.f95675g) {
                return false;
            }
            this.f95676h = f95667j;
            this.f95675g = true;
            if (this.f95677i > 0) {
                notifyAll();
            }
            k();
            return true;
        }
    }

    @Override // org.jboss.netty.channel.j
    @Deprecated
    public j d() throws Exception {
        Throwable thA;
        if (!isDone() || (thA = a()) == null) {
            return this;
        }
        if (thA instanceof Exception) {
            throw ((Exception) thA);
        }
        if (thA instanceof Error) {
            throw ((Error) thA);
        }
        throw new RuntimeException(thA);
    }

    @Override // org.jboss.netty.channel.j
    public void e(k kVar) {
        boolean z10;
        if (kVar == null) {
            throw new NullPointerException("listener");
        }
        synchronized (this) {
            z10 = true;
            if (!this.f95675g) {
                if (this.f95672d == null) {
                    this.f95672d = kVar;
                } else {
                    if (this.f95673e == null) {
                        this.f95673e = new ArrayList(1);
                    }
                    this.f95673e.add(kVar);
                }
                if (kVar instanceof l) {
                    if (this.f95674f == null) {
                        this.f95674f = new ArrayList(1);
                    }
                    this.f95674f.add((l) kVar);
                }
                z10 = false;
            }
        }
        if (z10) {
            j(kVar);
        }
    }

    @Override // org.jboss.netty.channel.j
    public e getChannel() {
        return this.f95670b;
    }

    @Override // org.jboss.netty.channel.j
    public synchronized boolean isCancelled() {
        return this.f95676h == f95667j;
    }

    @Override // org.jboss.netty.channel.j
    public synchronized boolean isDone() {
        return this.f95675g;
    }

    @Override // org.jboss.netty.channel.j
    public synchronized boolean isSuccess() {
        return this.f95675g && this.f95676h == null;
    }

    @Override // org.jboss.netty.channel.j
    public boolean setFailure(Throwable th) {
        synchronized (this) {
            if (this.f95675g) {
                return false;
            }
            this.f95676h = th;
            this.f95675g = true;
            if (this.f95677i > 0) {
                notifyAll();
            }
            k();
            return true;
        }
    }

    @Override // org.jboss.netty.channel.j
    public boolean setSuccess() {
        synchronized (this) {
            if (this.f95675g) {
                return false;
            }
            this.f95675g = true;
            if (this.f95677i > 0) {
                notifyAll();
            }
            k();
            return true;
        }
    }

    @Override // org.jboss.netty.channel.j
    public j sync() throws InterruptedException {
        await();
        m();
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public j syncUninterruptibly() {
        awaitUninterruptibly();
        m();
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public boolean await(long j10, TimeUnit timeUnit) throws InterruptedException {
        return g(timeUnit.toNanos(j10), true);
    }

    @Override // org.jboss.netty.channel.j
    public boolean awaitUninterruptibly(long j10, TimeUnit timeUnit) {
        try {
            return g(timeUnit.toNanos(j10), false);
        } catch (InterruptedException unused) {
            throw new InternalError();
        }
    }

    @Override // org.jboss.netty.channel.j
    public boolean await(long j10) throws InterruptedException {
        return g(TimeUnit.MILLISECONDS.toNanos(j10), true);
    }

    @Override // org.jboss.netty.channel.j
    public boolean awaitUninterruptibly(long j10) {
        try {
            return g(TimeUnit.MILLISECONDS.toNanos(j10), false);
        } catch (InterruptedException unused) {
            throw new InternalError();
        }
    }
}
