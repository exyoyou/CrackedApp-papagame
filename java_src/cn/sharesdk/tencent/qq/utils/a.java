package cn.sharesdk.tencent.qq.utils;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.WebAuthorizeActivity;
import cn.sharesdk.framework.authorize.b;
import cn.sharesdk.framework.authorize.c;
import cn.sharesdk.framework.f;
import cn.sharesdk.framework.network.SSDKNetworkHelper;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.g;
import cn.sharesdk.framework.utils.i;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.tencent.qq.ShareActivity;
import com.haima.hmcp.countly.CountlyDbPolicy;
import com.mob.MobSDK;
import com.mob.tools.RxMob;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.DH;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import io.netty.util.internal.StringUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class a extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f2872b = {"get_user_info", "get_simple_userinfo", "get_user_profile", "get_app_friends", "add_share", "list_album", "upload_pic", "add_album", "set_user_face", "get_vip_info", "get_vip_rich_info", "get_intimate_friends_weibo", "match_nick_tips_weibo", "add_t", "add_pic_t"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f2873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String[] f2875e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f2876f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f2877g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f2878h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f2879i;

    private a(Platform platform) {
        super(platform);
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public String getAuthorizeUrl() {
        String redirectUri;
        ShareSDK.logApiEvent("/oauth2.0/authorize", b());
        String strC = c();
        try {
            redirectUri = Data.urlEncode(getRedirectUri(), "utf-8");
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            redirectUri = getRedirectUri();
        }
        return "https://graph.qq.com/oauth2.0/m_authorize?response_type=token&client_id=" + this.f2874d + "&redirect_uri=" + redirectUri + "&display=mobile&scope=" + strC;
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public b getAuthorizeWebviewClient(WebAuthorizeActivity webAuthorizeActivity) {
        return new cn.sharesdk.tencent.qq.a(webAuthorizeActivity);
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public String getRedirectUri() {
        return "auth://tauth.qq.com/";
    }

    @Override // cn.sharesdk.framework.f, cn.sharesdk.framework.authorize.AuthorizeHelper
    public c getSSOProcessor(SSOAuthorizeActivity sSOAuthorizeActivity) {
        cn.sharesdk.tencent.qq.b bVar = new cn.sharesdk.tencent.qq.b(sSOAuthorizeActivity);
        bVar.a(5656);
        bVar.a(this.f2874d, c(), this.f2879i);
        return bVar;
    }

    public HashMap<String, Object> c(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("access_token", str));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        String strHttpGet = SSDKNetworkHelper.getInstance().httpGet("https://graph.qq.com/oauth2.0/me", arrayList, arrayList2, null, "/oauth2.0/me", b());
        if (strHttpGet.startsWith(com.alipay.sdk.authjs.a.f7124i)) {
            while (!strHttpGet.startsWith("{") && strHttpGet.length() > 0) {
                strHttpGet = strHttpGet.substring(1);
            }
            while (!strHttpGet.endsWith("}") && strHttpGet.length() > 0) {
                strHttpGet = strHttpGet.substring(0, strHttpGet.length() - 1);
            }
        }
        if (strHttpGet.length() > 0) {
            return new Hashon().fromJson(strHttpGet);
        }
        return null;
    }

    public void d(String str) {
        this.f2878h = str;
    }

    public HashMap<String, Object> e(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("access_token", this.f2878h));
        arrayList.add(new KVPair<>("oauth_consumer_key", this.f2874d));
        arrayList.add(new KVPair<>("openid", this.f2876f));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        String strHttpGet = SSDKNetworkHelper.getInstance().httpGet("https://graph.qq.com/user/get_simple_userinfo", arrayList, arrayList2, null, "/user/get_simple_userinfo", b());
        if (strHttpGet == null || strHttpGet.length() <= 0) {
            return null;
        }
        return new Hashon().fromJson(strHttpGet);
    }

    public static a a(Platform platform) {
        if (f2873c == null) {
            f2873c = new a(platform);
        }
        return f2873c;
    }

    public void b(String str) {
        this.f2876f = str;
    }

    public void a(String str) {
        this.f2874d = str;
    }

    public void a(String[] strArr) {
        this.f2875e = strArr;
    }

    public void a(final AuthorizeListener authorizeListener, boolean z10) {
        a(new SSOListener() { // from class: cn.sharesdk.tencent.qq.utils.a.1
            @Override // cn.sharesdk.framework.authorize.SSOListener
            public void onCancel() {
                authorizeListener.onCancel();
            }

            @Override // cn.sharesdk.framework.authorize.SSOListener
            public void onComplete(Bundle bundle) {
                authorizeListener.onComplete(bundle);
            }

            @Override // cn.sharesdk.framework.authorize.SSOListener
            public void onFailed(Throwable th) {
                if (th != null) {
                    authorizeListener.onError(th);
                } else {
                    authorizeListener.onError(new Throwable("Unknown Throwable!"));
                }
            }
        });
    }

    public void a() {
        RxMob.Subscribable subscribableCreate = RxMob.create(new RxMob.OnSubscribe() { // from class: cn.sharesdk.tencent.qq.utils.QQHelper$2
            @Override // com.mob.tools.RxMob.OnSubscribe
            public void call(RxMob.Subscriber subscriber) {
                ArrayList<KVPair<String>> arrayList = new ArrayList<>();
                arrayList.add(new KVPair<>("access_token", this.this$0.f2878h));
                arrayList.add(new KVPair<>("unionid", "1"));
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.readTimout = 10000;
                networkTimeOut.connectionTimeout = 10000;
                SSDKNetworkHelper sSDKNetworkHelper = SSDKNetworkHelper.getInstance();
                try {
                    this.this$0.f2877g = sSDKNetworkHelper.httpPost("https://graph.qq.com/oauth2.0/me", arrayList, (KVPair<String>) null, (ArrayList<KVPair<String>>) null, networkTimeOut);
                    subscriber.onCompleted();
                } catch (Throwable th) {
                    th.printStackTrace();
                    ((f) this.this$0).f2639a.getDb().put("unionid", "");
                    SSDKLog.b().a("qq auth,get unionId fail", new Object[0]);
                }
            }
        });
        subscribableCreate.subscribeOn(RxMob.Thread.NEW_THREAD);
        subscribableCreate.observeOn(RxMob.Thread.IMMEDIATE);
        subscribableCreate.subscribe(new RxMob.Subscriber() { // from class: cn.sharesdk.tencent.qq.utils.QQHelper$3
            @Override // com.mob.tools.RxMob.Subscriber
            public void onCompleted() {
                if (this.this$0.f2877g == null || this.this$0.f2877g.length() <= 0) {
                    return;
                }
                a aVar = this.this$0;
                aVar.f2877g = aVar.f2877g.replace("callback( ", "");
                a aVar2 = this.this$0;
                aVar2.f2877g = aVar2.f2877g.replace(" );", "");
                HashMap mapFromJson = new Hashon().fromJson(this.this$0.f2877g);
                if (!mapFromJson.containsKey("unionid")) {
                    ((f) this.this$0).f2639a.getDb().put("unionid", "");
                } else {
                    ((f) this.this$0).f2639a.getDb().put("unionid", (String) mapFromJson.get("unionid"));
                }
            }

            @Override // com.mob.tools.RxMob.Subscriber
            public void onError(Throwable th) {
                ((f) this.this$0).f2639a.getDb().put("unionid", "");
                SSDKLog.b().a("qq auth,get unionId fail", new Object[0]);
            }
        });
    }

    public void a(Platform platform, Platform.ShareParams shareParams, PlatformActionListener platformActionListener) throws Throwable {
        g gVar = new g();
        gVar.a(this.f2879i, "com.tencent.mobileqq.activity.JumpActivity");
        gVar.a(shareParams, platform);
        HashMap<String, Object> map = new HashMap<>();
        map.put("ShareParams", shareParams);
        platformActionListener.onComplete(platform, 9, map);
    }

    private String c() {
        String[] strArr = this.f2875e;
        if (strArr == null) {
            strArr = f2872b;
        }
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (String str : strArr) {
            if (i10 > 0) {
                sb2.append(StringUtil.COMMA);
            }
            sb2.append(str);
            i10++;
        }
        return sb2.toString();
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, PlatformActionListener platformActionListener, boolean z10, int i10, String str7, String str8, String str9, int i11, boolean z11) {
        String str10 = str4;
        if (z10) {
            a(str, str2, str3, str4, str5, str6, platformActionListener);
            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ QQHelper addShare weiboShare ");
            return;
        }
        if (!z11) {
            if (platformActionListener != null) {
                platformActionListener.onError(this.f2639a, 9, new Throwable("QQClientNotExistException"));
                return;
            }
            return;
        }
        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ QQHelper addShare isQQInstalled ");
        if (!TextUtils.isEmpty(str4)) {
            File file = new File(str10);
            if (file.exists() && str10.startsWith("/data/")) {
                String absolutePath = new File(ResHelper.getCachePath(MobSDK.getContext(), "images"), System.currentTimeMillis() + file.getName()).getAbsolutePath();
                if (ResHelper.copyFile(str10, absolutePath)) {
                    SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ QQHelper imagePath " + absolutePath);
                    str10 = absolutePath;
                } else {
                    SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ QQHelper imagePath is null");
                    str10 = null;
                }
            }
        }
        Intent intent = new Intent();
        intent.putExtra("title", str);
        intent.putExtra("titleUrl", str2);
        intent.putExtra("summary", str3);
        intent.putExtra("imagePath", str10);
        intent.putExtra("imageUrl", str5);
        intent.putExtra("musicUrl", str6);
        intent.putExtra("appId", this.f2874d);
        intent.putExtra("hidden", i10);
        intent.putExtra("mini_program_appid", str7);
        intent.putExtra("mini_program_path", str8);
        intent.putExtra("mini_program_type", str9);
        intent.putExtra("share_type", i11);
        ShareActivity shareActivity = new ShareActivity();
        shareActivity.setPlatformActionListener(this.f2639a, platformActionListener);
        shareActivity.setAppId(this.f2874d);
        shareActivity.show(MobSDK.getContext(), intent);
    }

    public void a(final ShareSDKCallback<Boolean> shareSDKCallback) {
        DH.requester(MobSDK.getContext()).getPInfoForce(true, "com.tencent.mobileqq", 0).getPInfoForce(true, "com.tencent.tim", 0).getPInfoForce(true, "com.tencent.minihd.qq", 0).getPInfoForce(true, "com.tencent.mobileqqi", 0).getPInfoForce(true, "com.tencent.qqlite", 0).request(new DH.DHResponder() { // from class: cn.sharesdk.tencent.qq.utils.a.2
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                String str;
                try {
                    PackageInfo pInfoForce = dHResponse.getPInfoForce(0);
                    PackageInfo pInfoForce2 = dHResponse.getPInfoForce(1);
                    PackageInfo pInfoForce3 = dHResponse.getPInfoForce(2);
                    PackageInfo pInfoForce4 = dHResponse.getPInfoForce(3);
                    PackageInfo pInfoForce5 = dHResponse.getPInfoForce(4);
                    if (pInfoForce == null) {
                        pInfoForce = i.a("com.tencent.mobileqq", 0);
                    }
                    if (pInfoForce2 == null) {
                        pInfoForce2 = i.a("com.tencent.tim", 0);
                    }
                    if (pInfoForce3 == null) {
                        pInfoForce3 = i.a("com.tencent.minihd.qq", 0);
                    }
                    if (pInfoForce4 == null) {
                        pInfoForce4 = i.a("com.tencent.mobileqqi", 0);
                    }
                    if (pInfoForce5 == null) {
                        pInfoForce5 = i.a("com.tencent.qqlite", 0);
                    }
                    if (pInfoForce != null) {
                        str = pInfoForce.versionName;
                        a.this.f2879i = "com.tencent.mobileqq";
                    } else if (pInfoForce2 != null) {
                        str = pInfoForce2.versionName;
                        a.this.f2879i = "com.tencent.tim";
                    } else if (pInfoForce3 != null) {
                        str = pInfoForce3.versionName;
                        a.this.f2879i = "com.tencent.minihd.qq";
                    } else if (pInfoForce4 != null) {
                        str = pInfoForce4.versionName;
                        a.this.f2879i = "com.tencent.mobileqqi";
                    } else if (pInfoForce5 != null) {
                        str = pInfoForce5.versionName;
                        a.this.f2879i = "com.tencent.qqlite";
                    } else {
                        str = null;
                    }
                    ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                    if (shareSDKCallback2 != null) {
                        shareSDKCallback2.onCallback(Boolean.valueOf(TextUtils.isEmpty(str) ? false : true));
                    }
                } catch (Throwable unused) {
                    ShareSDKCallback shareSDKCallback3 = shareSDKCallback;
                    if (shareSDKCallback3 != null) {
                        shareSDKCallback3.onCallback(Boolean.FALSE);
                    }
                }
            }
        });
    }

    private void a(String str, String str2, String str3, String str4, String str5, String str6, PlatformActionListener platformActionListener) {
        String strHttpPost;
        try {
            boolean z10 = (TextUtils.isEmpty(str4) && TextUtils.isEmpty(str5)) ? false : true;
            String str7 = !z10 ? "/t/add_t" : "/t/add_pic_t";
            String str8 = "https://graph.qq.com" + str7;
            ArrayList<KVPair<String>> arrayList = new ArrayList<>();
            arrayList.add(new KVPair<>("oauth_consumer_key", this.f2874d));
            arrayList.add(new KVPair<>("access_token", this.f2878h));
            arrayList.add(new KVPair<>("openid", this.f2876f));
            arrayList.add(new KVPair<>("format", CountlyDbPolicy.FIELD_COUNTLY_JSON));
            arrayList.add(new KVPair<>("content", str3));
            if (z10) {
                if (TextUtils.isEmpty(str4)) {
                    str4 = BitmapHelper.downloadBitmap(MobSDK.getContext(), str5);
                }
                strHttpPost = SSDKNetworkHelper.getInstance().httpPost(str8, arrayList, new KVPair<>("pic", str4), str7, b());
            } else {
                strHttpPost = SSDKNetworkHelper.getInstance().httpPost(str8, arrayList, str7, b());
            }
            if (strHttpPost == null || strHttpPost.length() <= 0 || platformActionListener == null) {
                return;
            }
            HashMap<String, Object> mapFromJson = new Hashon().fromJson(strHttpPost);
            if (((Integer) mapFromJson.get("ret")).intValue() != 0) {
                platformActionListener.onError(this.f2639a, 9, new Exception(strHttpPost));
            } else {
                platformActionListener.onComplete(this.f2639a, 9, mapFromJson);
            }
        } catch (Throwable th) {
            if (platformActionListener != null) {
                platformActionListener.onError(this.f2639a, 9, th);
            }
        }
    }
}
