package com.windmill.sdk.custom;

import android.content.Context;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WMNetworkInitListener;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.base.WMLogUtil;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes8.dex */
public abstract class WMCustomAdapterProxy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f87024b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected long f87023a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile int f87025c = -1;
    public final Map<WMAdBaseAdapter, a> initListeners = new HashMap();

    public interface a {
        void a();

        void a(int code, String message);

        void b();
    }

    public final void addInitListener(WMAdBaseAdapter adAdapter, a initListener) {
        try {
            synchronized (this.initListeners) {
                this.initListeners.put(adAdapter, initListener);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public abstract int baseOnToBidCustomAdapterVersion();

    public void callInitBefore(Object initInstance) {
        WMNetworkInitListener networkInitListener = WindMillAd.sharedAds().getNetworkInitListener();
        if (networkInitListener != null) {
            networkInitListener.onNetworkInitBefore(this.f87024b, initInstance);
        }
    }

    public final void callInitFail(int code, String message) {
        try {
            synchronized (this.initListeners) {
                this.f87025c = 1;
                if (this.initListeners.size() > 0) {
                    for (a aVar : new CopyOnWriteArrayList(this.initListeners.values())) {
                        if (aVar != null) {
                            aVar.a(code, message);
                        }
                    }
                    this.initListeners.clear();
                }
            }
            WMNetworkInitListener networkInitListener = WindMillAd.sharedAds().getNetworkInitListener();
            if (networkInitListener != null) {
                networkInitListener.onNetworkInitFailed(this.f87024b, code, message);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void callInitSuccess() {
        try {
            synchronized (this.initListeners) {
                this.f87025c = 0;
                if (this.initListeners.size() > 0) {
                    for (a aVar : new CopyOnWriteArrayList(this.initListeners.values())) {
                        if (aVar != null) {
                            WMLogUtil.i("---callInitSuccess: " + getClass().getSimpleName() + " " + (System.currentTimeMillis() - this.f87023a));
                            aVar.b();
                        }
                    }
                    this.initListeners.clear();
                }
            }
            WMNetworkInitListener networkInitListener = WindMillAd.sharedAds().getNetworkInitListener();
            if (networkInitListener != null) {
                networkInitListener.onNetworkInitSuccess(this.f87024b);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getAdapterPluginVersion() {
        return WMConstants.TIMER_STAGE_NONE;
    }

    public int getAdapterSdkVersion() {
        return 0;
    }

    public Map<String, String> getBiddingToken(Context context, Map<String, Object> localExtra, Map<String, Object> serverExtra) {
        return null;
    }

    public String getChannelAppId() {
        return "";
    }

    public int getInitStatus() {
        return this.f87025c;
    }

    public abstract String getNetworkSdkVersion();

    public abstract void initializeADN(Context context, Map<String, Object> serverExtra);

    public synchronized void initializeInnerADN(Context context, Map<String, Object> serverExtra, int channel_id, a initListener) {
        synchronized (this) {
            if ((this.f87025c == -1 || this.f87025c == 1) && this.f87025c != 0) {
                this.f87025c = 2;
                this.f87024b = channel_id;
                this.f87023a = System.currentTimeMillis();
                if (initListener != null) {
                    initListener.a();
                }
                initializeADN(context, serverExtra);
            }
        }
    }

    public abstract void notifyPrivacyStatusChange();

    public synchronized void reSetInitStatus() {
        synchronized (this) {
            this.f87025c = -1;
        }
    }

    public final void removeInitListener(WMAdBaseAdapter adAdapter) {
        try {
            synchronized (this.initListeners) {
                try {
                    if (this.initListeners.containsKey(adAdapter)) {
                        this.initListeners.remove(adAdapter);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public synchronized void initializeInnerADN(Context context, Map<String, Object> serverExtra, int channel_id) {
        initializeInnerADN(context, serverExtra, channel_id, null);
    }
}
