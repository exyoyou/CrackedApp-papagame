package cn.sharesdk.wechat.utils;

import android.os.Bundle;

/* JADX INFO: loaded from: classes7.dex */
public abstract class WechatResp {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2971g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f2972h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f2973i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f2974j;

    public interface ErrCode {
        public static final int ERR_AUTH_DENIED = -4;
        public static final int ERR_BAN = -6;
        public static final int ERR_COMM = -1;
        public static final int ERR_OK = 0;
        public static final int ERR_SENT_FAILED = -3;
        public static final int ERR_UNSUPPORT = -5;
        public static final int ERR_USER_CANCEL = -2;
    }

    public abstract int a();

    public void a(Bundle bundle) {
        this.f2971g = bundle.getInt("_wxapi_baseresp_errcode");
        this.f2972h = bundle.getString("_wxapi_baseresp_errstr");
        this.f2973i = bundle.getString("_wxapi_baseresp_transaction");
        this.f2974j = bundle.getString("_wxapi_baseresp_openId");
    }

    public void b(Bundle bundle) {
        bundle.putInt("_wxapi_command_type", a());
        bundle.putInt("_wxapi_baseresp_errcode", this.f2971g);
        bundle.putString("_wxapi_baseresp_errstr", this.f2972h);
        bundle.putString("_wxapi_baseresp_transaction", this.f2973i);
        bundle.putString("_wxapi_baseresp_openId", this.f2974j);
    }
}
