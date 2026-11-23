package com.haima.hmcp.utils;

import android.content.Context;
import com.haima.hmcp.volley.RequestQueue;
import com.haima.hmcp.volley.toolbox.Volley;

/* JADX INFO: loaded from: classes5.dex */
public class HmNetWorkManager {
    private static Context mContext;
    private static RequestQueue mQueue;
    private HmNetWorkManager instance;

    public static RequestQueue getRequestQueue() {
        if (mQueue == null) {
            mQueue = Volley.newRequestQueue(mContext);
        }
        return mQueue;
    }

    public static void init(Context context) {
        mContext = context.getApplicationContext();
        getRequestQueue();
    }

    public HmNetWorkManager instance() {
        if (this.instance == null) {
            synchronized (this) {
                this.instance = new HmNetWorkManager();
            }
        }
        return this.instance;
    }

    public void post() {
    }
}
