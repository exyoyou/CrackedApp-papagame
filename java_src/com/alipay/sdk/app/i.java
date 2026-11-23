package com.alipay.sdk.app;

import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.kwad.library.solder.lib.ext.PluginError;
import com.qq.e.comm.constants.ErrorCode;

/* JADX INFO: loaded from: classes7.dex */
public enum i {
    SUCCEEDED(ErrorCode.PrivateError.LOAD_TIME_OUT, "处理成功"),
    FAILED(4000, "系统繁忙，请稍后再试"),
    CANCELED(PluginError.ERROR_BUILD_REMOTE_PLUGIN_INFO, OauthResult.RESULT_MSG_USER_CANCEL),
    NETWORK_ERROR(6002, "网络连接异常"),
    PARAMS_ERROR(4001, OauthResult.RESULT_MSG_PARAMS_INVALID),
    DOUBLE_REQUEST(5000, "重复请求"),
    PAY_WAITTING(AVMDLDataLoader.KeyIsLiveSetLoaderType, "支付结果确认中");


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7059h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f7060i;

    i(int i10, String str) {
        this.f7059h = i10;
        this.f7060i = str;
    }

    private void b(int i10) {
        this.f7059h = i10;
    }

    public final int a() {
        return this.f7059h;
    }

    private void a(String str) {
        this.f7060i = str;
    }

    public final String b() {
        return this.f7060i;
    }

    public static i a(int i10) {
        if (i10 == 4001) {
            return PARAMS_ERROR;
        }
        if (i10 == 5000) {
            return DOUBLE_REQUEST;
        }
        if (i10 == 8000) {
            return PAY_WAITTING;
        }
        if (i10 == 9000) {
            return SUCCEEDED;
        }
        if (i10 == 6001) {
            return CANCELED;
        }
        if (i10 != 6002) {
            return FAILED;
        }
        return NETWORK_ERROR;
    }
}
