package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.network.SSDKNetworkHelper;
import cn.sharesdk.framework.utils.SSDKLog;
import com.baidu.mobads.sdk.api.ArticleInfo;
import com.haima.hmcp.BuildConfig;
import com.mob.tools.network.KVPair;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.umeng.analytics.pro.bm;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SSDKNetworkHelper f2996c = SSDKNetworkHelper.getInstance();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Platform f2997d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2999f;

    public h(Platform platform, int i10) {
        this.f2997d = platform;
        this.f2998e = i10;
    }

    public void a(String str, String str2) {
        this.f2994a = str;
        this.f2995b = str2;
    }

    public void a(boolean z10) {
        this.f2999f = z10;
    }

    public void a(Bundle bundle, AuthorizeListener authorizeListener) {
        String string = bundle.getString("_wxapi_sendauth_resp_url");
        if (TextUtils.isEmpty(string)) {
            if (authorizeListener != null) {
                authorizeListener.onError(null);
                return;
            }
            return;
        }
        int iIndexOf = string.indexOf("://oauth?");
        if (iIndexOf >= 0) {
            string = string.substring(iIndexOf + 1);
        }
        String string2 = ResHelper.urlToBundle(string).getString("code");
        if (this.f2999f) {
            this.f2997d.getDb().putAuthCode(string2);
            authorizeListener.onComplete(null);
            return;
        }
        try {
            a(string2, authorizeListener);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            if (authorizeListener != null) {
                authorizeListener.onError(th);
            }
        }
    }

    private void a(final String str, final AuthorizeListener authorizeListener) throws Throwable {
        SSDKLog.b().a("getAuthorizeToken ==>> " + str, new Object[0]);
        new Thread() { // from class: cn.sharesdk.wechat.utils.h.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    ArrayList<KVPair<String>> arrayList = new ArrayList<>();
                    arrayList.add(new KVPair<>("appid", h.this.f2994a));
                    arrayList.add(new KVPair<>("secret", h.this.f2995b));
                    arrayList.add(new KVPair<>("code", str));
                    arrayList.add(new KVPair<>("grant_type", "authorization_code"));
                    try {
                        String strHttpGet = h.this.f2996c.httpGet("https://api.weixin.qq.com/sns/oauth2/access_token", arrayList, "/sns/oauth2/access_token", h.this.f2998e);
                        if (TextUtils.isEmpty(strHttpGet)) {
                            authorizeListener.onError(new Throwable("Authorize token is empty"));
                            return;
                        }
                        if (!strHttpGet.contains("errcode")) {
                            h.this.a(strHttpGet);
                            authorizeListener.onComplete(null);
                        } else {
                            AuthorizeListener authorizeListener2 = authorizeListener;
                            if (authorizeListener2 != null) {
                                authorizeListener2.onError(new Throwable(strHttpGet));
                            }
                        }
                    } catch (Throwable th) {
                        authorizeListener.onError(th);
                    }
                } catch (Throwable th2) {
                    SSDKLog.b().a(th2);
                }
            }
        }.start();
    }

    public boolean a() {
        String str = this.f2997d.getDb().get("refresh_token");
        if (!TextUtils.isEmpty(this.f2994a) && !TextUtils.isEmpty(str)) {
            ArrayList<KVPair<String>> arrayList = new ArrayList<>();
            arrayList.add(new KVPair<>("appid", this.f2994a));
            arrayList.add(new KVPair<>("refresh_token", str));
            arrayList.add(new KVPair<>("grant_type", "refresh_token"));
            try {
                String strHttpGet = this.f2996c.httpGet("https://api.weixin.qq.com/sns/oauth2/refresh_token", arrayList, "/sns/oauth2/refresh_token", this.f2998e);
                if (TextUtils.isEmpty(strHttpGet) || strHttpGet.contains("errcode")) {
                    return false;
                }
                a(strHttpGet);
                return true;
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        return false;
    }

    public void a(final PlatformActionListener platformActionListener) throws Throwable {
        new Thread() { // from class: cn.sharesdk.wechat.utils.h.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                int i10;
                HashMap<String, Object> map;
                try {
                    ArrayList<KVPair<String>> arrayList = new ArrayList<>();
                    arrayList.add(new KVPair<>("access_token", h.this.f2997d.getDb().getToken()));
                    arrayList.add(new KVPair<>("openid", h.this.f2997d.getDb().get("openid")));
                    arrayList.add(new KVPair<>("lang", BuildConfig.SDK_DEFAULT_LANGUAGE));
                    String strHttpGet = h.this.f2996c.httpGet("https://api.weixin.qq.com/sns/userinfo", arrayList, "/sns/userinfo", h.this.f2998e);
                    if (TextUtils.isEmpty(strHttpGet)) {
                        PlatformActionListener platformActionListener2 = platformActionListener;
                        if (platformActionListener2 != null) {
                            platformActionListener2.onError(h.this.f2997d, 8, new Throwable());
                            return;
                        }
                        return;
                    }
                    SSDKLog.b().a("getUserInfo ==>>" + strHttpGet, new Object[0]);
                    HashMap<String, Object> mapFromJson = new Hashon().fromJson(strHttpGet);
                    if (mapFromJson.containsKey("errcode") && ((Integer) mapFromJson.get("errcode")).intValue() != 0) {
                        if (platformActionListener != null) {
                            platformActionListener.onError(h.this.f2997d, 8, new Throwable(new Hashon().fromHashMap(mapFromJson)));
                            return;
                        }
                        return;
                    }
                    String strValueOf = String.valueOf(mapFromJson.get("openid"));
                    String strValueOf2 = String.valueOf(mapFromJson.get("nickname"));
                    try {
                        i10 = ResHelper.parseInt(String.valueOf(mapFromJson.get(ArticleInfo.USER_SEX)));
                    } catch (Throwable th) {
                        SSDKLog.b().a(th);
                        i10 = 2;
                    }
                    String strValueOf3 = String.valueOf(mapFromJson.get("province"));
                    String strValueOf4 = String.valueOf(mapFromJson.get("city"));
                    String strValueOf5 = String.valueOf(mapFromJson.get(bm.O));
                    String strValueOf6 = String.valueOf(mapFromJson.get("headimgurl"));
                    String strValueOf7 = String.valueOf(mapFromJson.get("unionid"));
                    h.this.f2997d.getDb().put("nickname", strValueOf2);
                    if (i10 == 1) {
                        h.this.f2997d.getDb().put("gender", "0");
                    } else if (i10 == 2) {
                        h.this.f2997d.getDb().put("gender", "1");
                    } else {
                        h.this.f2997d.getDb().put("gender", "2");
                    }
                    h.this.f2997d.getDb().putUserId(strValueOf);
                    h.this.f2997d.getDb().put("icon", strValueOf6);
                    h.this.f2997d.getDb().put("province", strValueOf3);
                    h.this.f2997d.getDb().put("city", strValueOf4);
                    h.this.f2997d.getDb().put(bm.O, strValueOf5);
                    h.this.f2997d.getDb().put("openid", strValueOf);
                    h.this.f2997d.getDb().put("unionid", strValueOf7);
                    if (h.this.f2997d.getDb().get("userTags") != null) {
                        map = mapFromJson;
                        map.put("userTags", h.this.f2997d.getDb().get("userTags"));
                    } else {
                        map = mapFromJson;
                    }
                    platformActionListener.onComplete(h.this.f2997d, 8, map);
                } catch (Throwable th2) {
                    SSDKLog.b().a(th2);
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        SSDKLog.b().a("wechat getAuthorizeToken ==>>" + str, new Object[0]);
        HashMap mapFromJson = new Hashon().fromJson(str);
        String strValueOf = String.valueOf(mapFromJson.get("access_token"));
        String strValueOf2 = String.valueOf(mapFromJson.get("refresh_token"));
        String strValueOf3 = String.valueOf(mapFromJson.get("expires_in"));
        this.f2997d.getDb().put("openid", String.valueOf(mapFromJson.get("openid")));
        this.f2997d.getDb().putExpiresIn(Long.valueOf(strValueOf3).longValue());
        this.f2997d.getDb().putToken(strValueOf);
        this.f2997d.getDb().put("refresh_token", strValueOf2);
    }
}
