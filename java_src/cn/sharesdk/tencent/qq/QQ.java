package cn.sharesdk.tencent.qq;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.a.b.j;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.k;
import cn.sharesdk.onekeyshare.OnekeyShare;
import com.alipay.sdk.packet.d;
import com.byazt.nys.PluginConstants;
import com.mob.MobSDK;
import com.mob.tools.utils.DH;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class QQ extends Platform {
    public static final String NAME = "QQ";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2814a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2817d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f2818e = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2815b = true;

    @Override // cn.sharesdk.framework.Platform
    protected boolean checkAuthorize(int i10, Object obj) {
        cn.sharesdk.tencent.qq.utils.a aVarA = cn.sharesdk.tencent.qq.utils.a.a(this);
        if (this.isClientValid && this.f2816c && i10 == 9) {
            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "QQ checkAuthorize qq.isQQInstalled() return true ");
            return true;
        }
        if (!isAuthValid() && (i10 != 9 || obj == null || !(obj instanceof Platform.ShareParams) || ((Platform.ShareParams) obj).isShareTencentWeibo())) {
            innerAuthorize(i10, obj);
            return false;
        }
        aVarA.a(this.f2814a);
        aVarA.b(this.f2398db.getUserId());
        aVarA.d(this.f2398db.getToken());
        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "QQ checkAuthorize isAuthValid return true ");
        return true;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doAuthorize(String[] strArr) {
        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "QQ doAuthorize ");
        SSDKLog.b().a("QQ start Authorize with Appid:" + this.f2814a, new Object[0]);
        final cn.sharesdk.tencent.qq.utils.a aVarA = cn.sharesdk.tencent.qq.utils.a.a(this);
        aVarA.a(this.f2814a);
        aVarA.a(strArr);
        aVarA.a(new AuthorizeListener() { // from class: cn.sharesdk.tencent.qq.QQ.1
            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onCancel() {
                if (((Platform) QQ.this).listener != null) {
                    ((Platform) QQ.this).listener.onCancel(QQ.this, 1);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onComplete(Bundle bundle) {
                String string = bundle.getString("open_id");
                String string2 = bundle.getString("access_token");
                String string3 = bundle.getString("expires_in");
                ((Platform) QQ.this).f2398db.putToken(string2);
                ((Platform) QQ.this).f2398db.putTokenSecret("");
                try {
                    ((Platform) QQ.this).f2398db.putExpiresIn(ResHelper.parseLong(string3));
                } catch (Throwable th) {
                    SSDKLog.b().b(th);
                }
                ((Platform) QQ.this).f2398db.putUserId(string);
                String string4 = bundle.getString("pf");
                String string5 = bundle.getString("pfkey");
                String string6 = bundle.getString("pay_token");
                ((Platform) QQ.this).f2398db.put("pf", string4);
                ((Platform) QQ.this).f2398db.put("pfkey", string5);
                ((Platform) QQ.this).f2398db.put("pay_token", string6);
                aVarA.b(string);
                aVarA.d(string2);
                aVarA.a();
                QQ.this.afterRegister(1, null);
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onError(Throwable th) {
                if (((Platform) QQ.this).listener != null) {
                    ((Platform) QQ.this).listener.onError(QQ.this, 1, th);
                }
            }
        }, isSSODisable());
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
        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ doShare ");
        SSDKLog.b().a("QQ start Share with Appid:" + this.f2814a, new Object[0]);
        SSDKLog.b().a("QQ ShareParams:" + shareParams.toString(), new Object[0]);
        final cn.sharesdk.tencent.qq.utils.a aVarA = cn.sharesdk.tencent.qq.utils.a.a(this);
        if (this.f2816c && this.isClientValid) {
            try {
                aVarA.a(this, shareParams, this.listener);
                SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ byPassShare ");
                return;
            } catch (Throwable th) {
                PlatformActionListener platformActionListener = this.listener;
                if (platformActionListener != null) {
                    platformActionListener.onError(this, 9, th);
                }
                SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ doShare catch: " + th);
                return;
            }
        }
        final String title = shareParams.getTitle();
        final String text = shareParams.getText();
        final String imagePath = shareParams.getImagePath();
        final String imageUrl = shareParams.getImageUrl();
        final String musicUrl = shareParams.getMusicUrl();
        String titleUrl = shareParams.getTitleUrl();
        if (TextUtils.isEmpty(titleUrl)) {
            titleUrl = shareParams.getUrl();
        }
        String str = titleUrl;
        final boolean zIsShareTencentWeibo = shareParams.isShareTencentWeibo();
        final int hidden = shareParams.getHidden();
        final String qQMiniProgramAppid = shareParams.getQQMiniProgramAppid();
        final String qQMiniProgramPath = shareParams.getQQMiniProgramPath();
        final String qQMiniProgramType = shareParams.getQQMiniProgramType();
        final int shareType = shareParams.getShareType();
        if (TextUtils.isEmpty(title) && TextUtils.isEmpty(text) && TextUtils.isEmpty(imagePath) && TextUtils.isEmpty(imageUrl) && TextUtils.isEmpty(musicUrl) && TextUtils.isEmpty(qQMiniProgramAppid)) {
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(this, 9, new Throwable("qq share must have one param at least"));
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str)) {
            a(aVarA, title, str, text, imagePath, imageUrl, musicUrl, zIsShareTencentWeibo, hidden, qQMiniProgramAppid, qQMiniProgramPath, qQMiniProgramType, shareType, shareParams);
        } else {
            getShortLintk(str, false, new ShareSDKCallback<String>() { // from class: cn.sharesdk.tencent.qq.QQ.2
                @Override // cn.sharesdk.framework.ShareSDKCallback
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void onCallback(String str2) {
                    shareParams.setTitleUrl(str2);
                    QQ.this.a(aVarA, title, str2, text, imagePath, imageUrl, musicUrl, zIsShareTencentWeibo, hidden, qQMiniProgramAppid, qQMiniProgramPath, qQMiniProgramType, shareType, shareParams);
                }
            });
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> filterFriendshipInfo(int i10, HashMap<String, Object> map) {
        return null;
    }

    @Override // cn.sharesdk.framework.Platform
    protected j.a filterShareContent(Platform.ShareParams shareParams, HashMap<String, Object> map) {
        j.a aVar = new j.a();
        String titleUrl = shareParams.getTitleUrl();
        aVar.f2564c.add(titleUrl);
        aVar.f2562a = this.f2814a;
        String text = shareParams.getText();
        if (!TextUtils.isEmpty(text)) {
            aVar.f2563b = text;
        }
        String imageUrl = shareParams.getImageUrl();
        String imagePath = shareParams.getImagePath();
        if (!TextUtils.isEmpty(imagePath)) {
            aVar.f2566e.add(imagePath);
        } else if (!TextUtils.isEmpty(imageUrl)) {
            aVar.f2565d.add(imageUrl);
        }
        HashMap<String, Object> map2 = new HashMap<>();
        map2.put("title", shareParams.getTitle());
        map2.put("url", titleUrl);
        map2.put("imageLocalUrl", imagePath);
        map2.put("summary", text);
        k.a(new k.a() { // from class: cn.sharesdk.tencent.qq.QQ.4
            @Override // cn.sharesdk.framework.utils.k.a
            public void a() throws Throwable {
                DH.requester(MobSDK.getContext()).getAppName().request(new DH.DHResponder() { // from class: cn.sharesdk.tencent.qq.QQ.4.1
                    @Override // com.mob.tools.utils.DH.DHResponder
                    public void onResponse(DH.DHResponse dHResponse) {
                        try {
                            synchronized (QQ.this.f2818e) {
                                try {
                                    QQ.this.f2817d = dHResponse.getAppName();
                                    QQ.this.f2818e.notifyAll();
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            SSDKLog.b().a(th2);
                        }
                    }
                });
            }
        });
        synchronized (this.f2818e) {
            try {
                this.f2818e.wait(1000L);
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        map2.put("appName", this.f2817d);
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
        return 24;
    }

    @Override // cn.sharesdk.framework.Platform
    public int getVersion() {
        return 2;
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean hasShareCallback() {
        return this.f2815b;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void initDevInfo(String str) {
        this.f2814a = getDevinfo(d.f7184h);
        this.f2816c = "true".equals(getDevinfo("BypassApproval"));
        String str2 = this.f2814a;
        if (str2 == null || str2.length() <= 0) {
            String devinfo = getDevinfo("QZone", d.f7184h);
            this.f2814a = devinfo;
            if (devinfo == null || devinfo.length() <= 0) {
                return;
            }
            copyDevinfo("QZone", NAME);
            this.f2814a = getDevinfo(d.f7184h);
            SSDKLog.b().a("Try to use the dev info of QZone, this will cause Id and SortId field are always 0.", new Object[0]);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    public void isClientValid(ShareSDKCallback<Boolean> shareSDKCallback) {
        try {
            cn.sharesdk.tencent.qq.utils.a aVarA = cn.sharesdk.tencent.qq.utils.a.a(this);
            aVarA.a(this.f2814a);
            aVarA.a(shareSDKCallback);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            if (shareSDKCallback != null) {
                shareSDKCallback.onCallback(Boolean.FALSE);
            }
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected void setNetworkDevinfo() {
        String networkDevinfo = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f7184h);
        this.f2814a = networkDevinfo;
        if (networkDevinfo == null || networkDevinfo.length() <= 0) {
            String networkDevinfo2 = getNetworkDevinfo(6, PluginConstants.KEY_APP_ID, d.f7184h);
            this.f2814a = networkDevinfo2;
            if (networkDevinfo2 == null || networkDevinfo2.length() <= 0) {
                return;
            }
            copyNetworkDevinfo(6, 24);
            this.f2814a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f7184h);
            SSDKLog.b().a("Try to use the dev info of QZone, this will cause Id and SortId field are always 0.", new Object[0]);
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
    protected String uploadImageToFileServer(String str) {
        return super.uploadImageToFileServer(str);
    }

    @Override // cn.sharesdk.framework.Platform
    protected void userInfor(String str) {
        if (str == null || str.length() < 0) {
            str = this.f2398db.getUserId();
        }
        if (str == null || str.length() < 0) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 8, new RuntimeException("qq account is null"));
                return;
            }
            return;
        }
        try {
            HashMap<String, Object> mapE = cn.sharesdk.tencent.qq.utils.a.a(this).e(str);
            if (mapE != null && mapE.size() > 0) {
                if (!mapE.containsKey("ret")) {
                    PlatformActionListener platformActionListener2 = this.listener;
                    if (platformActionListener2 != null) {
                        platformActionListener2.onError(this, 8, new Throwable("QQ userInfo no ret"));
                        return;
                    }
                    return;
                }
                if (((Integer) mapE.get("ret")).intValue() != 0) {
                    if (this.listener != null) {
                        this.listener.onError(this, 8, new Throwable(new Hashon().fromHashMap(mapE)));
                        return;
                    }
                    return;
                }
                if (str == this.f2398db.getUserId()) {
                    this.f2398db.put("nickname", String.valueOf(mapE.get("nickname")));
                    if (mapE.containsKey("figureurl_qq_2")) {
                        this.f2398db.put("icon", String.valueOf(mapE.get("figureurl_qq_2")));
                    } else if (mapE.containsKey("figureurl_qq_1")) {
                        this.f2398db.put("icon", String.valueOf(mapE.get("figureurl_qq_1")));
                    }
                    if (mapE.containsKey("figureurl_2")) {
                        this.f2398db.put("iconQzone", String.valueOf(mapE.get("figureurl_2")));
                    } else if (mapE.containsKey("figureurl_1")) {
                        this.f2398db.put("iconQzone", String.valueOf(mapE.get("figureurl_1")));
                    } else if (mapE.containsKey("figureurl")) {
                        this.f2398db.put("iconQzone", String.valueOf(mapE.get("figureurl")));
                    }
                    this.f2398db.put("secretType", String.valueOf(mapE.get("is_yellow_vip")));
                    if (String.valueOf(mapE.get("is_yellow_vip")).equals("1")) {
                        this.f2398db.put("snsUserLevel", String.valueOf(mapE.get("level")));
                    }
                    String strValueOf = String.valueOf(mapE.get("gender"));
                    int stringRes = ResHelper.getStringRes(MobSDK.getContext(), "ssdk_gender_male");
                    int stringRes2 = ResHelper.getStringRes(MobSDK.getContext(), "ssdk_gender_female");
                    if (strValueOf.equals(MobSDK.getContext().getString(stringRes))) {
                        this.f2398db.put("gender", "0");
                    } else if (strValueOf.equals(MobSDK.getContext().getString(stringRes2))) {
                        this.f2398db.put("gender", "1");
                    } else {
                        this.f2398db.put("gender", "2");
                    }
                }
                if (this.listener != null) {
                    if (this.f2398db.get("userTags") != null) {
                        mapE.put("userTags", this.f2398db.get("userTags"));
                    }
                    this.listener.onComplete(this, 8, mapE);
                    return;
                }
                return;
            }
            PlatformActionListener platformActionListener3 = this.listener;
            if (platformActionListener3 != null) {
                platformActionListener3.onError(this, 8, new Throwable("QQ userInfo null"));
            }
        } catch (Throwable th) {
            PlatformActionListener platformActionListener4 = this.listener;
            if (platformActionListener4 != null) {
                platformActionListener4.onError(this, 8, th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(cn.sharesdk.tencent.qq.utils.a aVar, String str, String str2, String str3, String str4, String str5, String str6, boolean z10, int i10, String str7, String str8, String str9, int i11, final Platform.ShareParams shareParams) {
        try {
            aVar.a(str, str2, str3, str4, str5, str6, new PlatformActionListener() { // from class: cn.sharesdk.tencent.qq.QQ.3
                @Override // cn.sharesdk.framework.PlatformActionListener
                public void onCancel(Platform platform, int i12) {
                    if (((Platform) QQ.this).listener != null) {
                        ((Platform) QQ.this).listener.onCancel(QQ.this, 9);
                    }
                }

                @Override // cn.sharesdk.framework.PlatformActionListener
                public void onComplete(Platform platform, int i12, HashMap<String, Object> map) {
                    HashMap<String, Object> map2 = new HashMap<>();
                    map2.put("ShareParams", shareParams);
                    if (((Platform) QQ.this).listener != null) {
                        ((Platform) QQ.this).listener.onComplete(QQ.this, 9, map2);
                    }
                }

                @Override // cn.sharesdk.framework.PlatformActionListener
                public void onError(Platform platform, int i12, Throwable th) {
                    if (((Platform) QQ.this).listener != null) {
                        ((Platform) QQ.this).listener.onError(QQ.this, 9, th);
                    }
                }
            }, z10, i10, str7, str8, str9, i11, this.isClientValid);
        } catch (Throwable th) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 9, th);
            }
        }
    }
}
