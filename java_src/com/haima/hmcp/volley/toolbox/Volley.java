package com.haima.hmcp.volley.toolbox;

import android.content.Context;
import com.haima.hmcp.volley.Network;
import com.haima.hmcp.volley.RequestQueue;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class Volley {
    private static final String DEFAULT_CACHE_DIR = "volley";

    public static RequestQueue newRequestQueue(Context context, BaseHttpStack baseHttpStack, int i10) {
        return newRequestQueue(context, baseHttpStack == null ? new BasicNetwork((BaseHttpStack) new HurlStack()) : new BasicNetwork(baseHttpStack), i10);
    }

    public static RequestQueue newRequestQueue(Context context, BaseHttpStack baseHttpStack) {
        return newRequestQueue(context, baseHttpStack, 10);
    }

    @Deprecated
    public static RequestQueue newRequestQueue(Context context, HttpStack httpStack) {
        if (httpStack == null) {
            return newRequestQueue(context, (BaseHttpStack) null);
        }
        return newRequestQueue(context, new BasicNetwork(httpStack), 10);
    }

    private static RequestQueue newRequestQueue(Context context, Network network, int i10) {
        final Context applicationContext = context.getApplicationContext();
        RequestQueue requestQueue = new RequestQueue(new DiskBasedCache(new DiskBasedCache.FileSupplier() { // from class: com.haima.hmcp.volley.toolbox.Volley.1
            private File cacheDir = null;

            @Override // com.haima.hmcp.volley.toolbox.DiskBasedCache.FileSupplier
            public File get() {
                if (this.cacheDir == null) {
                    this.cacheDir = new File(applicationContext.getCacheDir(), Volley.DEFAULT_CACHE_DIR);
                }
                return this.cacheDir;
            }
        }), network);
        requestQueue.setThreadPriority(i10);
        requestQueue.start();
        return requestQueue;
    }

    public static RequestQueue newRequestQueue(Context context) {
        return newRequestQueue(context, (BaseHttpStack) null);
    }
}
