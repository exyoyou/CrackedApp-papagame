package cn.sharesdk.wechat.friends;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.a.b.j;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.wechat.utils.WechatClientNotExistException;
import cn.sharesdk.wechat.utils.h;
import cn.sharesdk.wechat.utils.k;
import cn.sharesdk.wechat.utils.l;
import com.alipay.sdk.packet.d;
import com.byazt.nys.PluginConstants;
import com.join.mgps.activity.QuarkDownGameActivity_;
import io.netty.handler.codec.http.cookie.CookieHeaderNames;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class Wechat extends Platform {
    public static final String NAME = "Wechat";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2951c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2952d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2953e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2954f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f2955g;

    @Override // cn.sharesdk.framework.Platform
    protected boolean checkAuthorize(int i10, Object obj) {
        if (i10 == 9 || isAuthValid() || c()) {
            return true;
        }
        String authCode = this.f2398db.getAuthCode();
        if (this.needAuthCode && !TextUtils.isEmpty(authCode)) {
            return true;
        }
        if (!TextUtils.isEmpty(getDb().get("refresh_token"))) {
            try {
                h hVar = new h(this, 22);
                hVar.a(this.f2949a, this.f2950b);
                if (hVar.a()) {
                    return true;
                }
            } catch (Exception e10) {
                SSDKLog.b().a(e10);
            }
        }
        innerAuthorize(i10, obj);
        return false;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doAuthorize(String[] strArr) {
        if (TextUtils.isEmpty(this.f2949a) || TextUtils.isEmpty(this.f2950b)) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 8, new Throwable("The params of appID or appSecret is missing !"));
                return;
            }
            return;
        }
        l lVarA = l.a();
        lVarA.c(this.f2949a);
        if (!this.isClientValid) {
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(this, 1, new WechatClientNotExistException());
                return;
            }
            return;
        }
        h hVar = new h(this, 22);
        hVar.a(this.f2949a, this.f2950b);
        hVar.a(this.needAuthCode);
        k kVar = new k(this);
        kVar.a(hVar);
        kVar.a(new AuthorizeListener() { // from class: cn.sharesdk.wechat.friends.Wechat.1
            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onCancel() {
                if (((Platform) Wechat.this).listener != null) {
                    ((Platform) Wechat.this).listener.onCancel(Wechat.this, 1);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onComplete(Bundle bundle) {
                if (!((Platform) Wechat.this).needAuthCode) {
                    Wechat.this.afterRegister(1, null);
                } else if (((Platform) Wechat.this).listener != null) {
                    HashMap<String, Object> map = new HashMap<>();
                    map.put("authCode", ((Platform) Wechat.this).f2398db.getAuthCode());
                    ((Platform) Wechat.this).listener.onComplete(Wechat.this, 1, map);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onError(Throwable th) {
                if (((Platform) Wechat.this).listener != null) {
                    ((Platform) Wechat.this).listener.onError(Wechat.this, 1, th);
                }
            }
        });
        try {
            lVarA.a(kVar);
        } catch (Throwable th) {
            if (this.listener != null) {
                this.listener.onError(this, 1, th);
            }
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doCustomerProtocol(String str, String str2, int i10, HashMap<String, Object> map, HashMap<String, String> map2) {
        PlatformActionListener platformActionListener = this.listener;
        if (platformActionListener != null) {
            platformActionListener.onCancel(this, i10);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doShare(Platform.ShareParams shareParams) {
        SSDKLog.b().a("Wechat start Share with Appid:" + this.f2949a + "appSecret:" + this.f2950b, new Object[0]);
        SSDKLog sSDKLogB = SSDKLog.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Wechat ShareParams:");
        sb2.append(shareParams.toString());
        sSDKLogB.a(sb2.toString(), new Object[0]);
        if (!this.isClientValid) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 9, new WechatClientNotExistException());
                return;
            }
            return;
        }
        shareParams.set("scene", 0);
        l lVarA = l.a();
        this.f2953e = TextUtils.isEmpty(shareParams.getWxPath()) ? this.f2953e : shareParams.getWxPath();
        this.f2952d = TextUtils.isEmpty(shareParams.getWxUserName()) ? this.f2952d : shareParams.getWxUserName();
        this.f2954f = !shareParams.toMap().containsKey("wxWithShareTicket") ? this.f2954f : shareParams.getWxWithShareTicket();
        this.f2955g = !shareParams.toMap().containsKey("wxMiniProgramType") ? this.f2955g : shareParams.getWxMiniProgramType();
        lVarA.a(this.f2953e);
        lVarA.b(this.f2952d);
        lVarA.a(this.f2954f);
        lVarA.a(this.f2955g);
        lVarA.c(this.f2949a);
        k kVar = new k(this);
        if (this.f2951c) {
            try {
                lVarA.a(kVar, shareParams, this.listener);
                return;
            } catch (Throwable th) {
                PlatformActionListener platformActionListener2 = this.listener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(this, 9, th);
                    return;
                }
                return;
            }
        }
        kVar.a(shareParams, this.listener);
        try {
            lVarA.c(kVar);
        } catch (Throwable th2) {
            if (this.listener != null) {
                this.listener.onError(this, 9, th2);
            }
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> filterFriendshipInfo(int i10, HashMap<String, Object> map) {
        return null;
    }

    @Override // cn.sharesdk.framework.Platform
    protected j.a filterShareContent(Platform.ShareParams shareParams, HashMap<String, Object> map) {
        j.a aVar = new j.a();
        String text = shareParams.getText();
        aVar.f2563b = text;
        String imageUrl = shareParams.getImageUrl();
        String imagePath = shareParams.getImagePath();
        Bitmap imageData = shareParams.getImageData();
        if (!TextUtils.isEmpty(imageUrl)) {
            aVar.f2565d.add(imageUrl);
        } else if (imagePath != null) {
            aVar.f2566e.add(imagePath);
        } else if (imageData != null) {
            aVar.f2567f.add(imageData);
        }
        String url = shareParams.getUrl();
        if (url != null) {
            aVar.f2564c.add(url);
        }
        HashMap<String, Object> map2 = new HashMap<>();
        map2.put("title", shareParams.getTitle());
        map2.put("url", url);
        map2.put(QuarkDownGameActivity_.EXT_INFO_EXTRA, null);
        map2.put("content", text);
        map2.put("image", aVar.f2565d);
        map2.put("musicFileUrl", url);
        aVar.f2568g = map2;
        return aVar;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void follow(String str) {
        PlatformActionListener platformActionListener = this.listener;
        if (platformActionListener != null) {
            platformActionListener.onCancel(this, 6);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getBilaterals(int i10, int i11, String str) {
        return null;
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getFollowers(int i10, int i11, String str) {
        return null;
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getFollowings(int i10, int i11, String str) {
        return null;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void getFriendList(int i10, int i11, String str) {
        PlatformActionListener platformActionListener = this.listener;
        if (platformActionListener != null) {
            platformActionListener.onCancel(this, 2);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    public String getName() {
        return NAME;
    }

    @Override // cn.sharesdk.framework.Platform
    public int getPlatformId() {
        return 22;
    }

    @Override // cn.sharesdk.framework.Platform
    public int getVersion() {
        return 1;
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean hasShareCallback() {
        return !this.f2951c;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void initDevInfo(String str) {
        this.f2949a = getDevinfo(d.f7184h);
        this.f2950b = getDevinfo("AppSecret");
        this.f2951c = "true".equals(getDevinfo("BypassApproval"));
        this.f2952d = getDevinfo(TextUtils.isEmpty(getDevinfo("UserName")) ? "userName" : "UserName");
        String str2 = CookieHeaderNames.PATH;
        if (TextUtils.isEmpty(getDevinfo(CookieHeaderNames.PATH))) {
            str2 = "path";
        }
        this.f2953e = getDevinfo(str2);
        this.f2954f = "true".equals(getDevinfo("WithShareTicket"));
        try {
            this.f2955g = Integer.valueOf(getDevinfo("MiniprogramType")).intValue();
        } catch (Throwable unused) {
            this.f2955g = 0;
        }
        String str3 = this.f2949a;
        if (str3 == null || str3.length() <= 0) {
            this.f2949a = getDevinfo("WechatMoments", d.f7184h);
            this.f2951c = "true".equals(getDevinfo("WechatMoments", "BypassApproval"));
            String str4 = this.f2949a;
            if (str4 != null && str4.length() > 0) {
                copyDevinfo("WechatMoments", NAME);
                this.f2949a = getDevinfo(d.f7184h);
                this.f2951c = "true".equals(getDevinfo("BypassApproval"));
                SSDKLog.b().a("Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0.", new Object[0]);
                return;
            }
            String devinfo = getDevinfo("WechatFavorite", d.f7184h);
            this.f2949a = devinfo;
            if (devinfo == null || devinfo.length() <= 0) {
                return;
            }
            copyDevinfo("WechatFavorite", NAME);
            this.f2949a = getDevinfo(d.f7184h);
            SSDKLog.b().a("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    public void isClientValid(ShareSDKCallback<Boolean> shareSDKCallback) {
        try {
            l lVarA = l.a();
            lVarA.c(this.f2949a);
            lVarA.b(shareSDKCallback);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            if (shareSDKCallback != null) {
                shareSDKCallback.onCallback(Boolean.FALSE);
            }
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected void setNetworkDevinfo() {
        this.f2949a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f7184h);
        this.f2950b = getNetworkDevinfo("app_secret", "AppSecret");
        String str = this.f2949a;
        if (str == null || str.length() <= 0) {
            String networkDevinfo = getNetworkDevinfo(23, PluginConstants.KEY_APP_ID, d.f7184h);
            this.f2949a = networkDevinfo;
            if (networkDevinfo == null || networkDevinfo.length() <= 0) {
                String networkDevinfo2 = getNetworkDevinfo(37, PluginConstants.KEY_APP_ID, d.f7184h);
                this.f2949a = networkDevinfo2;
                if (networkDevinfo2 != null && networkDevinfo2.length() > 0) {
                    copyNetworkDevinfo(37, 22);
                    this.f2949a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f7184h);
                    SSDKLog.b().a("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
                }
            } else {
                copyNetworkDevinfo(23, 22);
                this.f2949a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f7184h);
                SSDKLog.b().a("Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0.", new Object[0]);
            }
        }
        String str2 = this.f2950b;
        if (str2 == null || str2.length() <= 0) {
            String networkDevinfo3 = getNetworkDevinfo(23, "app_secret", "AppSecret");
            this.f2950b = networkDevinfo3;
            if (networkDevinfo3 != null && networkDevinfo3.length() > 0) {
                copyNetworkDevinfo(23, 22);
                this.f2950b = getNetworkDevinfo("app_secret", "AppSecret");
                SSDKLog.b().a("Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0.", new Object[0]);
                return;
            }
            String networkDevinfo4 = getNetworkDevinfo(37, "app_secret", "AppSecret");
            this.f2950b = networkDevinfo4;
            if (networkDevinfo4 == null || networkDevinfo4.length() <= 0) {
                return;
            }
            copyNetworkDevinfo(37, 22);
            this.f2950b = getNetworkDevinfo("app_secret", "AppSecret");
            SSDKLog.b().a("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    public void subscribeAuth(Platform.ShareParams shareParams) {
        if (TextUtils.isEmpty(this.f2949a) || TextUtils.isEmpty(this.f2950b)) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 8, new Throwable("The params of appID or appSecret is missing !"));
                return;
            }
            return;
        }
        l lVarA = l.a();
        lVarA.c(this.f2949a);
        if (!this.isClientValid) {
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(this, 1, new WechatClientNotExistException());
                return;
            }
            return;
        }
        k kVar = new k(this);
        kVar.a(shareParams, this.listener);
        try {
            lVarA.b(kVar);
            PlatformActionListener platformActionListener3 = this.listener;
            if (platformActionListener3 != null) {
                platformActionListener3.onComplete(this, 9, null);
            }
            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "subscribeAuth start on Wechat");
        } catch (Throwable th) {
            PlatformActionListener platformActionListener4 = this.listener;
            if (platformActionListener4 != null) {
                platformActionListener4.onError(this, 1, th);
            }
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected void timeline(int i10, int i11, String str) {
        PlatformActionListener platformActionListener = this.listener;
        if (platformActionListener != null) {
            platformActionListener.onCancel(this, 7);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected void userInfor(String str) {
        if (TextUtils.isEmpty(this.f2949a) || TextUtils.isEmpty(this.f2950b)) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 8, new Throwable("The params of appID or appSecret is missing !"));
                return;
            }
            return;
        }
        if (this.needAuthCode) {
            String authCode = this.f2398db.getAuthCode();
            if (TextUtils.isEmpty(authCode)) {
                this.listener.onError(this, 8, new Throwable("code is empty"));
                return;
            }
            HashMap<String, Object> map = new HashMap<>();
            map.put("authCode", authCode);
            this.listener.onComplete(this, 8, map);
            return;
        }
        h hVar = new h(this, 22);
        hVar.a(this.f2949a, this.f2950b);
        try {
            hVar.a(this.listener);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(this, 8, th);
            }
        }
    }

    private boolean c() {
        if (TextUtils.isEmpty(getDb().get("refresh_token"))) {
            return false;
        }
        h hVar = new h(this, 22);
        hVar.a(this.f2949a, this.f2950b);
        return hVar.a();
    }
}
