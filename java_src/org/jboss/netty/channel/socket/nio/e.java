package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.AsynchronousCloseException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.NotYetConnectedException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.i0;

/* JADX INFO: loaded from: classes10.dex */
abstract class e extends d implements ed.f {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected final x f95594n;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ b f95595b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.j f95596c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f95597d;

        a(b bVar, org.jboss.netty.channel.j jVar, int i10) {
            this.f95595b = bVar;
            this.f95596c = jVar;
            this.f95597d = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.t(this.f95595b, this.f95596c, this.f95597d);
        }
    }

    e(Executor executor) {
        super(executor);
        this.f95594n = new x();
    }

    protected static void m(b<?> bVar) {
        Throwable notYetConnectedException;
        boolean z10;
        synchronized (bVar.f95565p) {
            i0 i0Var = bVar.f95571v;
            notYetConnectedException = null;
            if (i0Var != null) {
                Throwable notYetConnectedException2 = bVar.isOpen() ? new NotYetConnectedException() : new ClosedChannelException();
                org.jboss.netty.channel.j jVarD = i0Var.d();
                x.g gVar = bVar.f95572w;
                if (gVar != null) {
                    gVar.release();
                    bVar.f95572w = null;
                }
                bVar.f95571v = null;
                jVarD.setFailure(notYetConnectedException2);
                notYetConnectedException = notYetConnectedException2;
                z10 = true;
            } else {
                z10 = false;
            }
            Queue<i0> queue = bVar.f95568s;
            while (true) {
                i0 i0VarPoll = queue.poll();
                if (i0VarPoll == null) {
                    break;
                }
                if (notYetConnectedException == null) {
                    notYetConnectedException = bVar.isOpen() ? new NotYetConnectedException() : new ClosedChannelException();
                    z10 = true;
                }
                i0VarPoll.d().setFailure(notYetConnectedException);
            }
        }
        if (z10) {
            if (q(bVar)) {
                org.jboss.netty.channel.s.D(bVar, notYetConnectedException);
            } else {
                org.jboss.netty.channel.s.F(bVar, notYetConnectedException);
            }
        }
    }

    static boolean q(b<?> bVar) {
        return Thread.currentThread() == bVar.f95564o.f95586d;
    }

    @Override // ed.f
    public void S0(Runnable runnable) {
        p(runnable, false);
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected void b(SelectionKey selectionKey) {
        b<?> bVar = (b) selectionKey.attachment();
        o(bVar, org.jboss.netty.channel.s.W(bVar));
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected org.jboss.netty.util.e g(int i10, org.jboss.netty.util.d dVar) {
        return new org.jboss.netty.util.e(this, "New I/O worker #" + i10, dVar);
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected void i(Selector selector) throws IOException {
        Set<SelectionKey> setSelectedKeys = selector.selectedKeys();
        if (setSelectedKeys.isEmpty()) {
            return;
        }
        Iterator<SelectionKey> it2 = setSelectedKeys.iterator();
        while (it2.hasNext()) {
            SelectionKey next = it2.next();
            it2.remove();
            try {
                int i10 = next.readyOps();
                if (((i10 & 1) == 0 && i10 != 0) || r(next)) {
                    if ((i10 & 4) != 0) {
                        x(next);
                    }
                    if (a()) {
                        return;
                    }
                }
            } catch (CancelledKeyException unused) {
                b(next);
            }
        }
    }

    protected void n(b<?> bVar) {
        SelectionKey selectionKeyKeyFor = bVar.B.keyFor(this.f95587e);
        if (selectionKeyKeyFor == null) {
            return;
        }
        if (!selectionKeyKeyFor.isValid()) {
            b(selectionKeyKeyFor);
            return;
        }
        int iM = bVar.m();
        if ((iM & 4) != 0) {
            int i10 = iM & (-5);
            selectionKeyKeyFor.interestOps(i10);
            bVar.p(i10);
        }
    }

    protected void o(b<?> bVar, org.jboss.netty.channel.j jVar) {
        boolean zIsConnected = bVar.isConnected();
        boolean zIsBound = bVar.isBound();
        boolean zQ = q(bVar);
        try {
            bVar.B.close();
            d();
            if (!bVar.i()) {
                jVar.setSuccess();
                return;
            }
            jVar.setSuccess();
            if (zIsConnected) {
                if (zQ) {
                    org.jboss.netty.channel.s.r(bVar);
                } else {
                    org.jboss.netty.channel.s.t(bVar);
                }
            }
            if (zIsBound) {
                if (zQ) {
                    org.jboss.netty.channel.s.z(bVar);
                } else {
                    org.jboss.netty.channel.s.B(bVar);
                }
            }
            m(bVar);
            if (zQ) {
                org.jboss.netty.channel.s.m(bVar);
            } else {
                org.jboss.netty.channel.s.o(bVar);
            }
        } catch (Throwable th) {
            jVar.setFailure(th);
            if (zQ) {
                org.jboss.netty.channel.s.D(bVar, th);
            } else {
                org.jboss.netty.channel.s.F(bVar, th);
            }
        }
    }

    public void p(Runnable runnable, boolean z10) {
        if (z10 || !e()) {
            k(runnable);
        } else {
            runnable.run();
        }
    }

    protected abstract boolean r(SelectionKey selectionKey);

    @Override // org.jboss.netty.channel.socket.nio.d, java.lang.Runnable
    public void run() {
        super.run();
        this.f95594n.a();
    }

    protected abstract boolean s(b<?> bVar);

    void t(b<?> bVar, org.jboss.netty.channel.j jVar, int i10) {
        boolean zQ = q(bVar);
        if (!zQ) {
            bVar.getPipeline().execute(new a(bVar, jVar, i10));
            return;
        }
        try {
            Selector selector = this.f95587e;
            SelectionKey selectionKeyKeyFor = bVar.B.keyFor(selector);
            int iM = (i10 & (-5)) | (bVar.m() & 4);
            boolean z10 = true;
            if (selectionKeyKeyFor != null && selector != null) {
                if (bVar.m() != iM) {
                    selectionKeyKeyFor.interestOps(iM);
                    if (Thread.currentThread() != this.f95586d && this.f95588f.compareAndSet(false, true)) {
                        selector.wakeup();
                    }
                    bVar.p(iM);
                }
                jVar.setSuccess();
                return;
            }
            if (bVar.m() == iM) {
                z10 = false;
            }
            bVar.p(iM);
            jVar.setSuccess();
            if (z10) {
                if (zQ) {
                    org.jboss.netty.channel.s.u(bVar);
                } else {
                    org.jboss.netty.channel.s.w(bVar);
                }
            }
        } catch (CancelledKeyException unused) {
            ClosedChannelException closedChannelException = new ClosedChannelException();
            jVar.setFailure(closedChannelException);
            org.jboss.netty.channel.s.D(bVar, closedChannelException);
        } catch (Throwable th) {
            jVar.setFailure(th);
            org.jboss.netty.channel.s.D(bVar, th);
        }
    }

    protected void v(b<?> bVar) {
        SelectionKey selectionKeyKeyFor = bVar.B.keyFor(this.f95587e);
        if (selectionKeyKeyFor == null) {
            return;
        }
        if (!selectionKeyKeyFor.isValid()) {
            b(selectionKeyKeyFor);
            return;
        }
        int iM = bVar.m();
        if ((iM & 4) == 0) {
            int i10 = iM | 4;
            selectionKeyKeyFor.interestOps(i10);
            bVar.p(i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:112:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f6 A[Catch: all -> 0x011d, TRY_ENTER, TryCatch #9 {, blocks: (B:5:0x001d, B:6:0x0027, B:52:0x00ba, B:55:0x00c0, B:57:0x00c6, B:58:0x00c9, B:73:0x00f6, B:74:0x00f9, B:76:0x00ff, B:78:0x0104, B:80:0x010b, B:82:0x010f, B:79:0x0108), top: B:103:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:76:0x00ff A[Catch: all -> 0x011d, TryCatch #9 {, blocks: (B:5:0x001d, B:6:0x0027, B:52:0x00ba, B:55:0x00c0, B:57:0x00c6, B:58:0x00c9, B:73:0x00f6, B:74:0x00f9, B:76:0x00ff, B:78:0x0104, B:80:0x010b, B:82:0x010f, B:79:0x0108), top: B:103:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0104 A[Catch: all -> 0x011d, TryCatch #9 {, blocks: (B:5:0x001d, B:6:0x0027, B:52:0x00ba, B:55:0x00c0, B:57:0x00c6, B:58:0x00c9, B:73:0x00f6, B:74:0x00f9, B:76:0x00ff, B:78:0x0104, B:80:0x010b, B:82:0x010f, B:79:0x0108), top: B:103:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0108 A[Catch: all -> 0x011d, TryCatch #9 {, blocks: (B:5:0x001d, B:6:0x0027, B:52:0x00ba, B:55:0x00c0, B:57:0x00c6, B:58:0x00c9, B:73:0x00f6, B:74:0x00f9, B:76:0x00ff, B:78:0x0104, B:80:0x010b, B:82:0x010f, B:79:0x0108), top: B:103:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:82:0x010f A[Catch: all -> 0x011d, TryCatch #9 {, blocks: (B:5:0x001d, B:6:0x0027, B:52:0x00ba, B:55:0x00c0, B:57:0x00c6, B:58:0x00c9, B:73:0x00f6, B:74:0x00f9, B:76:0x00ff, B:78:0x0104, B:80:0x010b, B:82:0x010f, B:79:0x0108), top: B:103:0x001d }] */
    protected void w(b<?> bVar) {
        Throwable th;
        org.jboss.netty.channel.j jVar;
        x.g gVarF;
        org.jboss.netty.channel.j jVarD;
        boolean z10;
        boolean z11;
        long j10;
        long j11;
        boolean zQ = q(bVar);
        x xVar = this.f95594n;
        WritableByteChannel writableByteChannel = bVar.B;
        Queue<i0> queue = bVar.f95568s;
        int writeSpinCount = bVar.getConfig().getWriteSpinCount();
        synchronized (bVar.f95565p) {
            bVar.f95573x = true;
            boolean z12 = false;
            long j12 = 0;
            long j13 = 0;
            boolean z13 = true;
            boolean z14 = false;
            boolean z15 = false;
            while (true) {
                i0 i0Var = bVar.f95571v;
                try {
                    if (i0Var == null) {
                        try {
                            try {
                                i0 i0VarPoll = queue.poll();
                                bVar.f95571v = i0VarPoll;
                                if (i0VarPoll == null) {
                                    try {
                                        bVar.f95574y = z12;
                                        z10 = z14;
                                        j10 = j13;
                                        z11 = false;
                                        z15 = true;
                                        break;
                                    } catch (AsynchronousCloseException unused) {
                                        z15 = true;
                                        z12 = false;
                                        j12 = 0;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        jVar = null;
                                        gVarF = null;
                                        z15 = true;
                                        if (gVarF != null) {
                                            gVarF.release();
                                        }
                                        bVar.f95571v = null;
                                        bVar.f95572w = null;
                                        if (jVar != null) {
                                            jVar.setFailure(th);
                                        }
                                        if (zQ) {
                                            org.jboss.netty.channel.s.D(bVar, th);
                                        } else {
                                            org.jboss.netty.channel.s.F(bVar, th);
                                        }
                                        if (th instanceof IOException) {
                                            o(bVar, org.jboss.netty.channel.s.W(bVar));
                                            z13 = false;
                                        }
                                        z12 = false;
                                        j12 = 0;
                                    }
                                } else {
                                    jVarD = i0VarPoll.d();
                                    try {
                                        gVarF = xVar.f(i0VarPoll.getMessage());
                                        try {
                                            bVar.f95572w = gVarF;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            jVar = jVarD;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        gVarF = null;
                                    }
                                }
                            } catch (AsynchronousCloseException unused2) {
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            jVar = null;
                            gVarF = null;
                        }
                        if (gVarF != null) {
                            gVarF.release();
                        }
                        bVar.f95571v = null;
                        bVar.f95572w = null;
                        if (jVar != null) {
                            jVar.setFailure(th);
                        }
                        if (zQ) {
                            org.jboss.netty.channel.s.D(bVar, th);
                        } else {
                            org.jboss.netty.channel.s.F(bVar, th);
                        }
                        if (th instanceof IOException) {
                            o(bVar, org.jboss.netty.channel.s.W(bVar));
                            z13 = false;
                        }
                        z12 = false;
                        j12 = 0;
                    } else {
                        try {
                            jVarD = i0Var.d();
                            try {
                                gVarF = bVar.f95572w;
                            } catch (Throwable th6) {
                                th = th6;
                                gVarF = null;
                                jVar = jVarD;
                                if (gVarF != null) {
                                    gVarF.release();
                                }
                                bVar.f95571v = null;
                                bVar.f95572w = null;
                                if (jVar != null) {
                                    jVar.setFailure(th);
                                }
                                if (zQ) {
                                    org.jboss.netty.channel.s.D(bVar, th);
                                } else {
                                    org.jboss.netty.channel.s.F(bVar, th);
                                }
                                if (th instanceof IOException) {
                                    o(bVar, org.jboss.netty.channel.s.W(bVar));
                                    z13 = false;
                                }
                                z12 = false;
                                j12 = 0;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            jVar = null;
                            gVarF = null;
                            if (gVarF != null) {
                                gVarF.release();
                            }
                            bVar.f95571v = null;
                            bVar.f95572w = null;
                            if (jVar != null) {
                                jVar.setFailure(th);
                            }
                            if (zQ) {
                                org.jboss.netty.channel.s.D(bVar, th);
                            } else {
                                org.jboss.netty.channel.s.F(bVar, th);
                            }
                            if (th instanceof IOException) {
                                o(bVar, org.jboss.netty.channel.s.W(bVar));
                                z13 = false;
                            }
                        }
                    }
                    if (gVarF.a()) {
                        gVarF.release();
                        bVar.f95571v = null;
                        bVar.f95572w = null;
                        jVarD.setSuccess();
                        z12 = false;
                        j12 = 0;
                    } else {
                        z14 = true;
                        try {
                            bVar.f95574y = true;
                            if (j11 > j12) {
                                jVarD.c(j11, gVarF.e(), gVarF.b());
                            }
                            j10 = j13;
                            z11 = false;
                            z10 = true;
                            break;
                        } catch (Throwable th8) {
                            th = th8;
                            jVar = jVarD;
                            if (gVarF != null) {
                                gVarF.release();
                            }
                            bVar.f95571v = null;
                            bVar.f95572w = null;
                            if (jVar != null) {
                                jVar.setFailure(th);
                            }
                            if (zQ) {
                                org.jboss.netty.channel.s.D(bVar, th);
                            } else {
                                org.jboss.netty.channel.s.F(bVar, th);
                            }
                            if (th instanceof IOException) {
                                o(bVar, org.jboss.netty.channel.s.W(bVar));
                                z13 = false;
                            }
                            z12 = false;
                            j12 = 0;
                        }
                    }
                } catch (Throwable th9) {
                    th = th9;
                    jVar = jVarD;
                    if (gVarF != null) {
                        gVarF.release();
                    }
                    bVar.f95571v = null;
                    bVar.f95572w = null;
                    if (jVar != null) {
                        jVar.setFailure(th);
                    }
                    if (zQ) {
                        org.jboss.netty.channel.s.D(bVar, th);
                    } else {
                        org.jboss.netty.channel.s.F(bVar, th);
                    }
                    if (th instanceof IOException) {
                        o(bVar, org.jboss.netty.channel.s.W(bVar));
                        z13 = false;
                    }
                }
                long jC = j12;
                for (int i10 = writeSpinCount; i10 > 0; i10--) {
                    jC = gVarF.c(writableByteChannel);
                    if (jC != j12) {
                        j13 += jC;
                        break;
                    } else {
                        if (gVarF.a()) {
                            break;
                        }
                    }
                }
                j11 = jC;
            }
            bVar.f95573x = z11;
            if (z13) {
                if (z10) {
                    v(bVar);
                } else if (z15) {
                    n(bVar);
                }
            }
        }
        if (zQ) {
            org.jboss.netty.channel.s.L(bVar, j10);
        } else {
            org.jboss.netty.channel.s.N(bVar, j10);
        }
    }

    void x(SelectionKey selectionKey) {
        b<?> bVar = (b) selectionKey.attachment();
        bVar.f95574y = false;
        w(bVar);
    }

    void y(b<?> bVar) {
        if (bVar.f95574y) {
            return;
        }
        w(bVar);
    }

    void z(b<?> bVar) {
        if (!bVar.isConnected()) {
            m(bVar);
        } else {
            if (s(bVar) || bVar.f95574y || bVar.f95573x) {
                return;
            }
            w(bVar);
        }
    }

    e(Executor executor, org.jboss.netty.util.d dVar) {
        super(executor, dVar);
        this.f95594n = new x();
    }
}
