package cn.sharesdk.tencent.qzone.utils;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.WebAuthorizeActivity;
import cn.sharesdk.framework.f;
import cn.sharesdk.framework.network.SSDKNetworkHelper;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.ShareSDKFileProvider;
import cn.sharesdk.framework.utils.i;
import cn.sharesdk.onekeyshare.OnekeyShare;
import com.byazt.nys.PluginConstants;
import com.haima.hmcp.countly.CountlyDbPolicy;
import com.mob.MobSDK;
import com.mob.tools.RxMob;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.DH;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ReflectHelper;
import com.mob.tools.utils.ResHelper;
import io.netty.util.internal.StringUtil;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class b extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f2911b = {"get_user_info", "get_simple_userinfo", "get_user_profile", "get_app_friends", "add_share", "list_album", "upload_pic", "add_album", "set_user_face", "get_vip_info", "get_vip_rich_info", "get_intimate_friends_weibo", "match_nick_tips_weibo", "add_t", "add_pic_t"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f2912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f2915f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f2916g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SSDKNetworkHelper f2917h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String[] f2918i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f2919j;

    private b(Platform platform) {
        super(platform);
        this.f2917h = SSDKNetworkHelper.getInstance();
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
        return "https://graph.qq.com/oauth2.0/m_authorize?response_type=token&client_id=" + this.f2913d + "&redirect_uri=" + redirectUri + "&display=mobile&scope=" + strC;
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public cn.sharesdk.framework.authorize.b getAuthorizeWebviewClient(WebAuthorizeActivity webAuthorizeActivity) {
        return new a(webAuthorizeActivity);
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public String getRedirectUri() {
        return "auth://tauth.qq.com/";
    }

    @Override // cn.sharesdk.framework.f, cn.sharesdk.framework.authorize.AuthorizeHelper
    public cn.sharesdk.framework.authorize.c getSSOProcessor(SSOAuthorizeActivity sSOAuthorizeActivity) {
        c cVar = new c(sSOAuthorizeActivity);
        cVar.a(5656);
        cVar.a(this.f2913d, c());
        return cVar;
    }

    private String c() {
        String[] strArr = this.f2918i;
        if (strArr == null) {
            strArr = f2911b;
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

    public static byte[] f(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            SSDKLog.b().b("getBytesUTF8: UnsupportedEncodingException" + e10);
            return new byte[0];
        }
    }

    private String g(String str) {
        try {
            Class<?> cls = ReflectHelper.getClass("android.media.MediaMetadataRetriever");
            Object objNewInstance = cls.newInstance();
            cls.getMethod("setDataSource", String.class).invoke(objNewInstance, str);
            return (String) ReflectHelper.invokeInstanceMethod(objNewInstance, "extractMetadata", 9);
        } catch (Throwable unused) {
            return "";
        }
    }

    private String h(String str) {
        try {
            File file = new File(str);
            Uri uriA = ShareSDKFileProvider.a(MobSDK.getContext(), MobSDK.getContext().getPackageName() + ".cn.sharesdk.ShareSDKFileProvider", file);
            MobSDK.getContext().grantUriPermission("com.tencent.mobileqq", uriA, 3);
            MobSDK.getContext().grantUriPermission("com.tencent.tim", uriA, 3);
            MobSDK.getContext().grantUriPermission("com.tencent.minihd.qq", uriA, 3);
            MobSDK.getContext().grantUriPermission("com.tencent.qqlite", uriA, 3);
            if (uriA == null) {
                return null;
            }
            return uriA.toString();
        } catch (Throwable th) {
            SSDKLog.b().b("pathToUrl" + th);
            return null;
        }
    }

    public HashMap<String, Object> d(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("access_token", this.f2915f));
        arrayList.add(new KVPair<>("oauth_consumer_key", this.f2913d));
        arrayList.add(new KVPair<>("openid", this.f2914e));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        String strHttpGet = this.f2917h.httpGet("https://graph.qq.com/user/get_simple_userinfo", arrayList, arrayList2, null, "/user/get_simple_userinfo", b());
        if (strHttpGet == null || strHttpGet.length() <= 0) {
            return null;
        }
        return new Hashon().fromJson(strHttpGet);
    }

    public HashMap<String, Object> e(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("access_token", str));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        String strHttpGet = this.f2917h.httpGet("https://graph.qq.com/oauth2.0/me", arrayList, arrayList2, null, "/oauth2.0/me", b());
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

    public void b(String str) {
        this.f2914e = str;
    }

    public static b a(Platform platform) {
        if (f2912c == null) {
            f2912c = new b(platform);
        }
        return f2912c;
    }

    public HashMap<String, Object> b(String str, String str2) throws Throwable {
        String strHttpPost;
        boolean z10 = !TextUtils.isEmpty(str);
        String str3 = z10 ? "/t/add_pic_t" : "/t/add_t";
        String str4 = "https://graph.qq.com" + str3;
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("oauth_consumer_key", this.f2913d));
        arrayList.add(new KVPair<>("access_token", this.f2915f));
        arrayList.add(new KVPair<>("openid", this.f2914e));
        arrayList.add(new KVPair<>("format", CountlyDbPolicy.FIELD_COUNTLY_JSON));
        arrayList.add(new KVPair<>("content", str2));
        if (z10) {
            strHttpPost = this.f2917h.httpPost(str4, arrayList, new KVPair<>("pic", str), str3, b());
        } else {
            strHttpPost = this.f2917h.httpPost(str4, arrayList, str3, b());
        }
        if (strHttpPost == null || strHttpPost.length() <= 0) {
            return null;
        }
        HashMap<String, Object> mapFromJson = new Hashon().fromJson(strHttpPost);
        if (((Integer) mapFromJson.get("ret")).intValue() == 0) {
            return mapFromJson;
        }
        throw new Throwable(strHttpPost);
    }

    public void a(boolean z10) {
        this.f2919j = z10;
    }

    public void a(String str) {
        this.f2913d = str;
    }

    public void c(String str) {
        this.f2915f = str;
    }

    public void a(String[] strArr) {
        this.f2918i = strArr;
    }

    public void a(final AuthorizeListener authorizeListener, boolean z10) {
        a(new SSOListener() { // from class: cn.sharesdk.tencent.qzone.utils.b.1
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
        RxMob.Subscribable subscribableCreate = RxMob.create(new RxMob.OnSubscribe() { // from class: cn.sharesdk.tencent.qzone.utils.QZoneHelper$2
            @Override // com.mob.tools.RxMob.OnSubscribe
            public void call(RxMob.Subscriber subscriber) {
                ArrayList<KVPair<String>> arrayList = new ArrayList<>();
                arrayList.add(new KVPair<>("access_token", this.this$0.f2915f));
                arrayList.add(new KVPair<>("unionid", "1"));
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.readTimout = 10000;
                networkTimeOut.connectionTimeout = 10000;
                SSDKNetworkHelper sSDKNetworkHelper = SSDKNetworkHelper.getInstance();
                try {
                    this.this$0.f2916g = sSDKNetworkHelper.httpPost("https://graph.qq.com/oauth2.0/me", arrayList, (KVPair<String>) null, (ArrayList<KVPair<String>>) null, networkTimeOut);
                    subscriber.onCompleted();
                } catch (Throwable unused) {
                    ((f) this.this$0).f2639a.getDb().put("unionid", "");
                    SSDKLog.b().a("qq auth, get unionId fail", new Object[0]);
                }
            }
        });
        subscribableCreate.subscribeOn(RxMob.Thread.NEW_THREAD);
        subscribableCreate.observeOn(RxMob.Thread.IMMEDIATE);
        subscribableCreate.subscribe(new RxMob.Subscriber() { // from class: cn.sharesdk.tencent.qzone.utils.QZoneHelper$3
            @Override // com.mob.tools.RxMob.Subscriber
            public void onCompleted() {
                if (this.this$0.f2916g == null || this.this$0.f2916g.length() <= 0) {
                    return;
                }
                b bVar = this.this$0;
                bVar.f2916g = bVar.f2916g.replace("callback( ", "");
                b bVar2 = this.this$0;
                bVar2.f2916g = bVar2.f2916g.replace(" );", "");
                HashMap mapFromJson = new Hashon().fromJson(this.this$0.f2916g);
                if (!mapFromJson.containsKey("unionid")) {
                    ((f) this.this$0).f2639a.getDb().put("unionid", "");
                } else {
                    ((f) this.this$0).f2639a.getDb().put("unionid", (String) mapFromJson.get("unionid"));
                }
            }

            @Override // com.mob.tools.RxMob.Subscriber
            public void onError(Throwable th) {
                ((f) this.this$0).f2639a.getDb().put("unionid", "");
                SSDKLog.b().a("qq auth, get unionId fail", new Object[0]);
            }
        });
    }

    public void a(final int i10, final String str, final String str2, final String str3, final String str4, final String str5, final String str6, String str7, String str8, String str9, String str10, final PlatformActionListener platformActionListener) throws Throwable {
        DH.requester(MobSDK.getContext()).getAppName().request(new DH.DHResponder() { // from class: cn.sharesdk.tencent.qzone.utils.b.2
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                try {
                    String appName = dHResponse.getAppName();
                    String str11 = str5;
                    String strSubstring = str;
                    if (!TextUtils.isEmpty(str11)) {
                        appName = str11;
                    }
                    if (appName.length() > 20) {
                        appName = appName.substring(0, 20) + "...";
                    }
                    String str12 = appName;
                    if (!TextUtils.isEmpty(strSubstring) && strSubstring.length() > 200) {
                        strSubstring = strSubstring.substring(0, 200);
                    }
                    b.this.a(i10, strSubstring, str2, str3, str4, str12, str6, platformActionListener);
                } catch (Throwable th) {
                    SSDKLog.b().a("qzone share " + th, new Object[0]);
                }
            }
        });
    }

    public void a(int i10, String str, String str2, String str3, String str4, String str5, String str6, PlatformActionListener platformActionListener) throws Throwable {
        String str7;
        if (!TextUtils.isEmpty(str6)) {
            str7 = "4";
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            str7 = "3";
        } else {
            if (TextUtils.isEmpty(str2)) {
                if (platformActionListener != null) {
                    platformActionListener.onError(null, 9, new Throwable("The param of title or titleUrl is null !"));
                    return;
                }
                return;
            }
            str7 = "1";
        }
        a(str7, str, str2, str3, str4, str5, str6, platformActionListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"WrongConstant"})
    public void b(Intent intent) {
        try {
            if (intent.getClipData() == null) {
                intent.setClipData(ClipData.newPlainText(null, null));
            }
            intent.setFlags(intent.getFlags() & (-196));
        } catch (Throwable th) {
            SSDKLog.b().d("setActivityIntent security catch exception", th);
        }
    }

    private void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, final PlatformActionListener platformActionListener) {
        String str8 = str5;
        try {
            final StringBuilder sb2 = new StringBuilder();
            if (str != "3" && str != "4") {
                sb2.append("mqqapi://share/to_qzone?src_type=app&version=1&file_type=news");
            } else {
                sb2.append("mqqapi://qzone/publish?src_type=app&version=1&file_type=news");
            }
            if (!TextUtils.isEmpty(str5)) {
                if (!str8.startsWith("http") && !str8.startsWith("https")) {
                    File file = new File(str8);
                    if (file.exists() && str8.startsWith("/data/")) {
                        String absolutePath = new File(ResHelper.getCachePath(MobSDK.getContext(), "images"), System.currentTimeMillis() + file.getName()).getAbsolutePath();
                        if (ResHelper.copyFile(str8, absolutePath)) {
                            str8 = absolutePath;
                        }
                    }
                    try {
                        File file2 = new File(str8);
                        Uri uriA = ShareSDKFileProvider.a(MobSDK.getContext(), MobSDK.getContext().getPackageName() + ".cn.sharesdk.ShareSDKFileProvider", file2);
                        MobSDK.getContext().grantUriPermission("com.tencent.mobileqq", uriA, 3);
                        sb2.append("&image_uri=");
                        sb2.append(Base64.encodeToString(String.valueOf(uriA).getBytes("utf-8"), 2));
                    } catch (Throwable th) {
                        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "doShareToQzone() getUriForFile exception:" + th);
                    }
                } else {
                    sb2.append("&image_url=");
                    sb2.append(Base64.encodeToString(str8.getBytes("utf-8"), 2));
                }
            }
            String strSubstring = (TextUtils.isEmpty(str4) || str4.length() <= 600) ? str4 : str4.substring(0, 600);
            if (!TextUtils.isEmpty(str7) && str.equals("4")) {
                ResHelper.getFileSize(str7);
                String strValueOf = String.valueOf(str6);
                String strG = g(str7);
                sb2.append("&videoPath=");
                sb2.append(Base64.encodeToString(str7.getBytes("utf-8"), 2));
                sb2.append("&videoSize=");
                sb2.append(Base64.encodeToString(strValueOf.getBytes("utf-8"), 2));
                if (!TextUtils.isEmpty(strG)) {
                    sb2.append("&videoDuration=");
                    sb2.append(Base64.encodeToString(strG.getBytes("utf-8"), 2));
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                sb2.append("&title=");
                sb2.append(Base64.encodeToString(str2.getBytes("utf-8"), 2));
            }
            if (!TextUtils.isEmpty(strSubstring)) {
                sb2.append("&description=");
                sb2.append(Base64.encodeToString(strSubstring.getBytes("utf-8"), 2));
            }
            sb2.append("&share_id=");
            sb2.append(this.f2913d);
            if (!TextUtils.isEmpty(str3)) {
                sb2.append("&url=");
                sb2.append(Base64.encodeToString(str3.getBytes("utf-8"), 2));
            }
            sb2.append("&app_name=");
            sb2.append(Base64.encodeToString(str6.getBytes("utf-8"), 2));
            if (!TextUtils.isEmpty(strSubstring)) {
                sb2.append("&share_qq_ext_str=");
                sb2.append(Base64.encodeToString(strSubstring.getBytes(), 2));
            }
            sb2.append("&req_type=");
            sb2.append(Base64.encodeToString(str.getBytes("utf-8"), 2));
            sb2.append("&cflag=");
            sb2.append(Base64.encodeToString("1".getBytes("utf-8"), 2));
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(sb2.toString()));
            DH.requester(MobSDK.getContext()).resolveActivity(intent, 1).request(new DH.DHResponder() { // from class: cn.sharesdk.tencent.qzone.utils.b.3
                @Override // com.mob.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) {
                    if (dHResponse.resolveActivity(new int[0]) != null) {
                        ShareActivity shareActivity = new ShareActivity();
                        shareActivity.setDisableNewTask(b.this.f2919j);
                        shareActivity.setScheme(sb2.toString(), true);
                        shareActivity.setSharedCallback(platformActionListener);
                        shareActivity.setAppId(b.this.f2913d);
                        shareActivity.show(MobSDK.getContext(), null);
                    }
                }
            });
        } catch (Throwable th2) {
            SSDKLog.b().a(th2);
            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ ShareActivity run catch " + th2);
        }
    }

    public void a(final ShareSDKCallback<Boolean> shareSDKCallback) {
        DH.requester(MobSDK.getContext()).getPInfoForce(true, "com.tencent.mobileqq", 0).getPInfoForce(true, "com.tencent.tim", 0).getPInfoForce(true, "com.tencent.minihd.qq", 0).request(new DH.DHResponder() { // from class: cn.sharesdk.tencent.qzone.utils.b.4
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                try {
                    PackageInfo pInfoForce = dHResponse.getPInfoForce(0);
                    if (pInfoForce == null) {
                        pInfoForce = i.a("com.tencent.mobileqq", 0);
                    }
                    PackageInfo pInfoForce2 = dHResponse.getPInfoForce(1);
                    if (pInfoForce2 == null) {
                        pInfoForce2 = i.a("com.tencent.tim", 0);
                    }
                    PackageInfo pInfoForce3 = dHResponse.getPInfoForce(2);
                    if (pInfoForce3 == null) {
                        pInfoForce3 = i.a("com.tencent.minihd.qq", 0);
                    }
                    ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                    if (shareSDKCallback2 != null) {
                        shareSDKCallback2.onCallback(Boolean.valueOf((pInfoForce == null && pInfoForce2 == null && pInfoForce3 == null) ? false : true));
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

    public HashMap<String, Object> a(String str, String str2) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("access_token", this.f2915f));
        arrayList.add(new KVPair<>("oauth_consumer_key", this.f2913d));
        arrayList.add(new KVPair<>("openid", this.f2914e));
        arrayList.add(new KVPair<>("format", CountlyDbPolicy.FIELD_COUNTLY_JSON));
        if (!TextUtils.isEmpty(str2)) {
            if (str2.length() > 200) {
                str2 = str2.substring(0, 199) + MobSDK.getContext().getString(ResHelper.getStringRes(MobSDK.getContext(), "ssdk_symbol_ellipsis"));
            }
            arrayList.add(new KVPair<>("photodesc", str2));
        }
        arrayList.add(new KVPair<>("mobile", "1"));
        KVPair<String> kVPair = new KVPair<>("picture", str);
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        String strHttpPost = this.f2917h.httpPost("https://graph.qq.com/photo/upload_pic", arrayList, kVPair, arrayList2, "/photo/upload_pic", b());
        if (strHttpPost == null || strHttpPost.length() <= 0) {
            return null;
        }
        return new Hashon().fromJson(strHttpPost);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fe, code lost:
    
        r8 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.HashMap<java.lang.String, java.lang.Object> a(java.lang.String r8, java.lang.String r9, java.util.HashMap<java.lang.String, java.lang.Object> r10, java.util.HashMap<java.lang.String, java.lang.String> r11) {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.sharesdk.tencent.qzone.utils.b.a(java.lang.String, java.lang.String, java.util.HashMap, java.util.HashMap):java.util.HashMap");
    }

    public void a(String[] strArr, final PlatformActionListener platformActionListener) {
        final StringBuilder sb2 = new StringBuilder();
        final StringBuilder sb3 = new StringBuilder();
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            try {
                sb2.append(URLEncoder.encode(strArr[i10]));
                String strH = h(strArr[i10]);
                if (!TextUtils.isEmpty(strH)) {
                    sb3.append(strH);
                }
                if (i10 != length - 1) {
                    sb2.append(";");
                    sb3.append(";");
                }
            } catch (Throwable th) {
                SSDKLog.b().a("imgArray:" + th, new Object[0]);
            }
        }
        final Bundle bundle = new Bundle();
        bundle.putString("openid", "");
        bundle.putString("report_type", "11");
        bundle.putString("act_type", "3");
        bundle.putString("via", "ANDROIDQQ.SHARETOQZ.XX");
        bundle.putString(PluginConstants.KEY_APP_ID, this.f2913d);
        bundle.putString("type", "3");
        bundle.putString("login_status", "");
        bundle.putString("need_user_auth", "");
        bundle.putString("to_uin", "0");
        bundle.putString("call_source", "1");
        bundle.putString("to_type", "0");
        bundle.putString("platform", "1");
        DH.requester(MobSDK.getContext()).getAppName().request(new DH.DHResponder() { // from class: cn.sharesdk.tencent.qzone.utils.b.5
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                try {
                    StringBuilder sb4 = new StringBuilder("mqqapi://qzone/publish?src_type=app&version=1&file_type=news");
                    sb4.append("&image_url=");
                    sb4.append(Base64.encodeToString(b.f(sb2.toString()), 2));
                    if (!TextUtils.isEmpty(sb3.toString())) {
                        sb4.append("&image_uri=");
                        sb4.append(Base64.encodeToString(b.f(sb3.toString()), 2));
                    }
                    if (!TextUtils.isEmpty(b.this.f2913d)) {
                        sb4.append("&share_id=");
                        sb4.append(b.this.f2913d);
                    }
                    String appName = dHResponse.getAppName();
                    if (!TextUtils.isEmpty(appName)) {
                        sb4.append("&app_name=");
                        sb4.append(Base64.encodeToString(b.f(appName), 2));
                    }
                    sb4.append("&req_type=");
                    sb4.append(Base64.encodeToString(b.f(String.valueOf(3)), 2));
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setPackage("com.tencent.mobileqq");
                    intent.setData(Uri.parse(sb4.toString()));
                    intent.putExtra("pkg_name", DH.SyncMtd.getPackageName());
                    intent.putExtra("key_pass", bundle);
                    b.this.b(intent);
                    Intent intent2 = new Intent();
                    intent2.putExtra("key_extra_pending_intent", b.this.a(intent));
                    QzoneShareImgArrayActivity qzoneShareImgArrayActivity = new QzoneShareImgArrayActivity();
                    qzoneShareImgArrayActivity.setAppid(b.this.f2913d);
                    qzoneShareImgArrayActivity.setSharedCallback(platformActionListener);
                    qzoneShareImgArrayActivity.show(MobSDK.getContext(), intent2);
                } catch (Throwable th2) {
                    SSDKLog.b().a("QZONE imgs share" + th2, new Object[0]);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PendingIntent a(Intent intent) {
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                return PendingIntent.getActivity(MobSDK.getContext(), 10104, intent, 1140850688);
            }
            return PendingIntent.getActivity(MobSDK.getContext(), 10104, intent, 1073741824);
        } catch (Throwable th) {
            SSDKLog.b().d("create pI exception", th);
            return null;
        }
    }
}
