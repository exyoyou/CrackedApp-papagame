package com.cmic.gen.sdk.c.d;

import com.baidu.oauth.sdkbqt.result.OauthResult;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f24438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f24439b;

    private a(int i10, String str) {
        this.f24438a = i10;
        this.f24439b = str;
    }

    public int a() {
        return this.f24438a;
    }

    public String b() {
        return this.f24439b;
    }

    public static a a(int i10) {
        switch (i10) {
            case 102102:
                return new a(102102, OauthResult.RESULT_MSG_NETWORK_EXCEPTION);
            case 102223:
                return new a(102223, "数据解析异常");
            case 102508:
                return new a(102508, "数据网络切换失败");
            case 200025:
                return new a(200025, "登录超时");
            case 200039:
                return new a(200039, "电信取号接口失败");
            case 200050:
                return new a(200050, "EOF异常");
            default:
                return new a(i10, OauthResult.RESULT_MSG_NETWORK_EXCEPTION);
        }
    }
}
