package com.byazt.yx;

import com.byazt.eg.d;
import com.byazt.eg.eo;
import com.byazt.eg.gr;
import com.byazt.eg.gt;
import com.byazt.eg.gu;
import com.byazt.eg.h;
import com.byazt.eg.m;
import com.byazt.eg.my;
import com.byazt.eg.p;
import com.byazt.eg.yv;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 252, 72})
public final class da implements gt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final gu f22466c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile boolean f22467n;
    public final boolean tt;
    public Object uj;
    public com.byazt.iq.sp ve;

    public da(gu guVar, boolean z10) {
        this.f22466c = guVar;
        this.tt = z10;
    }

    public void c() {
        this.f22467n = true;
        com.byazt.iq.sp spVar = this.ve;
        if (spVar != null) {
            spVar.n();
        }
    }

    public boolean tt() {
        return this.f22467n;
    }

    public void c(Object obj) {
        this.uj = obj;
    }

    @Override // com.byazt.eg.gt
    public h c(gt.c cVar) throws Throwable {
        String strC;
        String str;
        int i10;
        IOException iOException;
        int i11;
        yv yvVarC = cVar.c();
        sp spVar = (sp) cVar;
        com.byazt.eg.n nVarCall = spVar.call();
        m mVarX = spVar.x();
        this.ve = new com.byazt.iq.sp(this.f22466c.z(), c(yvVarC.c()), nVarCall, mVarX, this.uj);
        try {
            int i12 = Integer.parseInt(yvVarC.ve().c("csj_client_source_from"));
            strC = yvVarC.ve().c("csj_extra_info");
            try {
                yvVarC = yvVarC.a().tt("csj_client_source_from").tt("csj_extra_info").c();
                i10 = i12;
                str = strC;
            } catch (Exception unused) {
                str = strC;
                i10 = 0;
            }
        } catch (Exception unused2) {
            strC = "";
        }
        String string = yvVarC.c().toString();
        ArrayList arrayList = new ArrayList();
        h hVar = null;
        int i13 = 0;
        while (!this.f22467n) {
            if (this.f22466c.f13309d != null && yvVarC.c() != null) {
                Iterator<String> it2 = this.f22466c.f13309d.iterator();
                while (it2.hasNext()) {
                    Iterator<String> it3 = it2;
                    String[] strArrSplit = it2.next().split("@");
                    m mVar = mVarX;
                    if (strArrSplit.length >= 2) {
                        String str2 = strArrSplit[0];
                        try {
                            i11 = Integer.parseInt(strArrSplit[1]);
                        } catch (Exception unused3) {
                            i11 = 0;
                        }
                        if ((i11 & i10) != 0 && Pattern.compile(str2).matcher(yvVarC.c().toString()).find()) {
                            h.c cVar2 = new h.c();
                            cVar2.c(8848);
                            cVar2.c(yvVarC.c().toString());
                            cVar2.c(yvVarC);
                            cVar2.c(gr.HTTP_1_1);
                            cVar2.c(com.byazt.kh.ve.ve);
                            if (arrayList.size() > 0) {
                                arrayList.add(0, string);
                                return cVar2.c("csj-location-record", arrayList.toString()).c("csj-source-from", String.valueOf(i10)).c("csj-extra-info", String.valueOf(str)).c();
                            }
                            return cVar2.c();
                        }
                    }
                    it2 = it3;
                    mVarX = mVar;
                }
            }
            m mVar2 = mVarX;
            try {
                try {
                    h hVarC = spVar.c(yvVarC, this.ve, null, null);
                    if (hVar != null) {
                        hVarC = hVarC.i().ve(hVar.i().c((d) null).c()).c();
                    }
                    yvVarC = c(hVarC);
                    if (yvVarC == null) {
                        if (!this.tt) {
                            this.ve.ve();
                        }
                        if (arrayList.size() <= 0) {
                            return hVarC;
                        }
                        arrayList.add(0, string);
                        return hVarC.i().c("csj-location-record", arrayList.toString()).c("csj-source-from", String.valueOf(i10)).c("csj-extra-info", String.valueOf(str)).c();
                    }
                    arrayList.add(yvVarC.c().toString());
                    com.byazt.kh.ve.c(hVarC.x());
                    int i14 = i13 + 1;
                    if (i14 <= 20) {
                        if (!(yvVarC.uj() instanceof t)) {
                            if (!c(hVarC, yvVarC.c())) {
                                this.ve.ve();
                                this.ve = new com.byazt.iq.sp(this.f22466c.z(), c(yvVarC.c()), nVarCall, mVar2, this.uj);
                            } else if (this.ve.c() != null) {
                                throw new IllegalStateException("Closing the body of " + hVarC + " didn't close its backing stream. Bad interceptor?");
                            }
                            hVar = hVarC;
                            i13 = i14;
                            arrayList = arrayList;
                            mVarX = mVar2;
                        } else {
                            this.ve.ve();
                            throw new HttpRetryException("Cannot retry streamed HTTP body", hVarC.ve());
                        }
                    } else {
                        this.ve.ve();
                        throw new ProtocolException("Too many follow-up requests: ".concat(String.valueOf(i14)));
                    }
                } catch (com.byazt.iq.n e10) {
                    e = e10;
                    if (!c(e.c(), false, yvVarC)) {
                        throw e.c();
                    }
                } catch (IOException e11) {
                    e = e11;
                    iOException = null;
                    try {
                        if (!c(e, !(e instanceof com.byazt.jb.c), yvVarC)) {
                            throw e;
                        }
                    } catch (Throwable th) {
                        th = th;
                        this.ve.c(iOException);
                        this.ve.ve();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    iOException = null;
                    this.ve.c(iOException);
                    this.ve.ve();
                    throw th;
                }
            } catch (com.byazt.iq.n e12) {
                e = e12;
            } catch (IOException e13) {
                e = e13;
                iOException = null;
            } catch (Throwable th3) {
                th = th3;
                iOException = null;
            }
        }
        this.ve.ve();
        throw new IOException("Canceled");
    }

    private com.byazt.eg.c c(my myVar) {
        SSLSocketFactory sSLSocketFactoryDa;
        HostnameVerifier hostnameVerifierSl;
        com.byazt.eg.sp spVarT;
        if (myVar.uj()) {
            sSLSocketFactoryDa = this.f22466c.da();
            hostnameVerifierSl = this.f22466c.sl();
            spVarT = this.f22466c.t();
        } else {
            sSLSocketFactoryDa = null;
            hostnameVerifierSl = null;
            spVarT = null;
        }
        return new com.byazt.eg.c(myVar.sp(), myVar.x(), this.f22466c.x(), this.f22466c.i(), sSLSocketFactoryDa, hostnameVerifierSl, spVarT, this.f22466c.yp(), this.f22466c.uj(), this.f22466c.gt(), this.f22466c.rl(), this.f22466c.n());
    }

    private boolean c(IOException iOException, boolean z10, yv yvVar) {
        this.ve.c(iOException);
        if (this.f22466c.rh()) {
            return !(z10 && (yvVar.uj() instanceof t)) && c(iOException, z10) && this.ve.a();
        }
        return false;
    }

    private boolean c(IOException iOException, boolean z10) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            return (iOException instanceof SocketTimeoutException) && !z10;
        }
        return (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private yv c(h hVar) throws IOException {
        String strC;
        my myVarVe;
        Proxy proxyUj;
        if (hVar != null) {
            com.byazt.iq.ve veVarTt = this.ve.tt();
            eo eoVarC = veVarTt != null ? veVarTt.c() : null;
            int iVe = hVar.ve();
            String strTt = hVar.c().tt();
            if (iVe == 307 || iVe == 308) {
                if (!"GET".equals(strTt) && !"HEAD".equals(strTt)) {
                    return null;
                }
            } else {
                if (iVe == 401) {
                    return this.f22466c.u().c(eoVarC, hVar);
                }
                if (iVe == 407) {
                    if (eoVarC != null) {
                        proxyUj = eoVarC.tt();
                    } else {
                        proxyUj = this.f22466c.uj();
                    }
                    if (proxyUj.type() == Proxy.Type.HTTP) {
                        return this.f22466c.yp().c(eoVarC, hVar);
                    }
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                if (iVe == 408) {
                    if (!this.f22466c.rh() || (hVar.c().uj() instanceof t)) {
                        return null;
                    }
                    if (hVar.sl() == null || hVar.sl().ve() != 408) {
                        return hVar.c();
                    }
                    return null;
                }
                switch (iVe) {
                    case 300:
                    case 301:
                    case 302:
                    case 303:
                        break;
                    default:
                        return null;
                }
            }
            if (!this.f22466c.nu() || (strC = hVar.c("Location")) == null || (myVarVe = hVar.c().c().ve(strC)) == null) {
                return null;
            }
            if (!myVarVe.ve().equals(hVar.c().c().ve()) && !this.f22466c.m()) {
                return null;
            }
            yv.c cVarA = hVar.c().a();
            if (a.ve(strTt)) {
                boolean zUj = a.uj(strTt);
                if (a.n(strTt)) {
                    cVarA.c("GET", (p) null);
                } else {
                    cVarA.c(strTt, zUj ? hVar.c().uj() : null);
                }
                if (!zUj) {
                    cVarA.tt("Transfer-Encoding");
                    cVarA.tt("Content-Length");
                    cVarA.tt("Content-Type");
                }
            }
            if (!c(hVar, myVarVe)) {
                cVarA.tt("Authorization");
            }
            return cVarA.c(myVarVe).c();
        }
        throw new IllegalStateException();
    }

    private boolean c(h hVar, my myVar) {
        my myVarC = hVar.c().c();
        return myVarC.sp().equals(myVar.sp()) && myVarC.x() == myVar.x() && myVarC.ve().equals(myVar.ve());
    }
}
