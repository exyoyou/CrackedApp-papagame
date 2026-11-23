package com.byazt.eg;

import android.os.Bundle;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 17})
public class gu implements Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List<gr> f13307c = com.byazt.kh.ve.c(gr.HTTP_2, gr.HTTP_1_1);
    public static final List<sl> tt = com.byazt.kh.ve.c(sl.f13384c, sl.ve);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<sl> f13308a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Set<String> f13309d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final ProxySelector f13310da;
    public final boolean gr;
    public final tt gt;
    public final boolean gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f13311h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m.c f13312i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final com.byazt.wt.ve f13313m;
    public final int md;
    public final tt my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<gr> f13314n;
    public final HostnameVerifier nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f13315p;
    public final z qy;
    public final sp rh;
    public final da rl;
    public final u sl;
    public final List<gt> sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ve f13316t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final com.byazt.umr.a f13317u;
    public final Proxy uj;
    public final yp ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List<gt> f13318x;
    public final SocketFactory yp;
    public final int yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final SSLSocketFactory f13319z;
    public final boolean zm;

    @com.byazt.zqa.c(c = {0, 1, 16, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_PATH_INFO})
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<gt> f13320a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public yp f13321c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TimeUnit f13322d;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public ve f13323da;
        public TimeUnit eo;
        public int gr;
        public z gt;
        public boolean gu;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Set<String> f13324h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public u f13325i;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public sp f13326m;
        public Bundle md;
        public da my;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final List<gt> f13327n;
        public tt nu;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f13328p;
        public boolean qy;
        public tt rh;
        public boolean rl;
        public com.byazt.umr.a sl;
        public m.c sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public SocketFactory f13329t;
        public Proxy tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public SSLSocketFactory f13330u;
        public List<sl> uj;
        public List<gr> ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public ProxySelector f13331x;
        public com.byazt.wt.ve yp;
        public int yv;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public HostnameVerifier f13332z;

        /* JADX INFO: renamed from: zb, reason: collision with root package name */
        public TimeUnit f13333zb;
        public int zm;

        public c() {
            this("");
        }

        public c c(gt gtVar) {
            if (gtVar == null) {
                throw new IllegalArgumentException("interceptor == null");
            }
            this.f13327n.add(gtVar);
            return this;
        }

        public c(String str) {
            this.f13327n = new ArrayList();
            this.f13320a = new ArrayList();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f13322d = timeUnit;
            this.eo = timeUnit;
            this.f13333zb = timeUnit;
            this.f13321c = new yp(str);
            this.ve = gu.f13307c;
            this.uj = gu.tt;
            this.sp = m.c(m.f13349c);
            this.f13331x = ProxySelector.getDefault();
            this.f13325i = u.f13401c;
            this.f13329t = SocketFactory.getDefault();
            this.f13332z = com.byazt.wt.n.f21679c;
            this.f13326m = sp.f13389c;
            tt ttVar = tt.f13400c;
            this.nu = ttVar;
            this.rh = ttVar;
            this.my = new da();
            this.gt = z.f13444c;
            this.rl = true;
            this.qy = true;
            this.gu = true;
            this.gr = 10000;
            this.zm = 10000;
            this.yv = 10000;
            this.f13328p = 0;
        }

        public c c(m mVar) {
            if (mVar != null) {
                this.sp = m.c(mVar);
                return this;
            }
            throw new NullPointerException("eventListener == null");
        }

        public gu c() {
            return new gu(this);
        }
    }

    static {
        com.byazt.kh.c.f16261c = new com.byazt.kh.c() { // from class: com.byazt.eg.gu.1
            @Override // com.byazt.kh.c
            public void c(rh.c cVar, String str) {
                cVar.c(str);
            }

            @Override // com.byazt.kh.c
            public void tt(da daVar, com.byazt.iq.ve veVar) {
                daVar.c(veVar);
            }

            @Override // com.byazt.kh.c
            public void c(rh.c cVar, String str, String str2) {
                cVar.tt(str, str2);
            }

            @Override // com.byazt.kh.c
            public boolean c(da daVar, com.byazt.iq.ve veVar) {
                return daVar.tt(veVar);
            }

            @Override // com.byazt.kh.c
            public com.byazt.iq.ve c(da daVar, com.byazt.eg.c cVar, com.byazt.iq.sp spVar, eo eoVar) {
                return daVar.c(cVar, spVar, eoVar);
            }

            @Override // com.byazt.kh.c
            public boolean c(com.byazt.eg.c cVar, com.byazt.eg.c cVar2) {
                return cVar.c(cVar2);
            }

            @Override // com.byazt.kh.c
            public Socket c(da daVar, com.byazt.eg.c cVar, com.byazt.iq.sp spVar) {
                return daVar.c(cVar, spVar);
            }

            @Override // com.byazt.kh.c
            public com.byazt.iq.uj c(da daVar) {
                return daVar.f13297c;
            }

            @Override // com.byazt.kh.c
            public int c(h.c cVar) {
                return cVar.ve;
            }

            @Override // com.byazt.kh.c
            public void c(sl slVar, SSLSocket sSLSocket, boolean z10) {
                slVar.c(sSLSocket, z10);
            }
        };
    }

    public gu() {
        this(new c());
    }

    private SSLSocketFactory c(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException e10) {
            throw com.byazt.kh.ve.c("No System TLS", (Exception) e10);
        }
    }

    private X509TrustManager zm() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e10) {
            throw com.byazt.kh.ve.c("No System TLS", (Exception) e10);
        }
    }

    public u a() {
        return this.sl;
    }

    public SSLSocketFactory da() {
        return this.f13319z;
    }

    public m.c gr() {
        return this.f13312i;
    }

    public List<gr> gt() {
        return this.f13314n;
    }

    public List<gt> gu() {
        return this.f13318x;
    }

    public SocketFactory i() {
        return this.yp;
    }

    public boolean m() {
        return this.gu;
    }

    public yp my() {
        return this.ve;
    }

    public ProxySelector n() {
        return this.f13310da;
    }

    public boolean nu() {
        return this.gr;
    }

    public List<gt> qy() {
        return this.sp;
    }

    public boolean rh() {
        return this.zm;
    }

    public List<sl> rl() {
        return this.f13308a;
    }

    public HostnameVerifier sl() {
        return this.nu;
    }

    public com.byazt.umr.a sp() {
        ve veVar = this.f13316t;
        return veVar != null ? veVar.f13415c : this.f13317u;
    }

    public sp t() {
        return this.rh;
    }

    public int tt() {
        return this.f13315p;
    }

    public tt u() {
        return this.gt;
    }

    public Proxy uj() {
        return this.uj;
    }

    public int ve() {
        return this.md;
    }

    public z x() {
        return this.qy;
    }

    public tt yp() {
        return this.my;
    }

    public da z() {
        return this.rl;
    }

    public gu(c cVar) {
        boolean z10;
        this.ve = cVar.f13321c;
        this.uj = cVar.tt;
        this.f13314n = cVar.ve;
        List<sl> list = cVar.uj;
        this.f13308a = list;
        this.sp = com.byazt.kh.ve.c(cVar.f13327n);
        this.f13318x = com.byazt.kh.ve.c(cVar.f13320a);
        this.f13312i = cVar.sp;
        this.f13310da = cVar.f13331x;
        this.sl = cVar.f13325i;
        this.f13316t = cVar.f13323da;
        this.f13317u = cVar.sl;
        this.yp = cVar.f13329t;
        this.f13309d = cVar.f13324h;
        Iterator<sl> it2 = list.iterator();
        loop0: while (true) {
            while (true) {
                if (!it2.hasNext()) {
                    break loop0;
                } else {
                    z10 = z10 || it2.next().c();
                }
            }
        }
        SSLSocketFactory sSLSocketFactory = cVar.f13330u;
        if (sSLSocketFactory == null && z10) {
            X509TrustManager x509TrustManagerZm = zm();
            this.f13319z = c(x509TrustManagerZm);
            this.f13313m = com.byazt.wt.ve.c(x509TrustManagerZm);
        } else {
            this.f13319z = sSLSocketFactory;
            this.f13313m = cVar.yp;
        }
        this.nu = cVar.f13332z;
        this.rh = cVar.f13326m.c(this.f13313m);
        this.my = cVar.nu;
        this.gt = cVar.rh;
        da daVar = cVar.my;
        this.rl = daVar;
        if (daVar != null) {
            daVar.c(cVar.md);
        }
        this.qy = cVar.gt;
        this.gu = cVar.rl;
        this.gr = cVar.qy;
        this.zm = cVar.gu;
        this.yv = cVar.gr;
        this.f13315p = cVar.zm;
        this.md = cVar.yv;
        this.f13311h = cVar.f13328p;
        if (this.sp.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.sp);
        }
        if (this.f13318x.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.f13318x);
        }
    }

    public int c() {
        return this.yv;
    }

    public n c(yv yvVar) {
        return zm.c(this, yvVar, false);
    }
}
