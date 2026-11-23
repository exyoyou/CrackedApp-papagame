package com.byazt.xb;

import com.byazt.eg.gr;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 54})
public class ve extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f21783c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Class<?> f21784n;
    public final Method tt;
    public final Class<?> uj;
    public final Method ve;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 24})
    private static class c implements InvocationHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f21785c;
        public String tt;
        public final List<String> ve;

        public c(List<String> list) {
            this.ve = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = com.byazt.kh.ve.tt;
            }
            if ("supports".equals(name) && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if ("unsupported".equals(name) && Void.TYPE == returnType) {
                this.f21785c = true;
                return null;
            }
            if ("protocols".equals(name) && objArr.length == 0) {
                return this.ve;
            }
            if (!"selectProtocol".equals(name) && (!"select".equals(name) || String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof List))) {
                if (!"protocolSelected".equals(name) && (!"selected".equals(name) || objArr.length != 1)) {
                    return method.invoke(this, objArr);
                }
                this.tt = (String) objArr[0];
                return null;
            }
            List list = (List) objArr[0];
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (this.ve.contains(list.get(i10))) {
                    String str = (String) list.get(i10);
                    this.tt = str;
                    return str;
                }
            }
            String str2 = this.ve.get(0);
            this.tt = str2;
            return str2;
        }
    }

    public ve(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f21783c = method;
        this.tt = method2;
        this.ve = method3;
        this.uj = cls;
        this.f21784n = cls2;
    }

    @Override // com.byazt.xb.n
    public void c(SSLSocket sSLSocket, String str, List<gr> list) {
        try {
            this.f21783c.invoke(null, sSLSocket, Proxy.newProxyInstance(n.class.getClassLoader(), new Class[]{this.uj, this.f21784n}, new c(n.c(list))));
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.byazt.kh.ve.c("unable to set alpn", (Exception) e10);
        }
    }

    @Override // com.byazt.xb.n
    public void tt(SSLSocket sSLSocket) {
        try {
            this.ve.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.byazt.kh.ve.c("unable to remove alpn", (Exception) e10);
        }
    }

    @Override // com.byazt.xb.n
    public String c(SSLSocket sSLSocket) {
        try {
            c cVar = (c) Proxy.getInvocationHandler(this.tt.invoke(null, sSLSocket));
            boolean z10 = cVar.f21785c;
            if (!z10 && cVar.tt == null) {
                n.tt().c(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            if (z10) {
                return null;
            }
            return cVar.tt;
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.byazt.kh.ve.c("unable to get selected protocol", (Exception) e10);
        }
    }

    public static n c() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new ve(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }
}
