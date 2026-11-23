package com.netease.nis.basesdk.crash;

import android.text.TextUtils;
import com.netease.nis.basesdk.HttpUtil;
import com.netease.nis.basesdk.Logger;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReportRunnable implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f75904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, String> f75905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HttpUtil.ResponseCallBack f75906c;

    class a implements HttpUtil.ResponseCallBack {
        a() {
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i10, String str) {
            CrashReportRunnable.this.f75906c.onError(i10, str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            CrashReportRunnable.this.f75906c.onSuccess(str);
        }
    }

    public CrashReportRunnable(Map<String, String> map, String str, HttpUtil.ResponseCallBack responseCallBack) {
        this.f75905b = map;
        this.f75904a = str;
        this.f75906c = responseCallBack;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (TextUtils.isEmpty(this.f75904a) || this.f75905b == null || this.f75906c == null || Thread.currentThread().isInterrupted()) {
            return;
        }
        try {
            HttpUtil.doHttpRequest(this.f75904a, true, false, HttpUtil.map2Form(this.f75905b, "utf-8"), null, null, new a());
        } catch (UnsupportedEncodingException e10) {
            Logger.e("EncodingException" + e10.getMessage());
        }
    }
}
