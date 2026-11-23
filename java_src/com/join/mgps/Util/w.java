package com.join.mgps.Util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.onekeyshare.ShareContentCustomizeCallback;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.tencent.qq.utils.QQClientNotExistException;
import cn.sharesdk.tencent.qzone.QZone;
import cn.sharesdk.wechat.friends.Wechat;
import cn.sharesdk.wechat.moments.WechatMoments;
import cn.sharesdk.wechat.utils.WechatClientNotExistException;
import com.MApplication;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.ShareBeanMain;
import com.join.mgps.dto.SharePostRequest;
import com.join.mgps.service.CommonService_;
import java.io.File;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f50073a = "CommonUtil";

    class a implements ShareContentCustomizeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f50074a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50075b;

        a(final Context val$context, final String val$uid) {
            this.f50074a = val$context;
            this.f50075b = val$uid;
        }

        @Override // cn.sharesdk.onekeyshare.ShareContentCustomizeCallback
        public void onShare(Platform platform, Platform.ShareParams paramsToShare) {
            int i10;
            String str = SinaWeibo.NAME;
            if (str.equals(platform.getName())) {
                paramsToShare.setTitleUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
                paramsToShare.setText("海量免费经典游戏，深度手机定制优化，超爽联机体验！\n http://tuis.5fun.com/?aid=Nif7jk");
            }
            String str2 = QZone.NAME;
            if (str2.equals(platform.getName())) {
                paramsToShare.setTitleUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
                paramsToShare.setImageUrl(com.join.mgps.rpc.h.M + "/upload/images/wf_ico.png");
            }
            String str3 = Wechat.NAME;
            if (str3.equals(platform.getName())) {
                paramsToShare.setTitleUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
            }
            String str4 = WechatMoments.NAME;
            if (str4.equals(platform.getName())) {
                paramsToShare.setTitleUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
            }
            String str5 = QQ.NAME;
            if (str5.equals(platform.getName())) {
                paramsToShare.setTitleUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
            }
            if (platform.getName().equals(str3)) {
                i10 = 1;
            } else if (platform.getName().equals(str4)) {
                i10 = 2;
            } else if (platform.getName().equals(str5)) {
                i10 = 3;
            } else if (platform.getName().equals(str2)) {
                i10 = 4;
            } else {
                i10 = platform.getName().equals(str) ? 5 : -1;
            }
            MApplication.f3182z.O(true);
            com.papa.sim.statistic.t.l(this.f50074a).X1(this.f50075b, 1, i10, "0", "0");
        }
    }

    class b implements ShareContentCustomizeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ShareBean f50076a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f50077b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50078c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f50079d;

        b(final ShareBean val$shareBean, final Context val$context, final String val$uid, final int val$from) {
            this.f50076a = val$shareBean;
            this.f50077b = val$context;
            this.f50078c = val$uid;
            this.f50079d = val$from;
        }

        @Override // cn.sharesdk.onekeyshare.ShareContentCustomizeCallback
        public void onShare(Platform platform, Platform.ShareParams paramsToShare) {
            int i10;
            String str;
            String str2;
            String str3;
            String str4 = SinaWeibo.NAME;
            if (str4.equals(platform.getName())) {
                String weiboShareUrl = this.f50076a.getWeiboShareUrl();
                if (t2.i(weiboShareUrl)) {
                    if (weiboShareUrl.contains("?")) {
                        str3 = weiboShareUrl + "&t=" + System.currentTimeMillis();
                    } else {
                        str3 = weiboShareUrl + "?t=" + System.currentTimeMillis();
                    }
                    paramsToShare.setTitleUrl(str3);
                }
                paramsToShare.setText(this.f50076a.getText() + "\n" + this.f50076a.getWeiboShareUrl());
            }
            String str5 = QZone.NAME;
            if (str5.equals(platform.getName())) {
                String str6 = this.f50076a.getqZoneShareUrl();
                if (t2.i(str6)) {
                    if (str6.contains("?")) {
                        str2 = str6 + "&t=" + System.currentTimeMillis();
                    } else {
                        str2 = str6 + "?t=" + System.currentTimeMillis();
                    }
                    paramsToShare.setTitleUrl(str2);
                }
                String imageUrl = this.f50076a.getImageUrl();
                if (t2.i(imageUrl)) {
                    paramsToShare.setImageUrl(imageUrl);
                }
            }
            String str7 = QQ.NAME;
            if (str7.equals(platform.getName())) {
                String qqUrl = this.f50076a.getQqUrl();
                if (t2.i(qqUrl)) {
                    if (qqUrl.contains("?")) {
                        str = qqUrl + "&t=" + System.currentTimeMillis();
                    } else {
                        str = qqUrl + "?t=" + System.currentTimeMillis();
                    }
                    paramsToShare.setTitleUrl(str);
                }
            }
            if (platform.getName().equals(Wechat.NAME)) {
                i10 = 1;
            } else if (platform.getName().equals(WechatMoments.NAME)) {
                i10 = 2;
            } else if (platform.getName().equals(str7)) {
                i10 = 3;
            } else if (platform.getName().equals(str5)) {
                i10 = 4;
            } else {
                i10 = platform.getName().equals(str4) ? 5 : -1;
            }
            com.papa.sim.statistic.t.l(this.f50077b).X1(this.f50078c, this.f50079d, i10, this.f50076a.getGameId(), this.f50076a.getArticleId());
        }
    }

    class c implements ShareContentCustomizeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ShareBean f50080a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f50081b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50082c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f50083d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ShareContentCustomizeCallback f50084e;

        c(final ShareBean val$shareBean, final Context val$context, final String val$uid, final int val$from, final ShareContentCustomizeCallback val$callback) {
            this.f50080a = val$shareBean;
            this.f50081b = val$context;
            this.f50082c = val$uid;
            this.f50083d = val$from;
            this.f50084e = val$callback;
        }

        @Override // cn.sharesdk.onekeyshare.ShareContentCustomizeCallback
        public void onShare(Platform platform, Platform.ShareParams paramsToShare) {
            int i10;
            String str;
            String str2;
            String str3;
            String str4 = SinaWeibo.NAME;
            if (str4.equals(platform.getName())) {
                String weiboShareUrl = this.f50080a.getWeiboShareUrl();
                if (t2.i(weiboShareUrl)) {
                    if (weiboShareUrl.contains("?")) {
                        str3 = weiboShareUrl + "&t=" + System.currentTimeMillis();
                    } else {
                        str3 = weiboShareUrl + "?t=" + System.currentTimeMillis();
                    }
                    paramsToShare.setTitleUrl(str3);
                }
                paramsToShare.setText(this.f50080a.getText() + "\n" + this.f50080a.getWeiboShareUrl());
            }
            String str5 = QZone.NAME;
            if (str5.equals(platform.getName())) {
                String str6 = this.f50080a.getqZoneShareUrl();
                if (t2.i(str6)) {
                    if (str6.contains("?")) {
                        str2 = str6 + "&t=" + System.currentTimeMillis();
                    } else {
                        str2 = str6 + "?t=" + System.currentTimeMillis();
                    }
                    paramsToShare.setTitleUrl(str2);
                }
                String imageUrl = this.f50080a.getImageUrl();
                if (t2.i(imageUrl)) {
                    paramsToShare.setImageUrl(imageUrl);
                }
            }
            String str7 = QQ.NAME;
            if (str7.equals(platform.getName())) {
                String qqUrl = this.f50080a.getQqUrl();
                if (t2.i(qqUrl)) {
                    if (qqUrl.contains("?")) {
                        str = qqUrl + "&t=" + System.currentTimeMillis();
                    } else {
                        str = qqUrl + "?t=" + System.currentTimeMillis();
                    }
                    paramsToShare.setTitleUrl(str);
                }
            }
            if (platform.getName().equals(Wechat.NAME)) {
                i10 = 1;
            } else if (platform.getName().equals(WechatMoments.NAME)) {
                i10 = 2;
            } else if (platform.getName().equals(str7)) {
                i10 = 3;
            } else if (platform.getName().equals(str5)) {
                i10 = 4;
            } else {
                i10 = platform.getName().equals(str4) ? 5 : -1;
            }
            com.papa.sim.statistic.t.l(this.f50081b).X1(this.f50082c, this.f50083d, i10, this.f50080a.getGameId(), this.f50080a.getArticleId());
            ShareContentCustomizeCallback shareContentCustomizeCallback = this.f50084e;
            if (shareContentCustomizeCallback != null) {
                shareContentCustomizeCallback.onShare(platform, paramsToShare);
            }
        }
    }

    class d implements PlatformActionListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f50085b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50086c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f50087d;

        d(final Context val$context, final int val$from, final String val$url) {
            this.f50085b = val$context;
            this.f50086c = val$from;
            this.f50087d = val$url;
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onCancel(Platform platform, int i10) {
            w.e(this.f50085b, platform, this.f50086c, 1, this.f50087d, "");
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onComplete(Platform platform, int i10, HashMap<String, Object> hashMap) {
            w.e(this.f50085b, platform, this.f50086c, 2, this.f50087d, "");
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onError(Platform platform, int i10, Throwable throwable) {
            if (throwable != null) {
                if ((throwable instanceof QQClientNotExistException) || (!TextUtils.isEmpty(throwable.getMessage()) && throwable.getMessage().equals("QQClientNotExistException"))) {
                    org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.c0("目前您的QQ版本过低或未安装QQ，需要安装QQ才能使用"));
                } else if (throwable instanceof WechatClientNotExistException) {
                    org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.c0("目前您的微信版本过低或未安装微信，需要安装微信才能使用"));
                }
            }
            w.e(this.f50085b, platform, this.f50086c, 3, this.f50087d, "");
        }
    }

    class e implements PlatformActionListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f50088b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50089c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f50090d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f50091e;

        e(final Context val$context, final int val$from, final String val$url, final String val$gameid) {
            this.f50088b = val$context;
            this.f50089c = val$from;
            this.f50090d = val$url;
            this.f50091e = val$gameid;
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onCancel(Platform platform, int i10) {
            w.e(this.f50088b, platform, this.f50089c, 1, this.f50090d, this.f50091e);
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onComplete(Platform platform, int i10, HashMap<String, Object> hashMap) {
            w.e(this.f50088b, platform, this.f50089c, 2, this.f50090d, this.f50091e);
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onError(Platform platform, int i10, Throwable throwable) {
            if (throwable != null) {
                if ((throwable instanceof QQClientNotExistException) || (!TextUtils.isEmpty(throwable.getMessage()) && throwable.getMessage().equals("QQClientNotExistException"))) {
                    org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.c0("目前您的QQ版本过低或未安装QQ，需要安装QQ才能使用"));
                } else if (throwable instanceof WechatClientNotExistException) {
                    org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.c0("目前您的微信版本过低或未安装微信，需要安装微信才能使用"));
                }
            }
            w.e(this.f50088b, platform, this.f50089c, 3, this.f50090d, this.f50091e);
        }
    }

    private static void A(final Context context, String imageUrl, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setText("分享");
        shareParams.setImageUrl(imageUrl);
        Platform platform = ShareSDK.getPlatform(SinaWeibo.NAME);
        f(context, platform, from, imageUrl);
        platform.share(shareParams);
    }

    private static void B(final Context context, String message, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setText(message);
        Platform platform = ShareSDK.getPlatform(SinaWeibo.NAME);
        f(context, platform, from, message);
        platform.share(shareParams);
    }

    private static void C(final Context context, String imageUrl, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setImageUrl(imageUrl);
        Platform platform = ShareSDK.getPlatform(QZone.NAME);
        f(context, platform, from, imageUrl);
        platform.share(shareParams);
    }

    public static String b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String c(Context context, String mPackageName) {
        List<ApplicationInfo> installedApplications = context.getPackageManager().getInstalledApplications(8192);
        BigDecimal scale = null;
        for (int i10 = 0; i10 < installedApplications.size(); i10++) {
            ApplicationInfo applicationInfo = installedApplications.get(i10);
            if (applicationInfo.packageName.equals(mPackageName)) {
                scale = new BigDecimal(((double) Integer.valueOf((int) new File(applicationInfo.publicSourceDir).length()).intValue()) / 1048576.0d).setScale(2, 1);
            }
        }
        return scale + "";
    }

    public static String d(Context context) {
        try {
            return context.getString(R.string.version_name) + context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e10) {
            e10.printStackTrace();
            return context.getString(R.string.can_not_find_version_name);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static void e(final Context context, Platform platform, int from, int result, String url, String gameid) {
        int i10;
        String str;
        String uid = AccountUtil_.getInstance_(context).getUid();
        if (platform.getName().equals(Wechat.NAME)) {
            i10 = 1;
            str = "weixin";
        } else if (platform.getName().equals(WechatMoments.NAME)) {
            i10 = 2;
            str = "quan";
        } else if (platform.getName().equals(QQ.NAME)) {
            i10 = 3;
            str = "qq";
        } else if (platform.getName().equals(QZone.NAME)) {
            i10 = 4;
            str = "qzone";
        } else if (platform.getName().equals(SinaWeibo.NAME)) {
            i10 = 5;
            str = "weibo";
        } else {
            i10 = -1;
            str = "";
        }
        com.papa.sim.statistic.t.l(context).Y1(uid, from, i10, result);
        SharePostRequest sharePostRequest = new SharePostRequest();
        sharePostRequest.setUid(uid);
        sharePostRequest.setStatus(result);
        sharePostRequest.setShare_url(url);
        sharePostRequest.setRes_id(gameid);
        sharePostRequest.setRes_type(from);
        sharePostRequest.setShare_channel(str);
        ((CommonService_.n0) CommonService_.P2(context).extra("sharePostData", sharePostRequest)).a();
    }

    public static void f(final Context context, Platform platform, final int from, final String url) {
        if (platform == null) {
            return;
        }
        try {
            platform.setPlatformActionListener(new d(context, from, url));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void g(final Context context, OnekeyShare oks, final int from, final String url, final String gameid) {
        if (oks == null) {
            return;
        }
        try {
            oks.setCallback(new e(context, from, url, gameid));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void h(int level, TextView levelTv) {
        if (level < 5) {
            levelTv.setBackgroundResource(R.drawable.level_bg_tiffany);
        } else if (level < 10) {
            levelTv.setBackgroundResource(R.drawable.level_bg_yellow);
        } else {
            levelTv.setBackgroundResource(R.drawable.level_bg_orange);
        }
    }

    public static void i(final Context context) {
        String uid = AccountUtil_.getInstance_(context).getUid();
        OnekeyShare onekeyShare = new OnekeyShare();
        onekeyShare.disableSSOWhenAuthorize();
        onekeyShare.setTitle("太好啦，终于找到这个神器了");
        onekeyShare.setText("海量免费经典游戏，深度手机定制优化，超爽联机体验！");
        onekeyShare.setImageUrl(com.join.mgps.rpc.h.M + "/upload/images/wf_ico.png");
        onekeyShare.setUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
        onekeyShare.setComment("海量免费经典游戏，深度手机定制优化，超爽联机体验！");
        onekeyShare.setSite(context.getString(R.string.app_name));
        onekeyShare.setShareContentCustomizeCallback(new a(context, uid));
        g(context, onekeyShare, 1, "http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis(), "0");
        onekeyShare.show(context);
        com.papa.sim.statistic.t.l(context).f2(uid, 1);
    }

    public static void j(Context context, String imagePath, int from) {
        if (from == 0) {
            v(context, imagePath, from);
            return;
        }
        if (from == 1) {
            w(context, imagePath, from);
        } else if (from == 2) {
            l(context, imagePath, from);
        } else {
            if (from != 3) {
                return;
            }
            o(context, imagePath, from);
        }
    }

    private static void k(final Context context, String imageUrl, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setImageUrl(imageUrl);
        Platform platform = ShareSDK.getPlatform(QQ.NAME);
        f(context, platform, from, imageUrl);
        platform.share(shareParams);
    }

    public static void l(final Context context, String imageUrl, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setImagePath(imageUrl);
        Platform platform = ShareSDK.getPlatform(QQ.NAME);
        f(context, platform, from, imageUrl);
        platform.share(shareParams);
    }

    private static void m(final Context context, String message, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setText(message);
        Platform platform = ShareSDK.getPlatform(QQ.NAME);
        f(context, platform, from, message);
        platform.share(shareParams);
    }

    private static void n(final Context context, String message, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setText(message);
        shareParams.setTitle(message);
        Platform platform = ShareSDK.getPlatform(QZone.NAME);
        f(context, platform, from, message);
        platform.share(shareParams);
    }

    public static void o(final Context context, String imagePath, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setImagePath(imagePath);
        Platform platform = ShareSDK.getPlatform(QZone.NAME);
        f(context, platform, from, imagePath);
        platform.share(shareParams);
    }

    public static void p(Context context, int shareTo, ShareBean shareBean) {
        int i10;
        String uid = AccountUtil_.getInstance_(context).getUid();
        int from = shareBean != null ? shareBean.getFrom() : 0;
        if (shareTo == 0) {
            i10 = 1;
        } else if (shareTo == 1) {
            i10 = 2;
        } else if (shareTo == 2) {
            i10 = 3;
        } else if (shareTo == 3) {
            i10 = 4;
        } else {
            i10 = shareTo == 4 ? 5 : -1;
        }
        com.papa.sim.statistic.t.l(context).f2(uid, from);
        if (shareTo == 0) {
            HashMap map = new HashMap();
            map.put("Id", "4");
            map.put("SortId", "1");
            map.put(com.alipay.sdk.packet.d.f7184h, "wxf04635c4c318fe2d");
            map.put("AppSecret", "8e21d75298829047b830ac5034b7073c");
            map.put("BypassApproval", "false");
            map.put("Enable", "true");
            String str = Wechat.NAME;
            ShareSDK.setPlatformDevInfo(str, map);
            Platform.ShareParams shareParams = new Platform.ShareParams();
            shareParams.setShareType(4);
            shareParams.setTitle(shareBean.getTitle());
            shareParams.setText(shareBean.getText());
            shareParams.setImageUrl(shareBean.getImageUrl());
            shareParams.setUrl(shareBean.getWechatShareUrl());
            if (!TextUtils.isEmpty(shareBean.getImagePath())) {
                shareParams.setImagePath(shareBean.getImagePath());
            }
            Platform platform = ShareSDK.getPlatform(str);
            f(context, platform, from, shareBean.getWechatShareUrl());
            platform.share(shareParams);
            com.papa.sim.statistic.t.l(context).X1(uid, from, i10, shareBean.getGameId(), shareBean.getArticleId());
            return;
        }
        if (shareTo == 0) {
            Platform.ShareParams shareParams2 = new Platform.ShareParams();
            shareParams2.setShareType(4);
            shareParams2.setTitle(shareBean.getTitle());
            shareParams2.setText(shareBean.getText());
            shareParams2.setImageUrl(shareBean.getImageUrl());
            shareParams2.setUrl(shareBean.getWechatShareUrl());
            if (!TextUtils.isEmpty(shareBean.getImagePath())) {
                shareParams2.setImagePath(shareBean.getImagePath());
            }
            Platform platform2 = ShareSDK.getPlatform(Wechat.NAME);
            f(context, platform2, from, shareBean.getWechatShareUrl());
            platform2.share(shareParams2);
        } else if (shareTo == 1) {
            Platform.ShareParams shareParams3 = new Platform.ShareParams();
            shareParams3.setShareType(4);
            shareParams3.setTitle(shareBean.getTitle());
            shareParams3.setText(shareBean.getText());
            shareParams3.setImageUrl(shareBean.getImageUrl());
            shareParams3.setUrl(shareBean.getWechatFriendUrl());
            if (!TextUtils.isEmpty(shareBean.getImagePath())) {
                shareParams3.setImagePath(shareBean.getImagePath());
            }
            Platform platform3 = ShareSDK.getPlatform(WechatMoments.NAME);
            f(context, platform3, from, shareBean.getWechatFriendUrl());
            platform3.share(shareParams3);
        } else if (shareTo == 2) {
            Platform.ShareParams shareParams4 = new Platform.ShareParams();
            shareParams4.setTitle(shareBean.getTitle());
            shareParams4.setTitleUrl(shareBean.getQqUrl());
            shareParams4.setText(shareBean.getText());
            shareParams4.setImageUrl(shareBean.getImageUrl());
            shareParams4.setSite(com.join.android.app.mgsim.wufun.b.f35536i);
            if (!TextUtils.isEmpty(shareBean.getImagePath())) {
                shareParams4.setImagePath(shareBean.getImagePath());
            }
            Platform platform4 = ShareSDK.getPlatform(QQ.NAME);
            f(context, platform4, from, shareBean.getQqUrl());
            platform4.share(shareParams4);
        } else if (shareTo == 3) {
            Platform.ShareParams shareParams5 = new Platform.ShareParams();
            shareParams5.setTitle(shareBean.getTitle());
            shareParams5.setTitleUrl(shareBean.getqZoneShareUrl());
            shareParams5.setText(shareBean.getText());
            shareParams5.setImageUrl(shareBean.getImageUrl());
            shareParams5.setSite(com.join.android.app.mgsim.wufun.b.f35536i);
            if (!TextUtils.isEmpty(shareBean.getImagePath())) {
                shareParams5.setImagePath(shareBean.getImagePath());
            }
            Platform platform5 = ShareSDK.getPlatform(QZone.NAME);
            f(context, platform5, from, shareBean.getqZoneShareUrl());
            platform5.share(shareParams5);
        } else if (shareTo == 4) {
            Platform.ShareParams shareParams6 = new Platform.ShareParams();
            shareParams6.setText(shareBean.getText() + shareBean.getWeiboShareUrl());
            shareParams6.setImageUrl(shareBean.getImageUrl());
            Platform platform6 = ShareSDK.getPlatform(SinaWeibo.NAME);
            f(context, platform6, from, shareBean.getWeiboShareUrl());
            platform6.share(shareParams6);
        }
        com.papa.sim.statistic.t.l(context).X1(uid, from, i10, shareBean.getGameId(), shareBean.getArticleId());
    }

    public static void q(Context context, int shareTo, String message, int shareType, int from) {
        int i10;
        String uid = AccountUtil_.getInstance_(context).getUid();
        if (shareTo == 0) {
            i10 = 1;
        } else if (shareTo == 1) {
            i10 = 2;
        } else if (shareTo == 2) {
            i10 = 3;
        } else if (shareTo == 3) {
            i10 = 4;
        } else {
            i10 = shareTo == 4 ? 5 : -1;
        }
        if (shareType == 0) {
            try {
                ShareBean shareBean = (ShareBean) JsonMapper.getInstance().fromJson(message, ShareBean.class);
                shareBean.setFrom(from);
                p(context, shareTo, shareBean);
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (shareType == 1) {
            com.papa.sim.statistic.t.l(context).f2(uid, from);
            if (shareTo == 0) {
                z(context, message, from);
            } else if (shareTo == 1) {
                y(context, message, from);
            } else if (shareTo == 2) {
                m(context, message, from);
            } else if (shareTo == 3) {
                n(context, message, from);
            } else if (shareTo == 4) {
                B(context, message, from);
            }
            com.papa.sim.statistic.t.l(context).X1(uid, from, i10, "0", "0");
            return;
        }
        if (shareType != 2) {
            return;
        }
        com.papa.sim.statistic.t.l(context).f2(uid, from);
        if (shareTo == 0) {
            u(context, message, from);
        } else if (shareTo == 1) {
            x(context, message, from);
        } else if (shareTo == 2) {
            k(context, message, from);
        } else if (shareTo == 3) {
            C(context, message, from);
        } else if (shareTo == 4) {
            A(context, message, from);
        }
        com.papa.sim.statistic.t.l(context).X1(uid, from, i10, "0", "0");
    }

    public static void r(final Context context, final ShareBean shareBean) {
        try {
            String uid = AccountUtil_.getInstance_(context).getUid();
            int from = shareBean.getFrom();
            OnekeyShare onekeyShare = new OnekeyShare();
            onekeyShare.setTitle(shareBean.getTitle());
            onekeyShare.setText(shareBean.getText());
            onekeyShare.disableSSOWhenAuthorize();
            String imageUrl = shareBean.getImageUrl();
            if (t2.i(imageUrl)) {
                onekeyShare.setImageUrl(imageUrl);
            }
            String wechatShareUrl = shareBean.getWechatShareUrl();
            if (t2.i(wechatShareUrl)) {
                if (wechatShareUrl.contains("?")) {
                    wechatShareUrl = wechatShareUrl + "&t=" + System.currentTimeMillis();
                } else {
                    wechatShareUrl = wechatShareUrl + "?t=" + System.currentTimeMillis();
                }
                onekeyShare.setUrl(wechatShareUrl);
            }
            onekeyShare.setComment(shareBean.getText());
            onekeyShare.setSite(context.getString(R.string.app_name));
            onekeyShare.setShareContentCustomizeCallback(new b(shareBean, context, uid, from));
            g(context, onekeyShare, from, wechatShareUrl, shareBean.getGameId());
            onekeyShare.show(context);
            com.papa.sim.statistic.t.l(context).f2(uid, from);
        } catch (Exception e10) {
            e10.printStackTrace();
            a3.b(context).d("分享失败。");
        }
    }

    public static void s(Context context, String json, int from) {
        try {
            ShareBean share = ((ShareBeanMain) JsonMapper.getInstance().fromJson(json, ShareBeanMain.class)).getShare();
            if (share != null) {
                share.setFrom(from);
                share.toString();
            }
            r(context, share);
        } catch (Exception e10) {
            e10.printStackTrace();
            a3.b(context).d("分享失败。");
        }
    }

    public static void t(final Context context, final ShareBean shareBean, final ShareContentCustomizeCallback callback) {
        try {
            String uid = AccountUtil_.getInstance_(context).getUid();
            int from = shareBean.getFrom();
            OnekeyShare onekeyShare = new OnekeyShare();
            onekeyShare.disableSSOWhenAuthorize();
            onekeyShare.setTitle(shareBean.getTitle());
            onekeyShare.setText(shareBean.getText());
            String imageUrl = shareBean.getImageUrl();
            if (t2.i(imageUrl)) {
                onekeyShare.setImageUrl(imageUrl);
            }
            String wechatShareUrl = shareBean.getWechatShareUrl();
            if (t2.i(wechatShareUrl)) {
                if (wechatShareUrl.contains("?")) {
                    wechatShareUrl = wechatShareUrl + "&t=" + System.currentTimeMillis();
                } else {
                    wechatShareUrl = wechatShareUrl + "?t=" + System.currentTimeMillis();
                }
                onekeyShare.setUrl(wechatShareUrl);
            }
            onekeyShare.setComment(shareBean.getText());
            onekeyShare.setSite(context.getString(R.string.app_name));
            onekeyShare.setShareContentCustomizeCallback(new c(shareBean, context, uid, from, callback));
            g(context, onekeyShare, from, wechatShareUrl, shareBean.getGameId());
            onekeyShare.show(context);
            com.papa.sim.statistic.t.l(context).f2(uid, from);
        } catch (Exception e10) {
            e10.printStackTrace();
            a3.b(context).d("分享失败。");
        }
    }

    private static void u(final Context context, String imageUrl, final int from) {
        HashMap map = new HashMap();
        map.put("Id", "4");
        map.put("SortId", "1");
        map.put(com.alipay.sdk.packet.d.f7184h, "wxf04635c4c318fe2d");
        map.put("AppSecret", "8e21d75298829047b830ac5034b7073c");
        map.put("BypassApproval", "false");
        map.put("Enable", "true");
        String str = Wechat.NAME;
        ShareSDK.setPlatformDevInfo(str, map);
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setTitle("分享");
        shareParams.setImageUrl(imageUrl);
        Platform platform = ShareSDK.getPlatform(str);
        f(context, platform, from, imageUrl);
        platform.share(shareParams);
    }

    public static void v(final Context context, String imagePath, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setImagePath(imagePath);
        Platform platform = ShareSDK.getPlatform(Wechat.NAME);
        f(context, platform, from, imagePath);
        platform.share(shareParams);
    }

    public static void w(final Context context, String imagePath, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setImagePath(imagePath);
        shareParams.setShareType(2);
        Platform platform = ShareSDK.getPlatform(WechatMoments.NAME);
        f(context, platform, from, imagePath);
        platform.share(shareParams);
    }

    private static void x(final Context context, String imageUrl, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setTitle("分享");
        shareParams.setImageUrl(imageUrl);
        Platform platform = ShareSDK.getPlatform(WechatMoments.NAME);
        f(context, platform, from, imageUrl);
        platform.share(shareParams);
    }

    private static void y(final Context context, String message, final int from) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(1);
        shareParams.setTitle("分享");
        shareParams.setText(message);
        Platform platform = ShareSDK.getPlatform(WechatMoments.NAME);
        f(context, platform, from, message);
        platform.share(shareParams);
    }

    private static void z(final Context context, String message, final int from) {
        HashMap map = new HashMap();
        map.put("Id", "4");
        map.put("SortId", "1");
        map.put(com.alipay.sdk.packet.d.f7184h, "wxf04635c4c318fe2d");
        map.put("AppSecret", "8e21d75298829047b830ac5034b7073c");
        map.put("BypassApproval", "false");
        map.put("Enable", "true");
        String str = Wechat.NAME;
        ShareSDK.setPlatformDevInfo(str, map);
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(1);
        shareParams.setTitle("分享");
        shareParams.setText(message);
        Platform platform = ShareSDK.getPlatform(str);
        f(context, platform, from, message);
        platform.share(shareParams);
    }
}
