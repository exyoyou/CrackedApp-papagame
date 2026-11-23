package com.czhj.volley.toolbox;

import android.content.Context;
import com.czhj.volley.Network;
import com.czhj.volley.RequestQueue;

/* JADX INFO: loaded from: classes9.dex */
public class Volley {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25853a = "volley";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f25854b;

    private static RequestQueue a(Context context, Network network) {
        RequestQueue requestQueue = new RequestQueue(network);
        requestQueue.start();
        return requestQueue;
    }

    public static boolean isEnableOkhttp3() {
        return f25854b;
    }

    public static RequestQueue newRequestQueue(Context context) {
        return newRequestQueue(context, null);
    }

    public static void setEnableOkhttp3(boolean z10) {
        f25854b = z10;
    }

    public static RequestQueue newRequestQueue(Context context, BaseHttpStack baseHttpStack) {
        return a(context, baseHttpStack == null ? new BasicNetwork(new HurlStack()) : new BasicNetwork(baseHttpStack));
    }
}
