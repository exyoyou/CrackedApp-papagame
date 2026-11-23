package com.byazt.xix;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 664, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile ve f21849c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f21850n;
    public ConnectivityManager tt;
    public tt uj;
    public Network ve;

    public interface c {
        void c(Network network);
    }

    @com.byazt.zqa.c(c = {0, 1, 664, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD})
    static class tt extends ConnectivityManager.NetworkCallback {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public c f21851c;
        public final ve tt;
        public AtomicBoolean ve = new AtomicBoolean(false);

        public tt(c cVar, ve veVar) {
            this.f21851c = cVar;
            this.tt = veVar;
        }

        public void c(c cVar) {
            this.f21851c = cVar;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            if (this.ve.compareAndSet(false, true)) {
                try {
                    this.tt.ve = network;
                    this.f21851c.c(network);
                    this.tt.f21850n = false;
                } catch (Exception unused) {
                    this.tt.ve = null;
                    this.f21851c.c(null);
                }
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            this.tt.f21850n = true;
        }
    }

    private ve(Context context) {
        try {
            this.tt = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public synchronized void tt() {
        ConnectivityManager connectivityManager = this.tt;
        if (connectivityManager == null) {
            return;
        }
        try {
            try {
                tt ttVar = this.uj;
                if (ttVar == null) {
                    this.uj = null;
                    this.ve = null;
                } else {
                    connectivityManager.unregisterNetworkCallback(ttVar);
                    this.uj = null;
                    this.ve = null;
                }
            } catch (Throwable th) {
                this.uj = null;
                this.ve = null;
                throw th;
            }
        } catch (Exception unused) {
            this.uj = null;
            this.ve = null;
        }
    }

    public static ve c(Context context) {
        if (f21849c == null) {
            synchronized (ve.class) {
                if (f21849c == null) {
                    f21849c = new ve(context);
                }
            }
        }
        return f21849c;
    }

    private static boolean c(ConnectivityManager connectivityManager) {
        try {
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public int c() {
        NetworkCapabilities networkCapabilities;
        try {
            ConnectivityManager connectivityManager = this.tt;
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                if (Build.VERSION.SDK_INT >= 23) {
                    Network activeNetwork = this.tt.getActiveNetwork();
                    if (activeNetwork != null && (networkCapabilities = this.tt.getNetworkCapabilities(activeNetwork)) != null) {
                        boolean zHasTransport = networkCapabilities.hasTransport(4);
                        boolean zHasTransport2 = networkCapabilities.hasTransport(0);
                        boolean zHasTransport3 = networkCapabilities.hasTransport(1);
                        if (zHasTransport) {
                            return 4;
                        }
                        if (c(this.tt) && zHasTransport3) {
                            return 3;
                        }
                        if (zHasTransport3) {
                            return 1;
                        }
                        return zHasTransport2 ? 2 : 5;
                    }
                } else {
                    int type = activeNetworkInfo.getType();
                    if (type == 1) {
                        return c(this.tt) ? 3 : 1;
                    }
                    return type == 0 ? 2 : 5;
                }
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    public void c(c cVar) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = this.tt;
        if (connectivityManager == null) {
            cVar.c(null);
            return;
        }
        Network network = this.ve;
        if (network != null && !this.f21850n && (networkInfo = connectivityManager.getNetworkInfo(network)) != null && networkInfo.isAvailable()) {
            cVar.c(this.ve);
            return;
        }
        tt ttVar = this.uj;
        if (ttVar != null) {
            ttVar.c(cVar);
            return;
        }
        NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
        tt ttVar2 = new tt(cVar, f21849c);
        this.uj = ttVar2;
        try {
            this.tt.requestNetwork(networkRequestBuild, ttVar2);
        } catch (Exception unused) {
            cVar.c(null);
        }
    }
}
