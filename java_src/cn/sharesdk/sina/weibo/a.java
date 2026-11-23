package cn.sharesdk.sina.weibo;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.WebAuthorizeActivity;
import cn.sharesdk.framework.authorize.b;
import cn.sharesdk.framework.authorize.c;
import cn.sharesdk.framework.f;
import cn.sharesdk.framework.network.SSDKNetworkHelper;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.sina.weibo.utils.WebSharePage;
import com.join.mgps.activity.QuarkInstallAppActivity_;
import com.mob.MobSDK;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.DH;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.sina.weibo.BuildConfig;
import com.umeng.analytics.pro.bm;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f2758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2759c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2760d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f2762f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String[] f2763g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SSDKNetworkHelper f2764h;

    private a(Platform platform) {
        super(platform);
        this.f2763g = new String[]{"follow_app_official_microblog"};
        this.f2764h = SSDKNetworkHelper.getInstance();
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public String getAuthorizeUrl() {
        return "";
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public b getAuthorizeWebviewClient(WebAuthorizeActivity webAuthorizeActivity) {
        return new cn.sharesdk.sina.weibo.utils.a(webAuthorizeActivity);
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public String getRedirectUri() {
        return TextUtils.isEmpty(this.f2761e) ? "https://api.weibo.com/oauth2/default.html" : this.f2761e;
    }

    @Override // cn.sharesdk.framework.f, cn.sharesdk.framework.authorize.AuthorizeHelper
    public c getSSOProcessor(SSOAuthorizeActivity sSOAuthorizeActivity) {
        cn.sharesdk.sina.weibo.utils.b bVar = new cn.sharesdk.sina.weibo.utils.b(sSOAuthorizeActivity);
        bVar.a(32973);
        bVar.a(this.f2759c, this.f2761e, this.f2763g);
        return bVar;
    }

    public String b(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("client_id", this.f2759c));
        arrayList.add(new KVPair<>("client_secret", this.f2760d));
        arrayList.add(new KVPair<>("redirect_uri", this.f2761e));
        arrayList.add(new KVPair<>("grant_type", "authorization_code"));
        arrayList.add(new KVPair<>("code", str));
        String strHttpPost = this.f2764h.httpPost("https://api.weibo.com/oauth2/access_token", arrayList, "/oauth2/access_token", b());
        ShareSDK.logApiEvent("/oauth2/access_token", b());
        return strHttpPost;
    }

    public void c(String str) {
        this.f2762f = str;
    }

    public HashMap<String, Object> d(String str) throws Throwable {
        boolean z10;
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f2759c));
        String str2 = this.f2762f;
        if (str2 != null) {
            arrayList.add(new KVPair<>("access_token", str2));
        }
        try {
            ResHelper.parseLong(str);
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
        }
        if (z10) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        String strHttpGet = this.f2764h.httpGet("https://api.weibo.com/2/users/show.json", arrayList, "/2/users/show.json", b());
        if (strHttpGet != null) {
            return new Hashon().fromJson(strHttpGet);
        }
        return null;
    }

    public HashMap<String, Object> e(String str) throws Throwable {
        boolean z10;
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f2759c));
        arrayList.add(new KVPair<>("access_token", this.f2762f));
        try {
            ResHelper.parseLong(str);
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
        }
        if (z10) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        String strHttpPost = this.f2764h.httpPost("https://api.weibo.com/2/friendships/create.json", arrayList, "/2/friendships/create.json", b());
        if (strHttpPost != null) {
            return new Hashon().fromJson(strHttpPost);
        }
        return null;
    }

    public static synchronized a a(Platform platform) {
        if (f2758b == null) {
            f2758b = new a(platform);
        }
        return f2758b;
    }

    public HashMap<String, Object> c(int i10, int i11, String str) throws Throwable {
        boolean z10;
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f2759c));
        String str2 = this.f2762f;
        if (str2 != null) {
            arrayList.add(new KVPair<>("access_token", str2));
        }
        try {
            ResHelper.parseLong(str);
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
        }
        if (z10) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        arrayList.add(new KVPair<>(QuarkInstallAppActivity_.COUNT_EXTRA, String.valueOf(i10)));
        arrayList.add(new KVPair<>("page", String.valueOf(i11)));
        String strHttpGet = this.f2764h.httpGet("https://api.weibo.com/2/friendships/friends/bilateral.json", arrayList, "/2/friendships/friends/bilateral.json", b());
        if (strHttpGet != null) {
            return new Hashon().fromJson(strHttpGet);
        }
        return null;
    }

    public void a(String str, String str2) {
        this.f2759c = str;
        this.f2760d = str2;
    }

    public void a(String str) {
        this.f2761e = str;
    }

    public void a(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        this.f2763g = strArr;
    }

    public void b(final Platform.ShareParams shareParams, final PlatformActionListener platformActionListener) {
        DH.requester(MobSDK.getContext()).getDeviceKey().getDetailNetworkTypeForStatic().getScreenSize().getCarrier().getNetworkType().request(new DH.DHResponder() { // from class: cn.sharesdk.sina.weibo.a.3
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                String text;
                try {
                    HashMap<String, String> map = new HashMap<>();
                    map.put(bm.bv, dHResponse.getDeviceKey());
                    map.put("nt", dHResponse.getNetworkType());
                    map.put("dnwktfs", dHResponse.getDetailNetworkTypeForStatic());
                    map.put("srs", dHResponse.getScreenSize());
                    map.put("car", dHResponse.getCarrier());
                    final Platform.ShareParams shareParams2 = shareParams;
                    if (TextUtils.isEmpty(shareParams2.getUrl())) {
                        text = shareParams.getText();
                    } else {
                        text = shareParams.getText() + " " + shareParams.getUrl();
                    }
                    if (TextUtils.isEmpty(text)) {
                        int stringRes = ResHelper.getStringRes(MobSDK.getContext(), "ssdk_weibo_upload_content");
                        if (stringRes > 0) {
                            shareParams.setText(MobSDK.getContext().getResources().getString(stringRes));
                        }
                    } else {
                        shareParams.setText(((f) a.this).f2639a.getShortLintk(text, false, map));
                    }
                    AuthorizeListener authorizeListener = new AuthorizeListener() { // from class: cn.sharesdk.sina.weibo.a.3.1
                        @Override // cn.sharesdk.framework.authorize.AuthorizeListener
                        public void onCancel() {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            PlatformActionListener platformActionListener2 = platformActionListener;
                            if (platformActionListener2 != null) {
                                platformActionListener2.onCancel(((f) a.this).f2639a, 9);
                            }
                        }

                        @Override // cn.sharesdk.framework.authorize.AuthorizeListener
                        public void onComplete(Bundle bundle) {
                            if (platformActionListener != null) {
                                HashMap<String, Object> map2 = new HashMap<>();
                                map2.put("ShareParams", shareParams2);
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                platformActionListener.onComplete(((f) a.this).f2639a, 9, map2);
                            }
                            if (bundle != null) {
                                String string = bundle.getString("uid");
                                String string2 = bundle.getString("access_token");
                                String string3 = bundle.getString("expire_in");
                                if (!TextUtils.isEmpty(string2)) {
                                    a.this.f2762f = string2;
                                    ((f) a.this).f2639a.getDb().putToken(a.this.f2762f);
                                }
                                ((f) a.this).f2639a.getDb().putUserId(string);
                                try {
                                    ((f) a.this).f2639a.getDb().putExpiresIn(ResHelper.parseLong(string3));
                                } catch (Throwable unused) {
                                }
                            }
                        }

                        @Override // cn.sharesdk.framework.authorize.AuthorizeListener
                        public void onError(Throwable th) {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            PlatformActionListener platformActionListener2 = platformActionListener;
                            if (platformActionListener2 != null) {
                                platformActionListener2.onError(((f) a.this).f2639a, 9, th);
                            }
                        }
                    };
                    WebSharePage webSharePage = new WebSharePage();
                    webSharePage.setAppKey(a.this.f2759c, a.this.f2762f);
                    webSharePage.setShareParams(shareParams);
                    webSharePage.setListener(authorizeListener);
                    webSharePage.show(MobSDK.getContext(), null);
                } catch (Throwable th) {
                    PlatformActionListener platformActionListener2 = platformActionListener;
                    if (platformActionListener2 != null) {
                        platformActionListener2.onError(((f) a.this).f2639a, 9, th);
                    }
                }
            }
        });
    }

    private String a(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        return a(objArr, str, 0, objArr.length);
    }

    public HashMap<String, Object> d(int i10, int i11, String str) throws Throwable {
        boolean z10;
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f2759c));
        String str2 = this.f2762f;
        if (str2 != null) {
            arrayList.add(new KVPair<>("access_token", str2));
        }
        try {
            ResHelper.parseLong(str);
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
        }
        if (z10) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        arrayList.add(new KVPair<>(QuarkInstallAppActivity_.COUNT_EXTRA, String.valueOf(i10)));
        arrayList.add(new KVPair<>("cursor", String.valueOf(i11)));
        String strHttpGet = this.f2764h.httpGet("https://api.weibo.com/2/friendships/followers.json", arrayList, "/2/friendships/followers.json", b());
        if (strHttpGet != null) {
            return new Hashon().fromJson(strHttpGet);
        }
        return null;
    }

    private String a(Object[] objArr, String str, int i10, int i11) {
        if (objArr == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(i12 * 16);
        Object obj = objArr[i10];
        if (obj != null) {
            sb2.append(obj);
        }
        while (true) {
            i10++;
            if (i10 < i11) {
                sb2.append(str);
                Object obj2 = objArr[i10];
                if (obj2 != null) {
                    sb2.append(obj2);
                }
            } else {
                return sb2.toString();
            }
        }
    }

    public void c() {
        cn.sharesdk.sina.weibo.sdk.a.a(MobSDK.getContext(), DH.SyncMtd.getPackageName(), new ShareSDKCallback<String>() { // from class: cn.sharesdk.sina.weibo.a.4
            @Override // cn.sharesdk.framework.ShareSDKCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onCallback(String str) {
                Intent intent = new Intent();
                intent.setAction("com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER");
                String packageName = MobSDK.getContext().getPackageName();
                intent.putExtra("_weibo_sdkVersion", "0031405000");
                intent.putExtra("_weibo_appPackage", packageName);
                intent.putExtra("_weibo_appKey", a.this.f2759c);
                intent.putExtra("_weibo_flag", 538116905);
                intent.putExtra("_weibo_sign", str);
                SSDKLog.b().a("intent=" + intent + ", extra=" + intent.getExtras(), new Object[0]);
                MobSDK.getContext().sendBroadcast(intent, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION");
            }
        });
    }

    public HashMap<String, Object> b(int i10, int i11, String str) throws Throwable {
        boolean z10;
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f2759c));
        String str2 = this.f2762f;
        if (str2 != null) {
            arrayList.add(new KVPair<>("access_token", str2));
        }
        try {
            ResHelper.parseLong(str);
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
        }
        if (z10) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        arrayList.add(new KVPair<>(QuarkInstallAppActivity_.COUNT_EXTRA, String.valueOf(i10)));
        arrayList.add(new KVPair<>("cursor", String.valueOf(i11)));
        String strHttpGet = this.f2764h.httpGet("https://api.weibo.com/2/friendships/friends.json", arrayList, "/2/friendships/friends.json", b());
        if (strHttpGet != null) {
            return new Hashon().fromJson(strHttpGet);
        }
        return null;
    }

    public void a(AuthorizeListener authorizeListener, boolean z10) {
        if (z10) {
            a(authorizeListener);
            return;
        }
        new SinaWeiboOfficialAuth(this.f2759c, this.f2761e, a(this.f2763g, ","), authorizeListener).show(MobSDK.getContext(), null);
        SSDKLog.b().a("SinaWeibo SDK Client doAuthorize ");
    }

    public boolean a() {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("client_id", this.f2759c));
        arrayList.add(new KVPair<>("client_secret", this.f2760d));
        arrayList.add(new KVPair<>("redirect_uri", this.f2761e));
        arrayList.add(new KVPair<>("grant_type", "refresh_token"));
        arrayList.add(new KVPair<>("refresh_token", this.f2639a.getDb().get("refresh_token")));
        try {
            String strHttpPost = this.f2764h.httpPost("https://api.weibo.com/oauth2/access_token", arrayList, "/oauth2/access_token", b());
            if (TextUtils.isEmpty(strHttpPost) || strHttpPost.contains("error") || strHttpPost.contains("error_code")) {
                return false;
            }
            HashMap mapFromJson = new Hashon().fromJson(strHttpPost);
            String strValueOf = String.valueOf(mapFromJson.get("uid"));
            String strValueOf2 = String.valueOf(mapFromJson.get("expires_in"));
            this.f2762f = String.valueOf(mapFromJson.get("access_token"));
            String strValueOf3 = String.valueOf(mapFromJson.get("refresh_token"));
            String strValueOf4 = String.valueOf(mapFromJson.get("remind_in"));
            this.f2639a.getDb().putUserId(strValueOf);
            this.f2639a.getDb().putExpiresIn(Long.valueOf(strValueOf2).longValue());
            this.f2639a.getDb().putToken(this.f2762f);
            this.f2639a.getDb().put("refresh_token", strValueOf3);
            this.f2639a.getDb().put("remind_in", strValueOf4);
            return true;
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return false;
        }
    }

    public void a(final ShareSDKCallback<Boolean> shareSDKCallback) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setPackage(BuildConfig.APPLICATION_ID);
        intent.setType("image/*");
        Intent intent2 = new Intent("android.intent.action.SEND");
        intent2.setPackage("com.sina.weibog3");
        intent2.setType("image/*");
        DH.requester(MobSDK.getContext()).resolveActivity(intent, 0).resolveActivity(intent2, 0).request(new DH.DHResponder() { // from class: cn.sharesdk.sina.weibo.a.1
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                try {
                    if (dHResponse.resolveActivity(0) == null) {
                        ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                        if (shareSDKCallback2 != null) {
                            shareSDKCallback2.onCallback(Boolean.valueOf(dHResponse.resolveActivity(1) != null));
                        }
                    } else {
                        ShareSDKCallback shareSDKCallback3 = shareSDKCallback;
                        if (shareSDKCallback3 != null) {
                            shareSDKCallback3.onCallback(Boolean.TRUE);
                        }
                    }
                } catch (Throwable unused) {
                    ShareSDKCallback shareSDKCallback4 = shareSDKCallback;
                    if (shareSDKCallback4 != null) {
                        shareSDKCallback4.onCallback(Boolean.FALSE);
                    }
                }
            }
        });
    }

    private void a(AuthorizeListener authorizeListener) {
        new SinaWeiboWebAuthOfficial(this.f2759c, this.f2761e, a(this.f2763g, ","), authorizeListener).show(MobSDK.getContext(), null);
        SSDKLog.b().a("SinaWeibo SDK Web showWebAuthActivity ");
    }

    public void a(final Platform.ShareParams shareParams, final PlatformActionListener platformActionListener) {
        if (shareParams == null) {
            if (platformActionListener != null) {
                platformActionListener.onError(this.f2639a, 9, new Throwable("Please set params"));
                return;
            }
            return;
        }
        if (shareParams.getImageData() == null && TextUtils.isEmpty(shareParams.getImagePath()) && !TextUtils.isEmpty(shareParams.getImageUrl())) {
            try {
                File file = new File(BitmapHelper.downloadBitmap(MobSDK.getContext(), shareParams.getImageUrl()));
                if (file.exists()) {
                    shareParams.setImagePath(file.getAbsolutePath());
                }
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        if (shareParams.getImageArray() != null && shareParams.getImageArray().length > 0) {
            try {
                List<String> listAsList = Arrays.asList(shareParams.getImageArray());
                String[] strArr = new String[listAsList.size()];
                int i10 = 0;
                for (String absolutePath : listAsList) {
                    if (absolutePath.startsWith("http")) {
                        absolutePath = BitmapHelper.downloadBitmap(MobSDK.getContext(), absolutePath);
                    }
                    File file2 = new File(absolutePath);
                    if (file2.exists() && absolutePath.startsWith("/data/")) {
                        File file3 = new File(ResHelper.getCachePath(MobSDK.getContext(), "images"), System.currentTimeMillis() + file2.getName());
                        String absolutePath2 = file3.getAbsolutePath();
                        file3.createNewFile();
                        if (ResHelper.copyFile(absolutePath, absolutePath2)) {
                            absolutePath = file3.getAbsolutePath();
                        }
                    }
                    strArr[i10] = absolutePath;
                    i10++;
                }
                shareParams.setImageArray(strArr);
            } catch (Throwable th2) {
                SSDKLog.b().a(th2);
            }
        }
        new SinaWeiboShareOfficial(this.f2759c, this.f2761e, a(this.f2763g, ","), shareParams, new AuthorizeListener() { // from class: cn.sharesdk.sina.weibo.a.2
            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onCancel() {
                PlatformActionListener platformActionListener2 = platformActionListener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onCancel(((f) a.this).f2639a, 9);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onComplete(Bundle bundle) {
                if (platformActionListener != null) {
                    HashMap<String, Object> map = new HashMap<>();
                    map.put("ShareParams", shareParams);
                    platformActionListener.onComplete(((f) a.this).f2639a, 9, map);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onError(Throwable th3) {
                PlatformActionListener platformActionListener2 = platformActionListener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(((f) a.this).f2639a, 9, th3);
                }
            }
        }).show(MobSDK.getContext(), null);
    }

    public HashMap<String, Object> a(int i10, int i11, String str) throws Throwable {
        boolean z10;
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f2759c));
        try {
            ResHelper.parseLong(str);
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
        }
        if (z10) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        arrayList.add(new KVPair<>(QuarkInstallAppActivity_.COUNT_EXTRA, String.valueOf(i10)));
        arrayList.add(new KVPair<>("page", String.valueOf(i11)));
        String strHttpGet = this.f2764h.httpGet("https://api.weibo.com/2/statuses/user_timeline.json", arrayList, "/2/statuses/user_timeline.json", b());
        if (strHttpGet != null) {
            return new Hashon().fromJson(strHttpGet);
        }
        return null;
    }

    public HashMap<String, Object> a(String str, String str2, HashMap<String, Object> map, HashMap<String, String> map2) {
        KVPair<String> kVPair;
        String strHttpPost;
        if (str2 == null) {
            return null;
        }
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                arrayList.add(new KVPair<>(entry.getKey(), String.valueOf(entry.getValue())));
            }
        }
        arrayList.add(new KVPair<>("source", this.f2759c));
        String str3 = this.f2762f;
        if (str3 != null) {
            arrayList.add(new KVPair<>("access_token", str3));
        }
        if (map2 == null || map2.size() <= 0) {
            kVPair = null;
        } else {
            KVPair<String> kVPair2 = null;
            for (Map.Entry<String, String> entry2 : map2.entrySet()) {
                kVPair2 = new KVPair<>(entry2.getKey(), entry2.getValue());
            }
            kVPair = kVPair2;
        }
        try {
            if ("GET".equals(str2.toUpperCase())) {
                strHttpPost = new NetworkHelper().httpGet(str, arrayList, null, null);
            } else {
                strHttpPost = "POST".equals(str2.toUpperCase()) ? new NetworkHelper().httpPost(str, arrayList, kVPair, (ArrayList<KVPair<String>>) null, (NetworkHelper.NetworkTimeOut) null) : null;
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        if (strHttpPost == null || strHttpPost.length() <= 0) {
            return null;
        }
        return new Hashon().fromJson(strHttpPost);
    }
}
