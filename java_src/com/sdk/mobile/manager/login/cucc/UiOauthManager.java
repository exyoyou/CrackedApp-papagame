package com.sdk.mobile.manager.login.cucc;

import android.content.Context;
import com.sdk.base.api.CallBack;
import com.sdk.base.framework.bean.OauthResultMode;
import com.sdk.base.framework.utils.log.LiveDataBus3;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.module.manager.SDKManager;
import com.sdk.f.d;
import com.sdk.x.a;
import io.netty.handler.codec.rtsp.RtspHeaders;

/* JADX INFO: loaded from: classes2.dex */
public class UiOauthManager extends SDKManager {
    private static Boolean isDebug = Boolean.valueOf(d.f78521a);
    public static int lognetType;
    private static volatile UiOauthManager manager;
    public static int timeOut1;
    private String TAG = UiOauthManager.class.getSimpleName();
    private boolean cancel;
    public a mHandler;
    private OauthResultMode resultMode;

    private UiOauthManager() {
    }

    private <T> void dispatchHandler(int i10, final CallBack<T> callBack) {
        new a(SDKManager.mContext, i10, new CallBack<T>() { // from class: com.sdk.mobile.manager.login.cucc.UiOauthManager.1
            @Override // com.sdk.base.api.CallBack
            public void onFailed(int i11, int i12, String str, String str2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onFailed code--->");
                sb2.append(i11);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("onFailed status--->");
                sb3.append(i12);
                callBack.onFailed(i11, i12, str, str2);
            }

            @Override // com.sdk.base.api.CallBack
            public void onSuccess(int i11, String str, int i12, T t10, String str2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onSuccess code--->");
                sb2.append(i11);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("onSuccess msg--->");
                sb3.append(str);
                StringBuilder sb4 = new StringBuilder();
                sb4.append("onSuccess status--->");
                sb4.append(i12);
                StringBuilder sb5 = new StringBuilder();
                sb5.append("onSuccess response--->");
                sb5.append(t10);
                if (i11 == 0) {
                    callBack.onSuccess(i11, str, i12, t10, str2);
                }
                if (i11 == 1) {
                    callBack.onFailed(i11, i12, str, str2);
                }
            }
        }).a(0);
    }

    public static UiOauthManager getInstance(Context context) {
        if (manager == null) {
            synchronized (UiOauthManager.class) {
                if (manager == null) {
                    manager = new UiOauthManager();
                }
            }
        }
        return manager;
    }

    public void cancel() {
        this.cancel = true;
    }

    public a getmHandler() {
        return this.mHandler;
    }

    public <T> void login(int i10, CallBack<T> callBack) {
        LiveDataBus3.init();
        LogUtils.d_yl(this.TAG, "Demo 点击触发 开始", 0);
        try {
            if (SDKManager.getInitFlag()) {
                callBack.onFailed(0, 101004, "ApiKey或PublicKey不能为空", "seqAndroidEmpty");
                return;
            }
            com.sdk.j.a.b(SDKManager.mContext, "qcandroid", "qcandroidabc000");
            com.sdk.j.a.b(SDKManager.getContext(), RtspHeaders.Values.SEQ, null);
            int iA = com.sdk.i.a.a();
            int iA2 = com.sdk.n.a.b(SDKManager.mContext).a();
            lognetType = iA2;
            if (iA >= 23 || iA2 != 2) {
                LogUtils.d_yl(this.TAG, "-1:没网; 0:wifi; 1:流量; 2:双开; 网络状态:" + lognetType, 0);
                int i11 = lognetType;
                if (i11 == 2 || i11 == 1) {
                    a aVar = new a(SDKManager.mContext, i10, callBack);
                    this.mHandler = aVar;
                    aVar.a(0);
                } else if (i11 == 0) {
                    callBack.onFailed(1, 102003, "未开启流量", "");
                } else if (i11 == -1) {
                    callBack.onFailed(1, 102002, "无网络连接", "");
                }
                timeOut1 = i10;
            } else {
                callBack.onFailed(1, 102001, "选择流量通道失败", "qcandroidabc000");
            }
            LogUtils.d_yl(this.TAG, "public <T> void login:结束" + lognetType, 0);
        } catch (Exception e10) {
            LogUtils.e(this.TAG, e10.getMessage(), isDebug);
        }
    }

    public void setmHandler(a aVar) {
        this.mHandler = aVar;
    }
}
