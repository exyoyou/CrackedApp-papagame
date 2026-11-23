package cn.sharesdk.wechat.moments;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.a.b.j;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.wechat.utils.WechatClientNotExistException;
import cn.sharesdk.wechat.utils.WechatTimelineNotSupportedException;
import cn.sharesdk.wechat.utils.h;
import cn.sharesdk.wechat.utils.k;
import cn.sharesdk.wechat.utils.l;
import com.alipay.sdk.packet.d;
import com.byazt.nys.PluginConstants;
import com.join.mgps.activity.QuarkDownGameActivity_;
import io.netty.handler.codec.http.cookie.CookieHeaderNames;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class WechatMoments extends Platform {
    public static final String NAME = "WechatMoments";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2959c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2960d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2961e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2962f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f2963g;

    @Override // cn.sharesdk.framework.Platform
    protected boolean checkAuthorize(int i10, Object obj) {
        l lVarA = l.a();
        lVarA.c(this.f2957a);
        if (!this.isClientValid) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, i10, new WechatClientNotExistException());
            }
            return false;
        }
        if (!lVarA.b()) {
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(this, 1, new WechatTimelineNotSupportedException());
            }
            return false;
        }
        if (i10 == 9 || isAuthValid() || c()) {
            return true;
        }
        innerAuthorize(i10, obj);
        return false;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doAuthorize(String[] strArr) {
        if (TextUtils.isEmpty(this.f2957a) || TextUtils.isEmpty(this.f2958b)) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 8, new Throwable("The params of appID or appSecret is missing !"));
                return;
            }
            return;
        }
        l lVarA = l.a();
        lVarA.c(this.f2957a);
        if (!this.isClientValid) {
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(this, 1, new WechatClientNotExistException());
                return;
            }
            return;
        }
        if (!lVarA.b()) {
            PlatformActionListener platformActionListener3 = this.listener;
            if (platformActionListener3 != null) {
                platformActionListener3.onError(this, 1, new WechatTimelineNotSupportedException());
                return;
            }
            return;
        }
        h hVar = new h(this, 23);
        hVar.a(this.f2957a, this.f2958b);
        k kVar = new k(this);
        kVar.a(hVar);
        kVar.a(new AuthorizeListener() { // from class: cn.sharesdk.wechat.moments.WechatMoments.1
            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onCancel() {
                if (((Platform) WechatMoments.this).listener != null) {
                    ((Platform) WechatMoments.this).listener.onCancel(WechatMoments.this, 1);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onComplete(Bundle bundle) {
                WechatMoments.this.afterRegister(1, null);
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onError(Throwable th) {
                if (((Platform) WechatMoments.this).listener != null) {
                    ((Platform) WechatMoments.this).listener.onError(WechatMoments.this, 1, th);
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
    protected void doShare(final Platform.ShareParams shareParams) {
        SSDKLog.b().a("WechatMoments start Share with Appid:" + this.f2957a + "appSecret:" + this.f2958b, new Object[0]);
        SSDKLog sSDKLogB = SSDKLog.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("WechatMoments ShareParams:");
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
        shareParams.set("scene", 1);
        l lVarA = l.a();
        this.f2961e = TextUtils.isEmpty(shareParams.getWxPath()) ? this.f2961e : shareParams.getWxPath();
        this.f2960d = TextUtils.isEmpty(shareParams.getWxUserName()) ? this.f2960d : shareParams.getWxUserName();
        this.f2962f = !shareParams.toMap().containsKey("wxWithShareTicket") ? this.f2962f : shareParams.getWxWithShareTicket();
        this.f2963g = !shareParams.toMap().containsKey("wxMiniProgramType") ? this.f2963g : shareParams.getWxMiniProgramType();
        lVarA.a(this.f2961e);
        lVarA.b(this.f2960d);
        lVarA.a(this.f2962f);
        lVarA.a(this.f2963g);
        lVarA.c(this.f2957a);
        k kVar = new k(this);
        if (this.f2959c) {
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
            lVarA.a(new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.wechat.moments.WechatMoments.2
                @Override // cn.sharesdk.framework.ShareSDKCallback
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void onCallback(Boolean bool) {
                    if (!bool.booleanValue() || ((Platform) WechatMoments.this).listener == null) {
                        return;
                    }
                    HashMap<String, Object> map = new HashMap<>();
                    map.put("ShareParams", shareParams);
                    if (((Platform) WechatMoments.this).listener != null) {
                        ((Platform) WechatMoments.this).listener.onComplete(WechatMoments.this, 9, map);
                    }
                }
            });
        } catch (Throwable th2) {
            PlatformActionListener platformActionListener3 = this.listener;
            if (platformActionListener3 != null) {
                platformActionListener3.onError(this, 9, th2);
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
        return 23;
    }

    @Override // cn.sharesdk.framework.Platform
    public int getVersion() {
        return 1;
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean hasShareCallback() {
        return !this.f2959c;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void initDevInfo(String str) {
        this.f2957a = getDevinfo(d.f7184h);
        this.f2958b = getDevinfo("AppSecret");
        this.f2959c = "true".equals(getDevinfo("BypassApproval"));
        this.f2960d = TextUtils.isEmpty(getDevinfo("UserName")) ? getDevinfo("userName") : getDevinfo("UserName");
        this.f2961e = TextUtils.isEmpty(getDevinfo(CookieHeaderNames.PATH)) ? getDevinfo("path") : getDevinfo(CookieHeaderNames.PATH);
        this.f2962f = "true".equals(getDevinfo("WithShareTicket"));
        try {
            this.f2963g = Integer.valueOf(getDevinfo("MiniprogramType")).intValue();
        } catch (Throwable unused) {
            this.f2963g = 0;
        }
        String str2 = this.f2957a;
        if (str2 == null || str2.length() <= 0) {
            this.f2957a = getDevinfo("Wechat", d.f7184h);
            this.f2959c = "true".equals(getDevinfo("Wechat", "BypassApproval"));
            String str3 = this.f2957a;
            if (str3 == null || str3.length() <= 0) {
                String devinfo = getDevinfo("WechatFavorite", d.f7184h);
                this.f2957a = devinfo;
                if (devinfo == null || devinfo.length() <= 0) {
                    return;
                }
                copyDevinfo("WechatFavorite", NAME);
                this.f2957a = getDevinfo(d.f7184h);
                SSDKLog.b().a("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
                return;
            }
            copyDevinfo("Wechat", NAME);
            this.f2957a = getDevinfo(d.f7184h);
            this.f2959c = "true".equals(getDevinfo("BypassApproval"));
            this.f2960d = TextUtils.isEmpty(getDevinfo("UserName")) ? getDevinfo("userName") : getDevinfo("UserName");
            this.f2961e = TextUtils.isEmpty(getDevinfo(CookieHeaderNames.PATH)) ? getDevinfo("path") : getDevinfo(CookieHeaderNames.PATH);
            this.f2962f = "true".equals(getDevinfo("WithShareTicket"));
            try {
                this.f2963g = Integer.valueOf(getDevinfo("MiniprogramType")).intValue();
            } catch (Throwable unused2) {
                this.f2963g = 0;
            }
            SSDKLog.b().a("Try to use the dev info of Wechat, this will cause Id and SortId field are always 0.", new Object[0]);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    public void isClientValid(ShareSDKCallback<Boolean> shareSDKCallback) {
        try {
            l lVarA = l.a();
            lVarA.c(this.f2957a);
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
        this.f2957a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f7184h);
        this.f2958b = getNetworkDevinfo("app_secret", "AppSecret");
        String str = this.f2957a;
        if (str == null || str.length() <= 0) {
            String networkDevinfo = getNetworkDevinfo(22, PluginConstants.KEY_APP_ID, d.f7184h);
            this.f2957a = networkDevinfo;
            if (networkDevinfo == null || networkDevinfo.length() <= 0) {
                String networkDevinfo2 = getNetworkDevinfo(37, PluginConstants.KEY_APP_ID, d.f7184h);
                this.f2957a = networkDevinfo2;
                if (networkDevinfo2 != null && networkDevinfo2.length() > 0) {
                    copyNetworkDevinfo(23, 23);
                    this.f2957a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f7184h);
                    SSDKLog.b().a("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
                }
            } else {
                copyNetworkDevinfo(22, 23);
                this.f2957a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f7184h);
                SSDKLog.b().a("Try to use the dev info of Wechat, this will cause Id and SortId field are always 0.", new Object[0]);
            }
        }
        String str2 = this.f2958b;
        if (str2 == null || str2.length() <= 0) {
            String networkDevinfo3 = getNetworkDevinfo(22, "app_secret", "AppSecret");
            this.f2958b = networkDevinfo3;
            if (networkDevinfo3 != null && networkDevinfo3.length() > 0) {
                copyNetworkDevinfo(22, 23);
                this.f2958b = getNetworkDevinfo("app_secret", "AppSecret");
                SSDKLog.b().a("Try to use the dev info of Wechat, this will cause Id and SortId field are always 0.", new Object[0]);
                return;
            }
            String networkDevinfo4 = getNetworkDevinfo(37, "app_secret", "AppSecret");
            this.f2958b = networkDevinfo4;
            if (networkDevinfo4 == null || networkDevinfo4.length() <= 0) {
                return;
            }
            copyNetworkDevinfo(23, 23);
            this.f2958b = getNetworkDevinfo("app_secret", "AppSecret");
            SSDKLog.b().a("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
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
        if (TextUtils.isEmpty(this.f2957a) || TextUtils.isEmpty(this.f2958b)) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 8, new Throwable("The params of appID or appSecret is missing !"));
                return;
            }
            return;
        }
        h hVar = new h(this, 23);
        hVar.a(this.f2957a, this.f2958b);
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
        h hVar = new h(this, 23);
        hVar.a(this.f2957a, this.f2958b);
        return hVar.a();
    }
}
