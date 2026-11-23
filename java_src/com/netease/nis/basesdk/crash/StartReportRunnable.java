package com.netease.nis.basesdk.crash;

import android.text.TextUtils;
import com.netease.nis.basesdk.HttpUtil;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class StartReportRunnable implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f75910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, String> f75911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HttpUtil.ResponseCallBack f75912c;

    class a implements HttpUtil.ResponseCallBack {
        a() {
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i10, String str) {
            StartReportRunnable.this.f75912c.onError(i10, str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            StartReportRunnable.this.f75912c.onSuccess(str);
        }
    }

    public StartReportRunnable(Map<String, String> map, String str, HttpUtil.ResponseCallBack responseCallBack) {
        this.f75911b = map;
        this.f75910a = str;
        this.f75912c = responseCallBack;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map<String, String> map;
        if (TextUtils.isEmpty(this.f75910a) || (map = this.f75911b) == null || this.f75912c == null) {
            return;
        }
        HttpUtil.doPostRequestByForm(this.f75910a, map, null, new a());
    }
}
