package org.jboss.netty.channel;

import java.net.SocketAddress;
import java.util.Random;
import java.util.concurrent.ConcurrentMap;
import org.jboss.netty.util.internal.ConcurrentHashMap;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a implements e {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final ConcurrentMap<Integer, e> f95496l = new ConcurrentHashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Random f95497m = new Random();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final /* synthetic */ boolean f95498n = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Integer f95499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f95500c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f95501d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n f95502e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j f95503f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final C1228a f95504g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile int f95505h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f95506i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f95507j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile Object f95508k;

    /* JADX INFO: renamed from: org.jboss.netty.channel.a$a, reason: collision with other inner class name */
    private final class C1228a extends w {
        public C1228a() {
            super(a.this, false);
        }

        boolean o() {
            return super.setSuccess();
        }

        @Override // org.jboss.netty.channel.w, org.jboss.netty.channel.j
        public boolean setFailure(Throwable th) {
            return false;
        }

        @Override // org.jboss.netty.channel.w, org.jboss.netty.channel.j
        public boolean setSuccess() {
            return false;
        }
    }

    protected a(e eVar, i iVar, n nVar, p pVar) {
        this.f95503f = new n0(this);
        this.f95504g = new C1228a();
        this.f95505h = 1;
        this.f95500c = eVar;
        this.f95501d = iVar;
        this.f95502e = nVar;
        this.f95499b = c(this);
        nVar.k(this, pVar);
    }

    private static Integer c(e eVar) {
        Integer numValueOf = Integer.valueOf(f95497m.nextInt());
        while (f95496l.putIfAbsent(numValueOf, eVar) != null) {
            numValueOf = Integer.valueOf(numValueOf.intValue() + 1);
        }
        return numValueOf;
    }

    private String f() {
        String hexString = Integer.toHexString(this.f95499b.intValue());
        switch (hexString.length()) {
            case 0:
                return "00000000";
            case 1:
                return "0000000" + hexString;
            case 2:
                return "000000" + hexString;
            case 3:
                return "00000" + hexString;
            case 4:
                return "0000" + hexString;
            case 5:
                return "000" + hexString;
            case 6:
                return com.sigmob.sdk.archives.tar.e.V + hexString;
            case 7:
                return '0' + hexString;
            default:
                return hexString;
        }
    }

    @Override // org.jboss.netty.channel.e
    public j I() {
        return s.X(this);
    }

    @Override // org.jboss.netty.channel.e
    public j J(int i10) {
        return s.U(this, i10);
    }

    @Override // org.jboss.netty.channel.e
    public Object K() {
        return this.f95508k;
    }

    @Override // org.jboss.netty.channel.e
    public int L0() {
        return this.f95505h;
    }

    @Override // org.jboss.netty.channel.e
    public j P(boolean z10) {
        return z10 ? J(L0() | 1) : J(L0() & (-2));
    }

    @Override // org.jboss.netty.channel.e
    public j Q(Object obj, SocketAddress socketAddress) {
        return s.b0(this, obj, socketAddress);
    }

    @Override // org.jboss.netty.channel.e
    public i S() {
        return this.f95501d;
    }

    @Override // org.jboss.netty.channel.e
    public j bind(SocketAddress socketAddress) {
        return s.a(this, socketAddress);
    }

    @Override // org.jboss.netty.channel.e
    public j close() {
        s.c(this);
        return this.f95504g;
    }

    @Override // org.jboss.netty.channel.e
    public j connect(SocketAddress socketAddress) {
        return s.e(this, socketAddress);
    }

    @Override // org.jboss.netty.channel.e
    public void d(Object obj) {
        this.f95508k = obj;
    }

    @Override // org.jboss.netty.channel.e
    public j disconnect() {
        return s.g(this);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final int compareTo(e eVar) {
        return getId().compareTo(eVar.getId());
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    protected j g() {
        return this.f95503f;
    }

    @Override // org.jboss.netty.channel.e
    public final Integer getId() {
        return this.f95499b;
    }

    @Override // org.jboss.netty.channel.e
    public e getParent() {
        return this.f95500c;
    }

    @Override // org.jboss.netty.channel.e
    public n getPipeline() {
        return this.f95502e;
    }

    protected j h() {
        return new f0(this, new UnsupportedOperationException());
    }

    public final int hashCode() {
        return this.f95499b.intValue();
    }

    protected boolean i() {
        f95496l.remove(this.f95499b);
        return this.f95504g.o();
    }

    @Override // org.jboss.netty.channel.e
    public boolean isOpen() {
        return !this.f95504g.isDone();
    }

    @Override // org.jboss.netty.channel.e
    public boolean isReadable() {
        return (L0() & 1) != 0;
    }

    @Override // org.jboss.netty.channel.e
    public boolean isWritable() {
        return (L0() & 4) == 0;
    }

    protected void j(int i10) {
        this.f95505h = i10;
    }

    @Override // org.jboss.netty.channel.e
    public j t0() {
        return this.f95504g;
    }

    public String toString() {
        String str;
        boolean zIsConnected = isConnected();
        if (this.f95506i == zIsConnected && (str = this.f95507j) != null) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("[id: 0x");
        sb2.append(f());
        SocketAddress localAddress = getLocalAddress();
        SocketAddress remoteAddress = getRemoteAddress();
        if (remoteAddress != null) {
            sb2.append(", ");
            if (getParent() == null) {
                sb2.append(localAddress);
                sb2.append(zIsConnected ? " => " : " :> ");
                sb2.append(remoteAddress);
            } else {
                sb2.append(remoteAddress);
                sb2.append(zIsConnected ? " => " : " :> ");
                sb2.append(localAddress);
            }
        } else if (localAddress != null) {
            sb2.append(", ");
            sb2.append(localAddress);
        }
        sb2.append(']');
        String string = sb2.toString();
        this.f95507j = string;
        this.f95506i = zIsConnected;
        return string;
    }

    @Override // org.jboss.netty.channel.e
    public j write(Object obj) {
        return s.a0(this, obj);
    }

    protected a(Integer num, e eVar, i iVar, n nVar, p pVar) {
        this.f95503f = new n0(this);
        this.f95504g = new C1228a();
        this.f95505h = 1;
        this.f95499b = num;
        this.f95500c = eVar;
        this.f95501d = iVar;
        this.f95502e = nVar;
        nVar.k(this, pVar);
    }
}
