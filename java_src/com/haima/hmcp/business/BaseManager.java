package com.haima.hmcp.business;

import android.content.Context;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class BaseManager {
    public static final String TAG = "BaseManager";
    protected Context mContext;
    protected HmcpPlayerListener mPlayerListener;

    /* JADX WARN: Multi-variable type inference failed */
    public BaseManager(Context context) {
        if (context instanceof HmcpPlayerListener) {
            this.mPlayerListener = (HmcpPlayerListener) context;
        } else {
            LogUtils.i(TAG, " no implement HmcpPlayerListenerD");
        }
        this.mContext = context.getApplicationContext();
    }

    public void resetListeners() {
        if (this.mPlayerListener != null) {
            this.mPlayerListener = null;
        }
    }

    public void setHmcpPlayerListener(HmcpPlayerListener hmcpPlayerListener) {
        this.mPlayerListener = hmcpPlayerListener;
    }
}
