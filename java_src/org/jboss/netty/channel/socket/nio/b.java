package org.jboss.netty.channel.socket.nio;

import java.net.InetSocketAddress;
import java.nio.channels.SelectableChannel;
import java.nio.channels.WritableByteChannel;
import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.i0;

/* JADX INFO: loaded from: classes10.dex */
abstract class b<C extends SelectableChannel & WritableByteChannel> extends org.jboss.netty.channel.a {
    volatile InetSocketAddress A;
    final C B;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final e f95564o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final Object f95565p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final Runnable f95566q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final AtomicBoolean f95567r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final Queue<i0> f95568s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final AtomicInteger f95569t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final AtomicInteger f95570u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    i0 f95571v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    x.g f95572w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f95573x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f95574y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private volatile InetSocketAddress f95575z;

    private final class a implements Queue<i0> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final /* synthetic */ boolean f95576e = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final org.jboss.netty.util.internal.k f95577b = new org.jboss.netty.util.internal.k();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Queue<i0> f95578c = new ConcurrentLinkedQueue();

        public a() {
        }

        private int d(i0 i0Var) {
            Object message = i0Var.getMessage();
            if (message instanceof org.jboss.netty.buffer.e) {
                return ((org.jboss.netty.buffer.e) message).readableBytes();
            }
            return 0;
        }

        @Override // java.util.Queue, java.util.Collection
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean add(i0 i0Var) {
            return this.f95578c.add(i0Var);
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends i0> collection) {
            return this.f95578c.addAll(collection);
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i0 element() {
            return this.f95578c.element();
        }

        @Override // java.util.Collection
        public void clear() {
            this.f95578c.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return this.f95578c.contains(obj);
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return this.f95578c.containsAll(collection);
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public boolean offer(i0 i0Var) {
            this.f95578c.offer(i0Var);
            int iD = d(i0Var);
            int iAddAndGet = b.this.f95569t.addAndGet(iD);
            int writeBufferHighWaterMark = b.this.getConfig().getWriteBufferHighWaterMark();
            if (iAddAndGet < writeBufferHighWaterMark || iAddAndGet - iD >= writeBufferHighWaterMark) {
                return true;
            }
            b.this.f95570u.incrementAndGet();
            if (this.f95577b.get().booleanValue()) {
                return true;
            }
            this.f95577b.set(Boolean.TRUE);
            org.jboss.netty.channel.s.u(b.this);
            this.f95577b.set(Boolean.FALSE);
            return true;
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public i0 peek() {
            return this.f95578c.peek();
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public i0 poll() {
            i0 i0VarPoll = this.f95578c.poll();
            if (i0VarPoll != null) {
                int iD = d(i0VarPoll);
                int iAddAndGet = b.this.f95569t.addAndGet(-iD);
                int writeBufferLowWaterMark = b.this.getConfig().getWriteBufferLowWaterMark();
                if ((iAddAndGet == 0 || iAddAndGet < writeBufferLowWaterMark) && iAddAndGet + iD >= writeBufferLowWaterMark) {
                    b.this.f95570u.decrementAndGet();
                    if (b.this.isConnected() && !this.f95577b.get().booleanValue()) {
                        this.f95577b.set(Boolean.TRUE);
                        org.jboss.netty.channel.s.u(b.this);
                        this.f95577b.set(Boolean.FALSE);
                    }
                }
            }
            return i0VarPoll;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return this.f95578c.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<i0> iterator() {
            return this.f95578c.iterator();
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public i0 remove() {
            return this.f95578c.remove();
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return this.f95578c.removeAll(collection);
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return this.f95578c.retainAll(collection);
        }

        @Override // java.util.Collection
        public int size() {
            return this.f95578c.size();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return this.f95578c.toArray();
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            return this.f95578c.remove(obj);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) this.f95578c.toArray(tArr);
        }
    }

    /* JADX INFO: renamed from: org.jboss.netty.channel.socket.nio.b$b, reason: collision with other inner class name */
    private final class RunnableC1229b implements Runnable {
        RunnableC1229b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f95567r.set(false);
            b<?> bVar = b.this;
            bVar.f95564o.y(bVar);
        }
    }

    protected b(Integer num, org.jboss.netty.channel.e eVar, org.jboss.netty.channel.i iVar, org.jboss.netty.channel.n nVar, org.jboss.netty.channel.p pVar, e eVar2, C c10) {
        super(num, eVar, iVar, nVar, pVar);
        this.f95565p = new Object();
        this.f95566q = new RunnableC1229b();
        this.f95567r = new AtomicBoolean();
        this.f95568s = new a();
        this.f95569t = new AtomicInteger();
        this.f95570u = new AtomicInteger();
        this.f95564o = eVar2;
        this.B = c10;
    }

    @Override // org.jboss.netty.channel.a, org.jboss.netty.channel.e
    public int L0() {
        if (!isOpen()) {
            return 4;
        }
        int iM = m();
        int i10 = this.f95569t.get();
        return (i10 == 0 || (this.f95570u.get() <= 0 ? i10 < getConfig().getWriteBufferHighWaterMark() : i10 < getConfig().getWriteBufferLowWaterMark())) ? iM & (-5) : iM | 4;
    }

    @Override // org.jboss.netty.channel.a
    protected boolean i() {
        return super.i();
    }

    @Override // org.jboss.netty.channel.e
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public abstract j getConfig();

    abstract InetSocketAddress l() throws Exception;

    int m() {
        return super.L0();
    }

    abstract InetSocketAddress n() throws Exception;

    public e o() {
        return this.f95564o;
    }

    void p(int i10) {
        j(i10);
    }

    @Override // org.jboss.netty.channel.e
    public InetSocketAddress getLocalAddress() {
        InetSocketAddress inetSocketAddress = this.f95575z;
        if (inetSocketAddress != null) {
            return inetSocketAddress;
        }
        try {
            InetSocketAddress inetSocketAddressL = l();
            if (inetSocketAddressL.getAddress().isAnyLocalAddress()) {
                return inetSocketAddressL;
            }
            this.f95575z = inetSocketAddressL;
            return inetSocketAddressL;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // org.jboss.netty.channel.e
    public InetSocketAddress getRemoteAddress() {
        InetSocketAddress inetSocketAddress = this.A;
        if (inetSocketAddress != null) {
            return inetSocketAddress;
        }
        try {
            InetSocketAddress inetSocketAddressN = n();
            this.A = inetSocketAddressN;
            return inetSocketAddressN;
        } catch (Throwable unused) {
            return null;
        }
    }

    protected b(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.i iVar, org.jboss.netty.channel.n nVar, org.jboss.netty.channel.p pVar, e eVar2, C c10) {
        super(eVar, iVar, nVar, pVar);
        this.f95565p = new Object();
        this.f95566q = new RunnableC1229b();
        this.f95567r = new AtomicBoolean();
        this.f95568s = new a();
        this.f95569t = new AtomicInteger();
        this.f95570u = new AtomicInteger();
        this.f95564o = eVar2;
        this.B = c10;
    }
}
