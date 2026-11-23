package cn.sharesdk.tencent.qzone;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.a.b.j;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.g;
import cn.sharesdk.tencent.qzone.utils.QQClientNotExistException;
import cn.sharesdk.tencent.qzone.utils.b;
import com.alipay.sdk.packet.d;
import com.byazt.nys.PluginConstants;
import com.mob.MobSDK;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class QZone extends Platform {
    public static final String NAME = "QZone";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2885b;

    @Override // cn.sharesdk.framework.Platform
    protected boolean checkAuthorize(int i10, Object obj) {
        b bVarA = b.a(this);
        if (this.isClientValid && this.f2885b && i10 == 9) {
            return true;
        }
        if (!isAuthValid() && i10 != 9) {
            innerAuthorize(i10, obj);
            return false;
        }
        bVarA.a(this.f2884a);
        bVarA.b(this.f2398db.getUserId());
        bVarA.c(this.f2398db.getToken());
        return true;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doAuthorize(String[] strArr) {
        final b bVarA = b.a(this);
        bVarA.a(this.f2884a);
        bVarA.a(strArr);
        bVarA.a(new AuthorizeListener() { // from class: cn.sharesdk.tencent.qzone.QZone.1
            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onCancel() {
                if (((Platform) QZone.this).listener != null) {
                    ((Platform) QZone.this).listener.onCancel(QZone.this, 1);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onComplete(Bundle bundle) {
                String string = bundle.getString("open_id");
                String string2 = bundle.getString("access_token");
                String string3 = bundle.getString("expires_in");
                ((Platform) QZone.this).f2398db.putToken(string2);
                ((Platform) QZone.this).f2398db.putTokenSecret("");
                try {
                    ((Platform) QZone.this).f2398db.putExpiresIn(ResHelper.parseLong(string3));
                } catch (Throwable th) {
                    SSDKLog.b().a(th);
                }
                ((Platform) QZone.this).f2398db.putUserId(string);
                String string4 = bundle.getString("pf");
                String string5 = bundle.getString("pfkey");
                String string6 = bundle.getString("pay_token");
                ((Platform) QZone.this).f2398db.put("pf", string4);
                ((Platform) QZone.this).f2398db.put("pfkey", string5);
                ((Platform) QZone.this).f2398db.put("pay_token", string6);
                bVarA.b(string);
                bVarA.c(string2);
                bVarA.a();
                QZone.this.afterRegister(1, null);
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onError(Throwable th) {
                if (((Platform) QZone.this).listener != null) {
                    ((Platform) QZone.this).listener.onError(QZone.this, 1, th);
                }
            }
        }, isSSODisable());
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doCustomerProtocol(String str, String str2, int i10, HashMap<String, Object> map, HashMap<String, String> map2) {
        HashMap<String, Object> mapA = b.a(this).a(str, str2, map, map2);
        if (mapA == null || mapA.size() <= 0) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, i10, new Throwable());
                return;
            }
            return;
        }
        if (!mapA.containsKey("ret")) {
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(this, i10, new Throwable());
                return;
            }
            return;
        }
        if (((Integer) mapA.get("ret")).intValue() != 0) {
            if (this.listener != null) {
                this.listener.onError(this, i10, new Throwable(new Hashon().fromHashMap(mapA)));
                return;
            }
            return;
        }
        PlatformActionListener platformActionListener3 = this.listener;
        if (platformActionListener3 != null) {
            platformActionListener3.onComplete(this, i10, mapA);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doShare(Platform.ShareParams shareParams) {
        b.a(this);
        SSDKLog.b().a("QZone start Share with Appid:" + this.f2884a + "bypassApproval:" + this.f2885b, new Object[0]);
        SSDKLog sSDKLogB = SSDKLog.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("QZone ShareParams:");
        sb2.append(shareParams.toString());
        sSDKLogB.a(sb2.toString(), new Object[0]);
        if (!this.isClientValid || !this.f2885b) {
            if (shareParams.isShareTencentWeibo()) {
                b(shareParams);
                return;
            } else {
                c(shareParams);
                return;
            }
        }
        try {
            a(shareParams);
        } catch (Throwable th) {
            if (this.listener != null) {
                this.listener.onError(this, 9, th);
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
        aVar.f2563b = shareParams.getText();
        String imageUrl = shareParams.getImageUrl();
        String imagePath = shareParams.getImagePath();
        if (imagePath != null) {
            aVar.f2566e.add(imagePath);
        } else if (map.get("large_url") != null) {
            aVar.f2565d.add(String.valueOf(map.get("large_url")));
        } else if (map.get("small_url") != null) {
            aVar.f2565d.add(String.valueOf(map.get("small_url")));
        } else if (imageUrl != null) {
            aVar.f2565d.add(imageUrl);
        }
        String titleUrl = shareParams.getTitleUrl();
        if (titleUrl != null) {
            aVar.f2564c.add(titleUrl);
        }
        HashMap<String, Object> map2 = new HashMap<>();
        map2.put("title", shareParams.getTitle());
        map2.put("titleUrl", shareParams.getTitleUrl());
        map2.put("site", shareParams.getSite());
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
        return 6;
    }

    @Override // cn.sharesdk.framework.Platform
    public int getVersion() {
        return 2;
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean hasShareCallback() {
        return true;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void initDevInfo(String str) {
        this.f2884a = getDevinfo(d.f7184h);
        this.f2885b = "true".equals(getDevinfo("BypassApproval"));
        String str2 = this.f2884a;
        if (str2 == null || str2.length() <= 0) {
            String devinfo = getDevinfo("QQ", d.f7184h);
            this.f2884a = devinfo;
            if (devinfo == null || devinfo.length() <= 0) {
                return;
            }
            copyDevinfo("QQ", NAME);
            this.f2884a = getDevinfo(d.f7184h);
            SSDKLog.b().a("Try to use the dev info of QQ, this will cause Id and SortId field are always 0.", new Object[0]);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    public void isClientValid(ShareSDKCallback<Boolean> shareSDKCallback) {
        try {
            b bVarA = b.a(this);
            bVarA.a(this.f2884a);
            bVarA.a(shareSDKCallback);
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
        this.f2884a = networkDevinfo;
        if (networkDevinfo == null || networkDevinfo.length() <= 0) {
            String networkDevinfo2 = getNetworkDevinfo(24, PluginConstants.KEY_APP_ID, d.f7184h);
            this.f2884a = networkDevinfo2;
            if (networkDevinfo2 == null || networkDevinfo2.length() <= 0) {
                return;
            }
            copyNetworkDevinfo(24, 6);
            this.f2884a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f7184h);
            SSDKLog.b().a("Try to use the dev info of QQ, this will cause Id and SortId field are always 0.", new Object[0]);
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
            HashMap<String, Object> mapD = b.a(this).d(str);
            if (mapD != null && mapD.size() > 0) {
                if (!mapD.containsKey("ret")) {
                    PlatformActionListener platformActionListener2 = this.listener;
                    if (platformActionListener2 != null) {
                        platformActionListener2.onError(this, 8, new Throwable());
                        return;
                    }
                    return;
                }
                if (((Integer) mapD.get("ret")).intValue() != 0) {
                    if (this.listener != null) {
                        this.listener.onError(this, 8, new Throwable(new Hashon().fromHashMap(mapD)));
                        return;
                    }
                    return;
                }
                if (str == this.f2398db.getUserId()) {
                    this.f2398db.put("nickname", String.valueOf(mapD.get("nickname")));
                    if (mapD.containsKey("figureurl_qq_2")) {
                        this.f2398db.put("iconQQ", String.valueOf(mapD.get("figureurl_qq_2")));
                    } else if (mapD.containsKey("figureurl_qq_1")) {
                        this.f2398db.put("iconQQ", String.valueOf(mapD.get("figureurl_qq_1")));
                    }
                    if (mapD.containsKey("figureurl_2")) {
                        this.f2398db.put("icon", String.valueOf(mapD.get("figureurl_2")));
                    } else if (mapD.containsKey("figureurl_1")) {
                        this.f2398db.put("icon", String.valueOf(mapD.get("figureurl_1")));
                    } else if (mapD.containsKey("figureurl")) {
                        this.f2398db.put("icon", String.valueOf(mapD.get("figureurl")));
                    }
                    this.f2398db.put("secretType", String.valueOf(mapD.get("is_yellow_vip")));
                    if (String.valueOf(mapD.get("is_yellow_vip")).equals("1")) {
                        this.f2398db.put("snsUserLevel", String.valueOf(mapD.get("level")));
                    }
                    String strValueOf = String.valueOf(mapD.get("gender"));
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
                        mapD.put("userTags", this.f2398db.get("userTags"));
                    }
                    this.listener.onComplete(this, 8, mapD);
                    return;
                }
                return;
            }
            PlatformActionListener platformActionListener3 = this.listener;
            if (platformActionListener3 != null) {
                platformActionListener3.onError(this, 8, new Throwable());
            }
        } catch (Throwable th) {
            PlatformActionListener platformActionListener4 = this.listener;
            if (platformActionListener4 != null) {
                platformActionListener4.onError(this, 8, th);
            }
        }
    }

    private void b(final Platform.ShareParams shareParams) {
        String imageUrl = shareParams.getImageUrl();
        final String imagePath = shareParams.getImagePath();
        final boolean zIsShareTencentWeibo = shareParams.isShareTencentWeibo();
        try {
            if (TextUtils.isEmpty(imagePath) && !TextUtils.isEmpty(imageUrl)) {
                shareParams.setImagePath(BitmapHelper.downloadBitmap(MobSDK.getContext(), imageUrl));
                doShare(shareParams);
                return;
            }
            if (!isAuthValid()) {
                final PlatformActionListener platformActionListener = getPlatformActionListener();
                setPlatformActionListener(new PlatformActionListener() { // from class: cn.sharesdk.tencent.qzone.QZone.2
                    @Override // cn.sharesdk.framework.PlatformActionListener
                    public void onCancel(Platform platform, int i10) {
                        PlatformActionListener platformActionListener2 = platformActionListener;
                        if (platformActionListener2 != null) {
                            platformActionListener2.onCancel(platform, 9);
                        }
                    }

                    @Override // cn.sharesdk.framework.PlatformActionListener
                    public void onComplete(Platform platform, int i10, HashMap<String, Object> map) {
                        QZone.this.setPlatformActionListener(platformActionListener);
                        QZone.this.doShare(shareParams);
                    }

                    @Override // cn.sharesdk.framework.PlatformActionListener
                    public void onError(Platform platform, int i10, Throwable th) {
                        PlatformActionListener platformActionListener2 = platformActionListener;
                        if (platformActionListener2 != null) {
                            platformActionListener2.onError(platform, 9, th);
                        }
                    }
                });
                authorize();
                return;
            }
            String text = shareParams.getText();
            if (!TextUtils.isEmpty(text)) {
                getShortLintk(text, false, new ShareSDKCallback<String>() { // from class: cn.sharesdk.tencent.qzone.QZone.3
                    @Override // cn.sharesdk.framework.ShareSDKCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onCallback(String str) {
                        try {
                            shareParams.setText(str);
                            b bVarA = b.a(QZone.this);
                            HashMap<String, Object> mapB = zIsShareTencentWeibo ? bVarA.b(imagePath, str) : bVarA.a(imagePath, str);
                            if (mapB == null && ((Platform) QZone.this).listener != null) {
                                ((Platform) QZone.this).listener.onError(QZone.this, 9, new Throwable("response is empty"));
                            }
                            mapB.put("ShareParams", shareParams);
                            if (((Platform) QZone.this).listener != null) {
                                ((Platform) QZone.this).listener.onComplete(QZone.this, 9, mapB);
                            }
                        } catch (Throwable th) {
                            if (((Platform) QZone.this).listener != null) {
                                ((Platform) QZone.this).listener.onError(QZone.this, 9, th);
                            }
                        }
                    }
                });
                return;
            }
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(this, 9, new Throwable("share params' value of text is empty!"));
            }
        } catch (Throwable th) {
            PlatformActionListener platformActionListener3 = this.listener;
            if (platformActionListener3 != null) {
                platformActionListener3.onError(this, 9, th);
            }
        }
    }

    private void c(final Platform.ShareParams shareParams) {
        try {
            String imageUrl = shareParams.getImageUrl();
            String imagePath = shareParams.getImagePath();
            if (!this.isClientValid) {
                PlatformActionListener platformActionListener = this.listener;
                if (platformActionListener != null) {
                    platformActionListener.onError(this, 9, new QQClientNotExistException());
                    return;
                }
                return;
            }
            String str = (TextUtils.isEmpty(imagePath) || !new File(imagePath).exists()) ? imageUrl : imagePath;
            String title = shareParams.getTitle();
            String titleUrl = shareParams.getTitleUrl();
            String site = shareParams.getSite();
            String text = shareParams.getText();
            String filePath = shareParams.getFilePath();
            String[] imageArray = shareParams.getImageArray();
            int shareType = shareParams.getShareType();
            String qQMiniProgramAppid = shareParams.getQQMiniProgramAppid();
            String qQMiniProgramPath = shareParams.getQQMiniProgramPath();
            String qQMiniProgramType = shareParams.getQQMiniProgramType();
            String imageUrl2 = shareParams.getImageUrl();
            b bVarA = b.a(this);
            bVarA.a(shareParams.isDisableNewTask());
            PlatformActionListener platformActionListener2 = new PlatformActionListener() { // from class: cn.sharesdk.tencent.qzone.QZone.4
                @Override // cn.sharesdk.framework.PlatformActionListener
                public void onCancel(Platform platform, int i10) {
                    if (((Platform) QZone.this).listener != null) {
                        ((Platform) QZone.this).listener.onCancel(QZone.this, 9);
                    }
                }

                @Override // cn.sharesdk.framework.PlatformActionListener
                public void onComplete(Platform platform, int i10, HashMap<String, Object> map) {
                    if (((Platform) QZone.this).listener != null) {
                        map.put("ShareParams", shareParams);
                        ((Platform) QZone.this).listener.onComplete(QZone.this, 9, map);
                    }
                }

                @Override // cn.sharesdk.framework.PlatformActionListener
                public void onError(Platform platform, int i10, Throwable th) {
                    if (((Platform) QZone.this).listener != null) {
                        ((Platform) QZone.this).listener.onError(QZone.this, 9, th);
                    }
                }
            };
            if (imagePath != null || str != null || imageArray == null) {
                bVarA.a(shareType, title, titleUrl, text, str, site, filePath, qQMiniProgramAppid, qQMiniProgramPath, qQMiniProgramType, imageUrl2, platformActionListener2);
                return;
            }
            if (imageArray.length != 0) {
                bVarA.a(imageArray, platformActionListener2);
                return;
            }
            PlatformActionListener platformActionListener3 = this.listener;
            if (platformActionListener3 != null) {
                platformActionListener3.onError(this, 9, new Throwable("imageArray is Empty"));
            }
        } catch (Throwable th) {
            PlatformActionListener platformActionListener4 = this.listener;
            if (platformActionListener4 != null) {
                platformActionListener4.onError(this, 9, th);
            }
        }
    }

    private void a(Platform.ShareParams shareParams) throws Throwable {
        g gVar = new g();
        gVar.a("com.qzone", "com.qzonex.module.operation.ui.QZonePublishMoodActivity");
        gVar.a(shareParams, this);
        HashMap<String, Object> map = new HashMap<>();
        map.put("ShareParams", shareParams);
        this.listener.onComplete(this, 9, map);
    }
}
