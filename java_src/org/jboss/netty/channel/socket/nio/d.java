package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.ChannelException;

/* JADX INFO: loaded from: classes10.dex */
abstract class d implements p {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final AtomicInteger f95581k = new AtomicInteger();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f95582l = 256;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final /* synthetic */ boolean f95583m = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f95584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f95585c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected volatile Thread f95586d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected volatile Selector f95587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final AtomicBoolean f95588f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Queue<Runnable> f95589g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile int f95590h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final CountDownLatch f95591i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile boolean f95592j;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.rebuildSelector();
        }
    }

    d(Executor executor) {
        this(executor, null);
    }

    private void h(org.jboss.netty.util.d dVar) {
        try {
            this.f95587e = Selector.open();
            try {
                org.jboss.netty.util.internal.c.a(this.f95585c, g(this.f95584b, dVar));
            } catch (Throwable th) {
                try {
                    this.f95587e.close();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                this.f95587e = null;
                throw th;
            }
        } catch (Throwable th3) {
            throw new ChannelException("Failed to create a selector.", th3);
        }
    }

    private void j() {
        while (true) {
            Runnable runnablePoll = this.f95589g.poll();
            if (runnablePoll == null) {
                return;
            }
            runnablePoll.run();
            try {
                a();
            } catch (IOException unused) {
            }
        }
    }

    protected final boolean a() throws IOException {
        if (this.f95590h < 256) {
            return false;
        }
        this.f95590h = 0;
        this.f95587e.selectNow();
        return true;
    }

    protected abstract void b(SelectionKey selectionKey);

    protected abstract Runnable c(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar);

    protected final void d() {
        this.f95590h++;
    }

    protected final boolean e() {
        return Thread.currentThread() == this.f95586d;
    }

    @Override // org.jboss.netty.channel.socket.nio.p
    public void f(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar) {
        k(c(eVar, jVar));
    }

    protected abstract org.jboss.netty.util.e g(int i10, org.jboss.netty.util.d dVar);

    protected abstract void i(Selector selector) throws IOException;

    protected final void k(Runnable runnable) {
        this.f95589g.add(runnable);
        Selector selector = this.f95587e;
        if (selector == null) {
            if (this.f95589g.remove(runnable)) {
                throw new RejectedExecutionException("Worker has already been shutdown");
            }
        } else if (this.f95588f.compareAndSet(false, true)) {
            selector.wakeup();
        }
    }

    protected int l(Selector selector) throws IOException {
        return v.a(selector);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        continue;
     */
    @Override // org.jboss.netty.channel.socket.nio.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void rebuildSelector() {
        /*
            r7 = this;
            boolean r0 = r7.e()
            if (r0 != 0) goto L11
            java.util.Queue<java.lang.Runnable> r0 = r7.f95589g
            org.jboss.netty.channel.socket.nio.d$a r1 = new org.jboss.netty.channel.socket.nio.d$a
            r1.<init>()
            r0.add(r1)
            return
        L11:
            java.nio.channels.Selector r0 = r7.f95587e
            if (r0 != 0) goto L16
            return
        L16:
            java.nio.channels.Selector r1 = java.nio.channels.Selector.open()     // Catch: java.lang.Exception -> L5b
        L1a:
            java.util.Set r2 = r0.keys()     // Catch: java.util.ConcurrentModificationException -> L1a
            java.util.Iterator r2 = r2.iterator()     // Catch: java.util.ConcurrentModificationException -> L1a
        L22:
            boolean r3 = r2.hasNext()     // Catch: java.util.ConcurrentModificationException -> L1a
            if (r3 == 0) goto L50
            java.lang.Object r3 = r2.next()     // Catch: java.util.ConcurrentModificationException -> L1a
            java.nio.channels.SelectionKey r3 = (java.nio.channels.SelectionKey) r3     // Catch: java.util.ConcurrentModificationException -> L1a
            java.nio.channels.SelectableChannel r4 = r3.channel()     // Catch: java.lang.Exception -> L4c
            java.nio.channels.SelectionKey r4 = r4.keyFor(r1)     // Catch: java.lang.Exception -> L4c
            if (r4 == 0) goto L39
            goto L22
        L39:
            int r4 = r3.interestOps()     // Catch: java.lang.Exception -> L4c
            r3.cancel()     // Catch: java.lang.Exception -> L4c
            java.nio.channels.SelectableChannel r5 = r3.channel()     // Catch: java.lang.Exception -> L4c
            java.lang.Object r6 = r3.attachment()     // Catch: java.lang.Exception -> L4c
            r5.register(r1, r4, r6)     // Catch: java.lang.Exception -> L4c
            goto L22
        L4c:
            r7.b(r3)     // Catch: java.util.ConcurrentModificationException -> L1a
            goto L22
        L50:
            r7.f95587e = r1
            r0.close()     // Catch: java.lang.Throwable -> L56
            goto L5a
        L56:
            r0 = move-exception
            r0.printStackTrace()
        L5a:
            return
        L5b:
            r0 = move-exception
            r0.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.d.rebuildSelector():void");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x007b  */
    @Override // java.lang.Runnable
    public void run() {
        this.f95586d = Thread.currentThread();
        Selector selector = this.f95587e;
        if (selector == null) {
            return;
        }
        long j10 = (v.f95637d * 80) / 100;
        while (true) {
            boolean z10 = false;
            int i10 = 0;
            while (true) {
                this.f95588f.set(false);
                try {
                    long jNanoTime = System.nanoTime();
                    int iL = l(selector);
                    if (v.f95638e && iL == 0 && !z10 && !this.f95588f.get()) {
                        if (System.nanoTime() - jNanoTime < j10) {
                            boolean z11 = false;
                            for (SelectionKey selectionKey : selector.keys()) {
                                SelectableChannel selectableChannelChannel = selectionKey.channel();
                                try {
                                    if (((selectableChannelChannel instanceof DatagramChannel) && !((DatagramChannel) selectableChannelChannel).isConnected()) || ((selectableChannelChannel instanceof SocketChannel) && !((SocketChannel) selectableChannelChannel).isConnected())) {
                                        try {
                                            selectionKey.cancel();
                                        } catch (CancelledKeyException unused) {
                                        }
                                        z11 = true;
                                    }
                                } catch (CancelledKeyException unused2) {
                                }
                            }
                            if (z11) {
                                i10 = 0;
                            } else {
                                i10++;
                            }
                        } else {
                            i10 = 0;
                        }
                        if (i10 == 1024) {
                            break;
                        }
                    } else {
                        i10 = 0;
                    }
                    if (this.f95588f.get()) {
                        try {
                            selector.wakeup();
                            z10 = true;
                        } catch (Throwable th) {
                            th = th;
                            z10 = true;
                            th.printStackTrace();
                            try {
                                Thread.sleep(1000L);
                            } catch (InterruptedException unused3) {
                            }
                        }
                    } else {
                        z10 = false;
                    }
                    this.f95590h = 0;
                    j();
                    selector = this.f95587e;
                    if (this.f95592j) {
                        this.f95587e = null;
                        j();
                        Iterator<SelectionKey> it2 = selector.keys().iterator();
                        while (it2.hasNext()) {
                            b(it2.next());
                        }
                        try {
                            selector.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        this.f95591i.countDown();
                        return;
                    }
                    i(selector);
                } catch (Throwable th2) {
                    th = th2;
                    th.printStackTrace();
                    Thread.sleep(1000L);
                }
            }
            rebuildSelector();
            selector = this.f95587e;
        }
    }

    @Override // org.jboss.netty.channel.socket.nio.p
    public void shutdown() {
        if (e()) {
            throw new IllegalStateException("Must not be called from a I/O-Thread to prevent deadlocks!");
        }
        Selector selector = this.f95587e;
        this.f95592j = true;
        if (selector != null) {
            selector.wakeup();
        }
        try {
            this.f95591i.await();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
            Thread.currentThread().interrupt();
        }
    }

    d(Executor executor, org.jboss.netty.util.d dVar) {
        this.f95584b = f95581k.incrementAndGet();
        this.f95588f = new AtomicBoolean();
        this.f95589g = new ConcurrentLinkedQueue();
        this.f95591i = new CountDownLatch(1);
        this.f95585c = executor;
        h(dVar);
    }
}
