package com.byazt.xb;

import android.net.ssl.SSLSockets;
import android.os.Build;
import android.util.Log;
import com.byazt.eg.gr;
import com.byazt.nr.m;
import com.byazt.wt.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import h2.d;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 20})
public class c extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ve f21774a = ve.c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class<?> f21775c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final uj<Socket> f21776n;
    public final uj<Socket> tt;
    public final uj<Socket> uj;
    public final uj<Socket> ve;

    /* JADX INFO: renamed from: com.byazt.xb.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 44})
    static final class C0481c extends com.byazt.wt.ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f21777c;
        public final Method tt;

        public C0481c(Object obj, Method method) {
            this.f21777c = obj;
            this.tt = method;
        }

        @Override // com.byazt.wt.ve
        public List<Certificate> c(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.tt.invoke(this.f21777c, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InvocationTargetException e11) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e11.getMessage());
                sSLPeerUnverifiedException.initCause(e11);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C0481c;
        }

        public int hashCode() {
            return 0;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 175})
    static final class tt implements a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final X509TrustManager f21778c;
        public final Method tt;

        public tt(X509TrustManager x509TrustManager, Method method) {
            this.tt = method;
            this.f21778c = x509TrustManager;
        }

        @Override // com.byazt.wt.a
        public X509Certificate c(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.tt.invoke(this.f21778c, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
            } catch (IllegalAccessException e10) {
                throw com.byazt.kh.ve.c("unable to get issues and signature", (Exception) e10);
            } catch (InvocationTargetException unused) {
            }
            return null;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof tt)) {
                return false;
            }
            tt ttVar = (tt) obj;
            return this.f21778c.equals(ttVar.f21778c) && this.tt.equals(ttVar.tt);
        }

        public int hashCode() {
            return this.f21778c.hashCode() + (this.tt.hashCode() * 31);
        }
    }

    public c(Class<?> cls, uj<Socket> ujVar, uj<Socket> ujVar2, uj<Socket> ujVar3, uj<Socket> ujVar4) {
        this.f21775c = cls;
        this.tt = ujVar;
        this.ve = ujVar2;
        this.uj = ujVar3;
        this.f21776n = ujVar4;
    }

    private static boolean uj() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // com.byazt.xb.n
    public void c(Socket socket, InetSocketAddress inetSocketAddress, int i10) throws IOException {
        try {
            socket.connect(inetSocketAddress, i10);
        } catch (AssertionError e10) {
            if (!com.byazt.kh.ve.c(e10)) {
                throw e10;
            }
            throw new IOException(e10);
        } catch (ClassCastException e11) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e11;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e11);
            throw iOException;
        } catch (SecurityException e12) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e12);
            throw iOException2;
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.xb.n
    public boolean tt(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return c(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.tt(str);
        } catch (IllegalAccessException e10) {
            e = e10;
            throw com.byazt.kh.ve.c("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e11) {
            e = e11;
            throw com.byazt.kh.ve.c("unable to determine cleartext support", e);
        } catch (NoClassDefFoundError unused2) {
            if (Build.VERSION.SDK_INT < 23) {
                return super.tt(str);
            }
            return false;
        } catch (InvocationTargetException e12) {
            e = e12;
            throw com.byazt.kh.ve.c("unable to determine cleartext support", e);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 132})
    static final class ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Method f21779c;
        public final Method tt;
        public final Method ve;

        public ve(Method method, Method method2, Method method3) {
            this.f21779c = method;
            this.tt = method2;
            this.ve = method3;
        }

        public Object c(String str) {
            Method method = this.f21779c;
            if (method != null) {
                try {
                    Object objInvoke = method.invoke(null, new Object[0]);
                    this.tt.invoke(objInvoke, str);
                    return objInvoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        public boolean c(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                this.ve.invoke(obj, new Object[0]);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }

        public static ve c() {
            Method method;
            Method method2;
            Method method3;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                method = cls.getMethod("get", new Class[0]);
                method3 = cls.getMethod("open", String.class);
                method2 = cls.getMethod("warnIfOpen", new Class[0]);
            } catch (Exception unused) {
                method = null;
                method2 = null;
                method3 = null;
            }
            return new ve(method, method3, method2);
        }
    }

    private boolean tt(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.tt(str);
        }
    }

    @Override // com.byazt.xb.n
    public void c(SSLSocket sSLSocket, String str, List<gr> list) {
        if (str != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                try {
                    SSLSockets.setUseSessionTickets(sSLSocket, true);
                    d.a();
                    SNIHostName sNIHostNameA = h2.c.a(str);
                    SSLParameters sSLParameters = sSLSocket.getSSLParameters();
                    sSLParameters.setServerNames(Collections.singletonList(sNIHostNameA));
                    sSLSocket.setSSLParameters(sSLParameters);
                } catch (Throwable unused) {
                }
            } else {
                this.tt.tt(sSLSocket, Boolean.TRUE);
                this.ve.tt(sSLSocket, str);
            }
        }
        uj<Socket> ujVar = this.f21776n;
        if (ujVar == null || !ujVar.c(sSLSocket)) {
            return;
        }
        this.f21776n.uj(sSLSocket, n.tt(list));
    }

    @Override // com.byazt.xb.n
    public a tt(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new tt(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.tt(x509TrustManager);
        }
    }

    @Override // com.byazt.xb.n
    public String c(SSLSocket sSLSocket) {
        byte[] bArr;
        uj<Socket> ujVar = this.uj;
        if (ujVar == null || !ujVar.c(sSLSocket) || (bArr = (byte[]) this.uj.uj(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, com.byazt.kh.ve.f16267n);
    }

    @Override // com.byazt.xb.n
    public void c(int i10, String str, Throwable th) {
        int iMin;
        int i11 = i10 != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int length = str.length();
        int i12 = 0;
        while (i12 < length) {
            int iIndexOf = str.indexOf(10, i12);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i12 + 4000);
                m.c(i11, "OkHttp", str.substring(i12, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i12 = iMin;
                }
            }
            i12 = iMin + 1;
        }
    }

    @Override // com.byazt.xb.n
    public Object c(String str) {
        return this.f21774a.c(str);
    }

    @Override // com.byazt.xb.n
    public void c(String str, Object obj) {
        if (this.f21774a.c(obj)) {
            return;
        }
        c(5, str, (Throwable) null);
    }

    private boolean c(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return tt(str, cls, obj);
        }
    }

    @Override // com.byazt.xb.n
    public com.byazt.wt.ve c(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0481c(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.c(x509TrustManager);
        }
    }

    public static n c() {
        Class<?> cls;
        uj ujVar;
        uj ujVar2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            uj ujVar3 = new uj(null, "setUseSessionTickets", Boolean.TYPE);
            uj ujVar4 = new uj(null, "setHostname", String.class);
            if (uj()) {
                uj ujVar5 = new uj(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                ujVar2 = new uj(null, "setAlpnProtocols", byte[].class);
                ujVar = ujVar5;
            } else {
                ujVar = null;
                ujVar2 = null;
            }
            return new c(cls2, ujVar3, ujVar4, ujVar, ujVar2);
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }
}
