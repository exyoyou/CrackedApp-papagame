package com.byazt.iq;

import com.byazt.eg.da;
import com.byazt.eg.eo;
import com.byazt.eg.gr;
import com.byazt.eg.gt;
import com.byazt.eg.gu;
import com.byazt.eg.h;
import com.byazt.eg.i;
import com.byazt.eg.m;
import com.byazt.eg.my;
import com.byazt.eg.nu;
import com.byazt.eg.sl;
import com.byazt.eg.yv;
import com.byazt.mk.t;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 179, 54})
public final class ve extends com.byazt.jb.sp.tt implements i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15478c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Socket f15479da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Socket f15480i;
    public nu sl;
    public final da sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public gr f15482t;
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.jb.sp f15483u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final eo f15484x;
    public com.byazt.mk.n yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.mk.uj f15485z;
    public int ve = 1;
    public final List<Reference<sp>> uj = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f15481n = Long.MAX_VALUE;

    public ve(da daVar, eo eoVar) {
        this.sp = daVar;
        this.f15484x = eoVar;
    }

    private yv a() {
        return new yv.c().c(this.f15484x.c().c()).c("Host", com.byazt.kh.ve.c(this.f15484x.c().c(), true)).c("Proxy-Connection", "Keep-Alive").c("User-Agent", com.byazt.kh.uj.c()).c();
    }

    public void c(int i10, int i11, int i12, boolean z10, com.byazt.eg.n nVar, m mVar) {
        if (this.f15482t != null) {
            throw new IllegalStateException("already connected");
        }
        List<sl> listA = this.f15484x.c().a();
        tt ttVar = new tt(listA);
        if (this.f15484x.c().i() == null) {
            if (!listA.contains(sl.ve)) {
                throw new n(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String strSp = this.f15484x.c().c().sp();
            if (!com.byazt.xb.n.tt().tt(strSp)) {
                throw new n(new UnknownServiceException("CLEARTEXT communication to " + strSp + " not permitted by network security policy"));
            }
        }
        n nVar2 = null;
        while (true) {
            try {
                if (this.f15484x.uj()) {
                    c(i10, i11, i12, nVar, mVar);
                    if (this.f15480i == null) {
                        break;
                    }
                } else {
                    try {
                        c(i10, i11, nVar, mVar);
                    } catch (IOException e10) {
                        e = e10;
                        com.byazt.kh.ve.c(this.f15479da);
                        com.byazt.kh.ve.c(this.f15480i);
                        this.f15479da = null;
                        this.f15480i = null;
                        this.yp = null;
                        this.f15485z = null;
                        this.sl = null;
                        this.f15482t = null;
                        this.f15483u = null;
                        mVar.c(nVar, this.f15484x.ve(), this.f15484x.tt(), null, e);
                        if (nVar2 == null) {
                            nVar2 = new n(e);
                        } else {
                            nVar2.c(e);
                        }
                        if (!z10) {
                            throw nVar2;
                        }
                        if (!ttVar.c(e)) {
                            throw nVar2;
                        }
                    }
                }
                c(ttVar, nVar, mVar);
                break;
            } catch (IOException e11) {
                e = e11;
            }
        }
        if (this.f15484x.uj() && this.f15480i == null) {
            throw new n(new ProtocolException("Too many tunnel connections attempted: 21"));
        }
        if (this.f15483u != null) {
            synchronized (this.sp) {
                this.ve = this.f15483u.c();
            }
        }
    }

    public boolean n() {
        return this.f15483u != null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Connection{");
        sb2.append(this.f15484x.c().c().sp());
        sb2.append(":");
        sb2.append(this.f15484x.c().c().x());
        sb2.append(", proxy=");
        sb2.append(this.f15484x.tt());
        sb2.append(" hostAddress=");
        sb2.append(this.f15484x.ve());
        sb2.append(" cipherSuite=");
        nu nuVar = this.sl;
        sb2.append(nuVar != null ? nuVar.tt() : "none");
        sb2.append(" protocol=");
        sb2.append(this.f15482t);
        sb2.append('}');
        return sb2.toString();
    }

    public void tt() {
        com.byazt.kh.ve.c(this.f15480i);
    }

    public nu uj() {
        return this.sl;
    }

    public Socket ve() {
        return this.f15479da;
    }

    private void c(int i10, int i11, int i12, com.byazt.eg.n nVar, m mVar) throws IOException {
        yv yvVarA = a();
        my myVarC = yvVarA.c();
        for (int i13 = 0; i13 < 21; i13++) {
            c(i10, i11, nVar, mVar);
            yvVarA = c(i11, i12, yvVarA, myVarC);
            if (yvVarA == null) {
                return;
            }
            com.byazt.kh.ve.c(this.f15480i);
            this.f15480i = null;
            this.f15485z = null;
            this.yp = null;
        }
    }

    private void c(int i10, int i11, com.byazt.eg.n nVar, m mVar) throws IOException {
        Proxy proxyTt = this.f15484x.tt();
        Socket socketCreateSocket = (proxyTt.type() == Proxy.Type.DIRECT || proxyTt.type() == Proxy.Type.HTTP) ? this.f15484x.c().ve().createSocket() : new Socket(proxyTt);
        this.f15480i = socketCreateSocket;
        socketCreateSocket.setSoTimeout(i11);
        try {
            com.byazt.xb.n.tt().c(this.f15480i, this.f15484x.ve(), i10);
            try {
                this.yp = t.c(t.tt(this.f15480i));
                this.f15485z = t.c(t.c(this.f15480i));
            } catch (NullPointerException e10) {
                if ("throw with null exception".equals(e10.getMessage())) {
                    throw new IOException(e10);
                }
            }
        } catch (ConnectException e11) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f15484x.ve());
            connectException.initCause(e11);
            throw connectException;
        }
    }

    private void c(tt ttVar, com.byazt.eg.n nVar, m mVar) throws Throwable {
        if (this.f15484x.c().i() == null) {
            this.f15482t = gr.HTTP_1_1;
            this.f15479da = this.f15480i;
            return;
        }
        c(ttVar);
        try {
            if (this.f15482t == gr.HTTP_2) {
                this.f15479da.setSoTimeout(0);
                com.byazt.jb.sp spVarC = new com.byazt.jb.sp.c(true).c(this.f15479da, this.f15484x.c().c().sp(), this.yp, this.f15485z).c(this).c();
                this.f15483u = spVarC;
                spVarC.ve();
            }
        } catch (Throwable unused) {
        }
    }

    private void c(tt ttVar) throws Throwable {
        com.byazt.eg.c cVarC = this.f15484x.c();
        SSLSocket sSLSocket = null;
        try {
            try {
                SSLSocket sSLSocket2 = (SSLSocket) cVarC.i().createSocket(this.f15480i, cVarC.c().sp(), cVarC.c().x(), true);
                try {
                    sl slVarC = ttVar.c(sSLSocket2);
                    if (slVarC.uj()) {
                        com.byazt.xb.n.tt().c(sSLSocket2, cVarC.c().sp(), cVarC.n());
                    }
                    try {
                        sSLSocket2.startHandshake();
                    } catch (Throwable unused) {
                    }
                    nu nuVarC = nu.c(sSLSocket2.getSession());
                    if (cVarC.da().verify(cVarC.c().sp(), sSLSocket2.getSession())) {
                        cVarC.sl().c(cVarC.c().sp(), nuVarC.ve());
                        String strC = slVarC.uj() ? com.byazt.xb.n.tt().c(sSLSocket2) : null;
                        this.f15479da = sSLSocket2;
                        this.yp = t.c(t.tt(sSLSocket2));
                        this.f15485z = t.c(t.c(this.f15479da));
                        this.sl = nuVarC;
                        this.f15482t = strC != null ? gr.c(strC) : gr.HTTP_1_1;
                        com.byazt.xb.n.tt().tt(sSLSocket2);
                        return;
                    }
                    X509Certificate x509Certificate = (X509Certificate) nuVarC.ve().get(0);
                    throw new SSLPeerUnverifiedException("Hostname " + cVarC.c().sp() + " not verified:\n    certificate: " + com.byazt.eg.sp.c((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + com.byazt.wt.n.c(x509Certificate));
                } catch (AssertionError e10) {
                    e = e10;
                    if (!com.byazt.kh.ve.c(e)) {
                        throw e;
                    }
                    throw new IOException(e);
                } catch (Throwable th) {
                    th = th;
                    sSLSocket = sSLSocket2;
                    if (sSLSocket != null) {
                        com.byazt.xb.n.tt().tt(sSLSocket);
                    }
                    com.byazt.kh.ve.c((Socket) sSLSocket);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (AssertionError e11) {
            e = e11;
        }
    }

    private yv c(int i10, int i11, yv yvVar, my myVar) throws IOException {
        String str = "CONNECT " + com.byazt.kh.ve.c(myVar, true) + " HTTP/1.1";
        while (true) {
            com.byazt.hx.c cVar = new com.byazt.hx.c(null, null, this.yp, this.f15485z);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.yp.c().c(i10, timeUnit);
            this.f15485z.c().c(i11, timeUnit);
            cVar.c(yvVar.ve(), str);
            cVar.tt();
            h hVarC = cVar.c(false).c(yvVar).c();
            long jC = com.byazt.yx.n.c(hVarC);
            if (jC == -1) {
                jC = 0;
            }
            com.byazt.mk.my myVarTt = cVar.tt(jC);
            com.byazt.kh.ve.tt(myVarTt, Integer.MAX_VALUE, timeUnit);
            myVarTt.close();
            int iVe = hVarC.ve();
            if (iVe == 200) {
                if (this.yp.ve().n() && this.f15485z.ve().n()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (iVe == 407) {
                yv yvVarC = this.f15484x.c().uj().c(this.f15484x, hVarC);
                if (yvVarC != null) {
                    if ("close".equalsIgnoreCase(hVarC.c("Connection"))) {
                        return yvVarC;
                    }
                    yvVar = yvVarC;
                } else {
                    throw new IOException("Failed to authenticate with proxy");
                }
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + hVarC.ve());
            }
        }
    }

    public boolean c(com.byazt.eg.c cVar, eo eoVar) {
        if (this.uj.size() >= this.ve || this.f15478c || !com.byazt.kh.c.f16261c.c(this.f15484x.c(), cVar)) {
            return false;
        }
        if (cVar.c().sp().equals(c().c().c().sp())) {
            return true;
        }
        if (this.f15483u == null || eoVar == null || eoVar.tt().type() != Proxy.Type.DIRECT || this.f15484x.tt().type() != Proxy.Type.DIRECT || !this.f15484x.ve().equals(eoVar.ve()) || eoVar.c().da() != com.byazt.wt.n.f21679c || !c(cVar.c())) {
            return false;
        }
        try {
            cVar.sl().c(cVar.c().sp(), uj().ve());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public boolean c(my myVar) {
        if (myVar.x() != this.f15484x.c().c().x()) {
            return false;
        }
        if (myVar.sp().equals(this.f15484x.c().c().sp())) {
            return true;
        }
        return this.sl != null && com.byazt.wt.n.f21679c.c(myVar.sp(), (X509Certificate) this.sl.ve().get(0));
    }

    public com.byazt.yx.ve c(gu guVar, gt.c cVar, sp spVar) throws SocketException {
        if (this.f15483u != null) {
            return new com.byazt.jb.a(guVar, cVar, spVar, this.f15483u);
        }
        this.f15479da.setSoTimeout(cVar.ve());
        com.byazt.mk.gt gtVarC = this.yp.c();
        long jVe = cVar.ve();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        gtVarC.c(jVe, timeUnit);
        this.f15485z.c().c(cVar.uj(), timeUnit);
        return new com.byazt.hx.c(guVar, spVar, this.yp, this.f15485z);
    }

    @Override // com.byazt.eg.i
    public eo c() {
        return this.f15484x;
    }

    public boolean c(boolean z10) {
        if (this.f15479da.isClosed() || this.f15479da.isInputShutdown() || this.f15479da.isOutputShutdown()) {
            return false;
        }
        com.byazt.jb.sp spVar = this.f15483u;
        if (spVar != null) {
            return !spVar.uj();
        }
        if (z10) {
            try {
                int soTimeout = this.f15479da.getSoTimeout();
                try {
                    this.f15479da.setSoTimeout(1);
                    if (this.yp.n()) {
                        this.f15479da.setSoTimeout(soTimeout);
                        return false;
                    }
                    this.f15479da.setSoTimeout(soTimeout);
                    return true;
                } catch (Throwable th) {
                    this.f15479da.setSoTimeout(soTimeout);
                    throw th;
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // com.byazt.jb.sp.tt
    public void c(com.byazt.jb.i iVar) throws IOException {
        iVar.c(com.byazt.jb.tt.REFUSED_STREAM);
    }

    @Override // com.byazt.jb.sp.tt
    public void c(com.byazt.jb.sp spVar) {
        synchronized (this.sp) {
            this.ve = spVar.c();
        }
    }
}
