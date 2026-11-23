package com.windmill.sdk.base;

import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class WMInitManager {
    private static final String TAG = "WMInitManager";
    private static volatile WMInitManager gInstance;
    private volatile boolean IS_INITIATING = false;
    public final Map<WMCustomAdapterProxy, InitListener> initListeners = new HashMap();

    public interface InitListener {
        void onError(int code, String message);

        void onSuccess();
    }

    private WMInitManager() {
    }

    public static WMInitManager sharedInstance() {
        if (gInstance == null) {
            synchronized (WMInitManager.class) {
                if (gInstance == null) {
                    gInstance = new WMInitManager();
                }
            }
        }
        return gInstance;
    }

    public final void addInitListener(WMCustomAdapterProxy adapterProxy, InitListener initListener) {
        try {
            synchronized (this.initListeners) {
                this.initListeners.put(adapterProxy, initListener);
            }
        } catch (Exception e10) {
            SigmobLog.e(TAG, e10);
        }
    }

    public final void callInitFail(int code, String message) {
        try {
            synchronized (this.initListeners) {
                try {
                    this.IS_INITIATING = false;
                    if (this.initListeners.size() > 0) {
                        for (InitListener initListener : new CopyOnWriteArrayList(this.initListeners.values())) {
                            if (initListener != null) {
                                initListener.onError(code, message);
                            }
                        }
                        this.initListeners.clear();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e10) {
            SigmobLog.e(TAG, e10);
        }
    }

    public final void callInitSuccess() {
        try {
            synchronized (this.initListeners) {
                try {
                    this.IS_INITIATING = false;
                    if (this.initListeners.size() > 0) {
                        for (InitListener initListener : new CopyOnWriteArrayList(this.initListeners.values())) {
                            if (initListener != null) {
                                initListener.onSuccess();
                            }
                        }
                        this.initListeners.clear();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e10) {
            SigmobLog.e(TAG, e10);
        }
    }

    public final boolean isInitiating() {
        return this.IS_INITIATING;
    }

    public final void removeInitListener(WMCustomAdapterProxy adapterProxy) {
        try {
            synchronized (this.initListeners) {
                try {
                    if (this.initListeners.containsKey(adapterProxy)) {
                        this.initListeners.remove(adapterProxy);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e10) {
            SigmobLog.e(TAG, e10);
        }
    }

    public final void setInitiating(boolean initiating) {
        this.IS_INITIATING = initiating;
    }
}
