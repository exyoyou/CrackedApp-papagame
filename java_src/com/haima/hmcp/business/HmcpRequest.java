package com.haima.hmcp.business;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class HmcpRequest extends HmcpRequestManager {
    private static volatile HmcpRequest instance;

    public HmcpRequest(Context context) {
        super(context);
    }

    public static HmcpRequest getInstance(Context context) {
        if (instance == null) {
            synchronized (HmcpRequest.class) {
                if (instance == null) {
                    instance = new HmcpRequest(context);
                }
            }
        }
        return instance;
    }

    public static void release() {
        if (instance != null) {
            instance.mContext = null;
            instance.setHmcpPlayerListener(null);
            instance.setHmcpSaasRequestListener(null);
            instance.setWebSocketManager(null);
            instance = null;
        }
    }
}
