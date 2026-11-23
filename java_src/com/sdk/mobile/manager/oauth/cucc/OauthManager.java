package com.sdk.mobile.manager.oauth.cucc;

import android.content.Context;
import com.sdk.base.api.CallBack;
import com.sdk.base.framework.utils.log.LiveDataBus3;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.module.manager.SDKManager;
import com.sdk.mobile.manager.login.cucc.UiOauthManager;
import com.sdk.x.a;
import io.netty.handler.codec.rtsp.RtspHeaders;

/* JADX INFO: loaded from: classes2.dex */
public class OauthManager extends SDKManager {
    private static volatile OauthManager manager;
    public a mHandler;

    private OauthManager() {
    }

    public static OauthManager getInstance(Context context) {
        if (manager == null) {
            synchronized (OauthManager.class) {
                if (manager == null) {
                    manager = new OauthManager();
                }
            }
        }
        return manager;
    }

    public <T> void getAuthoriseCode(int i10, CallBack<T> callBack) {
        String str;
        int i11;
        LiveDataBus3.init();
        LogUtils.d_yl("TAG", "Demo 点击触发 开始", 0);
        try {
            if (SDKManager.getInitFlag()) {
                callBack.onFailed(0, 101004, "ApiKey或PublicKey不能为空", "seqAndroidEmpty");
                return;
            }
            com.sdk.j.a.b(SDKManager.mContext, "qcandroid", "qcandroidabc000");
            com.sdk.j.a.b(SDKManager.getContext(), RtspHeaders.Values.SEQ, null);
            int iA = com.sdk.i.a.a();
            int iA2 = com.sdk.n.a.b(SDKManager.mContext).a();
            UiOauthManager.lognetType = iA2;
            if (iA < 23 && iA2 == 2) {
                callBack.onFailed(1, 102001, "选择流量通道失败", "qcandroidabc000");
                return;
            }
            LogUtils.d_yl("TAG", "-1  没网  ; 0  wifi  ; 1  流量  ;  2 wifi + 流量 网络状态:" + iA2, 0);
            if (iA2 == 2 || iA2 == 1) {
                a aVar = new a(SDKManager.mContext, i10, callBack);
                this.mHandler = aVar;
                aVar.a(1);
                return;
            }
            if (iA2 == 0) {
                str = "未开启流量";
                i11 = 102003;
            } else {
                if (iA2 != -1) {
                    return;
                }
                str = "无网络连接";
                i11 = 102002;
            }
            callBack.onFailed(1, i11, str, "");
        } catch (Exception unused) {
        }
    }

    public <T> void getMobileForCode(String str, int i10, CallBack<T> callBack) {
    }

    public a getmHandler() {
        return this.mHandler;
    }

    public void setmHandler(a aVar) {
        this.mHandler = aVar;
    }

    public <T> void getMobileForCode(String str, String str2, int i10, CallBack<T> callBack) {
    }
}
