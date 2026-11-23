package com.byazt.eg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 158})
public final class sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final sl f13384c;
    public static final sl tt;
    public static final sl ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final x[] f13385x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String[] f13386a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f13387n;
    public final String[] sp;
    public final boolean uj;

    static {
        x[] xVarArr = {x.sl, x.f13431u, x.f13430t, x.yp, x.f13428m, x.f13433z, x.sp, x.f13427i, x.f13432x, x.f13426da, x.f13429n, x.f13424a, x.ve, x.uj, x.tt};
        f13385x = xVarArr;
        c cVarC = new c(true).c(xVarArr);
        zb zbVar = zb.TLS_1_0;
        sl slVarC = cVarC.c(zb.TLS_1_3, zb.TLS_1_2, zb.TLS_1_1, zbVar).c(true).c();
        f13384c = slVarC;
        tt = new c(slVarC).c(zbVar).c(true).c();
        ve = new c(false).c();
    }

    public sl(c cVar) {
        this.uj = cVar.f13388c;
        this.f13386a = cVar.tt;
        this.sp = cVar.ve;
        this.f13387n = cVar.uj;
    }

    public boolean c() {
        return this.uj;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof sl)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        sl slVar = (sl) obj;
        boolean z10 = this.uj;
        if (z10 != slVar.uj) {
            return false;
        }
        return !z10 || (Arrays.equals(this.f13386a, slVar.f13386a) && Arrays.equals(this.sp, slVar.sp) && this.f13387n == slVar.f13387n);
    }

    public int hashCode() {
        if (this.uj) {
            return ((((Arrays.hashCode(this.f13386a) + 527) * 31) + Arrays.hashCode(this.sp)) * 31) + (!this.f13387n ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (!this.uj) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.f13386a != null ? tt().toString() : "[all enabled]") + ", tlsVersions=" + (this.sp != null ? ve().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f13387n + ")";
    }

    public List<x> tt() {
        String[] strArr = this.f13386a;
        if (strArr != null) {
            return x.c(strArr);
        }
        return null;
    }

    public boolean uj() {
        return this.f13387n;
    }

    public List<zb> ve() {
        String[] strArr = this.sp;
        if (strArr != null) {
            return zb.c(strArr);
        }
        return null;
    }

    @com.byazt.zqa.c(c = {0, 1, 16, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_VERSION})
    public static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13388c;
        public String[] tt;
        public boolean uj;
        public String[] ve;

        public c(boolean z10) {
            this.f13388c = z10;
        }

        public c c(x... xVarArr) {
            if (!this.f13388c) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[xVarArr.length];
            for (int i10 = 0; i10 < xVarArr.length; i10++) {
                strArr[i10] = xVarArr[i10].nu;
            }
            return c(strArr);
        }

        public c tt(String... strArr) {
            if (!this.f13388c) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.ve = (String[]) strArr.clone();
            return this;
        }

        public c(sl slVar) {
            this.f13388c = slVar.uj;
            this.tt = slVar.f13386a;
            this.ve = slVar.sp;
            this.uj = slVar.f13387n;
        }

        public c c(String... strArr) {
            if (this.f13388c) {
                if (strArr.length != 0) {
                    this.tt = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public c c(zb... zbVarArr) {
            if (this.f13388c) {
                String[] strArr = new String[zbVarArr.length];
                for (int i10 = 0; i10 < zbVarArr.length; i10++) {
                    strArr[i10] = zbVarArr[i10].f13447a;
                }
                return tt(strArr);
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public c c(boolean z10) {
            if (this.f13388c) {
                this.uj = z10;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        public sl c() {
            return new sl(this);
        }
    }

    private sl tt(SSLSocket sSLSocket, boolean z10) {
        String[] strArrC = this.f13386a != null ? com.byazt.kh.ve.c(x.f13425c, sSLSocket.getEnabledCipherSuites(), this.f13386a) : sSLSocket.getEnabledCipherSuites();
        String[] strArrC2 = this.sp != null ? com.byazt.kh.ve.c(com.byazt.kh.ve.f16270x, sSLSocket.getEnabledProtocols(), this.sp) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iC = com.byazt.kh.ve.c(x.f13425c, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z10 && iC != -1) {
            strArrC = com.byazt.kh.ve.c(strArrC, supportedCipherSuites[iC]);
        }
        return new c(this).c(strArrC).tt(strArrC2).c();
    }

    public void c(SSLSocket sSLSocket, boolean z10) {
        sl slVarTt = tt(sSLSocket, z10);
        String[] strArr = slVarTt.sp;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = slVarTt.f13386a;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public boolean c(SSLSocket sSLSocket) {
        if (!this.uj) {
            return false;
        }
        String[] strArr = this.sp;
        if (strArr != null && !com.byazt.kh.ve.tt(com.byazt.kh.ve.f16270x, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f13386a;
        return strArr2 == null || com.byazt.kh.ve.tt(x.f13425c, strArr2, sSLSocket.getEnabledCipherSuites());
    }
}
