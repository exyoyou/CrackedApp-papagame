package com.byazt.gf;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.NonNull;
import com.byazt.qi.a;
import com.umeng.analytics.pro.bm;
import java.lang.reflect.Method;
import java.util.LinkedList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 914, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f14509c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TelephonyManager f14510n;
    public volatile int tt;
    public volatile int uj = -1;
    public ConnectivityManager ve;

    public c() {
        this.ve = null;
        this.f14510n = null;
        Context contextVe = a.ve();
        if (contextVe != null) {
            this.ve = (ConnectivityManager) contextVe.getSystemService("connectivity");
            this.f14510n = (TelephonyManager) contextVe.getSystemService("phone");
        }
        c((int) (((n.c().ve() / 1000) / 60) / 60));
    }

    private int a() {
        NetworkCapabilities networkCapabilities;
        try {
            ConnectivityManager connectivityManager = this.ve;
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                if (Build.VERSION.SDK_INT >= 23) {
                    Network activeNetwork = this.ve.getActiveNetwork();
                    if (activeNetwork != null && (networkCapabilities = this.ve.getNetworkCapabilities(activeNetwork)) != null) {
                        boolean zHasTransport = networkCapabilities.hasTransport(0);
                        boolean zHasTransport2 = networkCapabilities.hasTransport(1);
                        if (c(this.ve) && zHasTransport2) {
                            return 3;
                        }
                        if (zHasTransport2) {
                            return 1;
                        }
                        return zHasTransport ? 2 : 0;
                    }
                } else {
                    int type = activeNetworkInfo.getType();
                    if (type == 1) {
                        return c(this.ve) ? 3 : 1;
                    }
                    if (type == 0) {
                        return 2;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    public static c c() {
        if (f14509c == null) {
            synchronized (c.class) {
                if (f14509c == null) {
                    f14509c = new c();
                }
            }
        }
        return f14509c;
    }

    public int n() {
        TelephonyManager telephonyManager = this.f14510n;
        if (telephonyManager != null) {
            return telephonyManager.getSimState();
        }
        return -1;
    }

    @NonNull
    public int[] tt() {
        int[] iArr = new int[this.tt];
        LinkedList<JSONObject> linkedListC = tt.c().c("sp_net");
        if (linkedListC != null && !linkedListC.isEmpty()) {
            int iOptLong = (int) (((linkedListC.get(linkedListC.size() - 1).optLong(bm.aM, 0L) / 1000) / 60) / 60);
            for (JSONObject jSONObject : linkedListC) {
                long jOptLong = jSONObject.optLong(bm.aM, 0L);
                int iOptInt = jSONObject.optInt("val", 0);
                int i10 = iOptLong - ((int) (((jOptLong / 1000) / 60) / 60));
                if (i10 >= 0 && i10 < this.tt) {
                    iArr[i10] = iOptInt;
                }
            }
        }
        return iArr;
    }

    public int uj() {
        this.uj = a();
        return this.uj;
    }

    @NonNull
    public int[] ve() {
        int[] iArr = new int[this.tt];
        LinkedList<JSONObject> linkedListC = tt.c().c("sp_screen");
        if (linkedListC != null && linkedListC.size() > 0) {
            int iCurrentTimeMillis = (int) (((System.currentTimeMillis() / 1000) / 60) / 60);
            for (JSONObject jSONObject : linkedListC) {
                long jOptLong = jSONObject.optLong(bm.aM, 0L);
                int iOptInt = jSONObject.optInt("val", 0);
                int i10 = iCurrentTimeMillis - ((int) (((jOptLong / 1000) / 60) / 60));
                if (i10 >= 0 && i10 < this.tt) {
                    iArr[i10] = iOptInt;
                }
            }
        }
        return iArr;
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

    public void c(int i10) {
        if (i10 <= 0) {
            this.tt = 1;
        } else if (i10 > 168) {
            this.tt = 168;
        } else {
            this.tt = i10;
        }
    }
}
