package com.byazt.xb;

import com.byazt.eg.gr;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 13})
public final class tt extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f21781c;
    public final Method tt;

    public tt(Method method, Method method2) {
        this.f21781c = method;
        this.tt = method2;
    }

    @Override // com.byazt.xb.n
    public void c(SSLSocket sSLSocket, String str, List<gr> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> listC = n.c(list);
            this.f21781c.invoke(sSLParameters, listC.toArray(new String[listC.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.byazt.kh.ve.c("unable to set ssl parameters", (Exception) e10);
        }
    }

    @Override // com.byazt.xb.n
    public String c(SSLSocket sSLSocket) {
        try {
            String str = (String) this.tt.invoke(sSLSocket, new Object[0]);
            if (str == null || str.isEmpty()) {
                return null;
            }
            return str;
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.byazt.kh.ve.c("unable to get selected protocols", (Exception) e10);
        }
    }

    public static tt c() {
        try {
            return new tt(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }
}
