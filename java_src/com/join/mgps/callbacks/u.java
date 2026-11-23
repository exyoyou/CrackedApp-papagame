package com.join.mgps.callbacks;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.webkit.JavascriptInterface;
import androidx.annotation.Nullable;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.StartGameMeta;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.r0;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w0;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.db.tables.H5GameAccountDataTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.dto.WebAccountDataBean;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.wrapper.UserPrefs;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.umeng.commonsdk.UMConfigure;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes3.dex */
public abstract class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<Activity> f64152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f64153b = 0;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntentUtil.getInstance().goCodesBoxActivity((Context) u.this.f64152a.get());
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntentUtil.getInstance().goDownloadCenterActivity((Context) u.this.f64152a.get());
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f64156b;

        c(final String val$message) {
            this.f64156b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            a3.b((Context) u.this.f64152a.get()).d(this.f64156b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntentUtil.getInstance().goMYAccountDetialActivity((Context) u.this.f64152a.get());
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntentUtil.getInstance().goForumProfileMessageActivity((Context) u.this.f64152a.get());
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f64160b;

        f(final String val$json) {
            this.f64160b = val$json;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (t2.h(this.f64160b)) {
                    return;
                }
                StartGameMeta startGameMeta = (StartGameMeta) JsonMapper.getInstance().fromJson(this.f64160b, StartGameMeta.class);
                Intent intent = new Intent();
                intent.addFlags(8388608);
                intent.setComponent(new ComponentName(startGameMeta.getPackageName(), startGameMeta.getActivityName()));
                String uid = AccountUtil_.getInstance_((Context) u.this.f64152a.get()).getUid();
                intent.putExtra("uid", uid);
                startGameMeta.setUserID(uid);
                startGameMeta.setPa_package_name(((Activity) u.this.f64152a.get()).getPackageName());
                intent.putExtra("jsonData", JsonMapper.getInstance().toJson(startGameMeta));
                intent.setAction("android.intent.action.VIEW");
                try {
                    ((Activity) u.this.f64152a.get()).startActivity(intent);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f64162b;

        g(final String val$qqNumber) {
            this.f64162b = val$qqNumber;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                IntentUtil.getInstance().goQQGroup((Context) u.this.f64152a.get(), this.f64162b);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f64164b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f64165c;

        h(final String val$action, final String val$id) {
            this.f64164b = val$action;
            this.f64165c = val$id;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.papa.sim.statistic.t.l((Context) u.this.f64152a.get()).p(this.f64164b, this.f64165c, AccountUtil_.getInstance_((Context) u.this.f64152a.get()).getUid());
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f64167b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f64168c;

        i(final String val$action, final String val$id) {
            this.f64167b = val$action;
            this.f64168c = val$id;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.papa.sim.statistic.t.l((Context) u.this.f64152a.get()).p(this.f64167b, this.f64168c, AccountUtil_.getInstance_((Context) u.this.f64152a.get()).getUid());
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f64170b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f64171c;

        j(final String val$gid, final String val$cheatID) {
            this.f64170b = val$gid;
            this.f64171c = val$cheatID;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadTask downloadTaskG;
            boolean z10;
            try {
                List<DownloadTask> listJ = q5.f.M().J(this.f64170b);
                if (listJ == null || listJ.size() <= 0) {
                    downloadTaskG = null;
                } else {
                    String crc_link_type_val = "";
                    String crc_link_type_val2 = "";
                    boolean z11 = false;
                    loop0: while (true) {
                        z10 = false;
                        for (DownloadTask downloadTask : listJ) {
                            if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                                crc_link_type_val = downloadTask.getCrc_link_type_val();
                                z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                            } else {
                                crc_link_type_val2 = downloadTask.getCrc_link_type_val();
                                if (com.join.android.app.common.utils.g.t0((Context) u.this.f64152a.get()).e((Context) u.this.f64152a.get(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                                    z10 = true;
                                }
                            }
                        }
                        break loop0;
                    }
                    if ((z11 && z10) || z11) {
                        downloadTaskG = q5.f.M().G(crc_link_type_val);
                    } else if (z10 || (downloadTaskG = q5.f.M().G(crc_link_type_val)) == null) {
                        downloadTaskG = q5.f.M().G(crc_link_type_val2);
                    }
                }
                if (downloadTaskG == null) {
                    return;
                }
                if ("login".equals(this.f64171c)) {
                    UtilsMy.p4((Context) u.this.f64152a.get(), downloadTaskG, this.f64171c);
                } else {
                    UtilsMy.k4((Context) u.this.f64152a.get(), downloadTaskG);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f64173b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f64174c;

        k(final String val$json, final int val$shareTo) {
            this.f64173b = val$json;
            this.f64174c = val$shareTo;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareBean shareBean = (ShareBean) JsonMapper.getInstance().fromJson(this.f64173b, ShareBean.class);
            shareBean.setFrom(5);
            com.join.mgps.Util.w.p((Context) u.this.f64152a.get(), this.f64174c, shareBean);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f64176b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f64177c;

        l(final String val$videoUrl, final String val$imageUrl) {
            this.f64176b = val$videoUrl;
            this.f64177c = val$imageUrl;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
            videoInfo.H(this.f64176b);
            videoInfo.C(this.f64177c);
            FullScreenActivity_.intent((Context) u.this.f64152a.get()).a(videoInfo).start();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f64179b;

        m(final String val$qqNumber) {
            this.f64179b = val$qqNumber;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((Activity) u.this.f64152a.get()).startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + this.f64179b + "&version=1")));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f64181b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f64182c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f64183d;

        n(final int val$shareTo, final String val$message, final int val$shareType) {
            this.f64181b = val$shareTo;
            this.f64182c = val$message;
            this.f64183d = val$shareType;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.join.mgps.Util.w.q((Context) u.this.f64152a.get(), this.f64181b, this.f64182c, this.f64183d, 5);
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntentUtil.getInstance().goAccountCenterActivity((Context) u.this.f64152a.get());
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntentUtil.getInstance().goJoystickManager((Context) u.this.f64152a.get());
        }
    }

    public u(Activity target) {
        this.f64152a = new WeakReference<>(target);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit d(String str) {
        com.join.android.app.common.utils.g.t0(this.f64152a.get()).z(this.f64152a.get(), new File(str));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit e(String str) {
        com.join.android.app.common.utils.g.t0(this.f64152a.get()).z(this.f64152a.get(), new File(str));
        return null;
    }

    private void f(Runnable runnable) {
        if (this.f64152a.get() != null) {
            this.f64152a.get().runOnUiThread(runnable);
        }
    }

    @JavascriptInterface
    public abstract void alipay(String data);

    @JavascriptInterface
    public void changeAccount(String accountJson) {
        try {
            AccountUtil_.getInstance_(this.f64152a.get()).saveAccountData(g8.a.a((AccountBean) JsonMapper.getInstance().fromJson(accountJson, AccountBean.class)), this.f64152a.get());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @JavascriptInterface
    public int channelType() {
        return 1;
    }

    @JavascriptInterface
    public boolean checkAppHasInstall(String packageName) {
        try {
            return com.join.android.app.common.utils.g.t0(this.f64152a.get()).e(this.f64152a.get(), packageName);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @JavascriptInterface
    public String checkAppInfo(String packageName) {
        APKUtils.a aVarN;
        try {
            aVarN = com.join.android.app.common.utils.g.t0(this.f64152a.get()).n(this.f64152a.get(), packageName);
        } catch (Exception e10) {
            e10.printStackTrace();
            aVarN = null;
        }
        return JsonMapper.getInstance().toJson(aVarN);
    }

    @JavascriptInterface
    public int checkLiveRes() {
        return 0;
    }

    @JavascriptInterface
    public int checkNetWork() {
        return com.join.android.app.common.utils.m.j(this.f64152a.get()) ? 1 : 0;
    }

    @JavascriptInterface
    public String checkWufunPapaPlatform() {
        return "wufun";
    }

    @JavascriptInterface
    public abstract void checkin(final boolean success);

    @JavascriptInterface
    public void copyToClipboard(final String text) {
        if (t2.i(text)) {
            r0.M(this.f64152a.get(), text);
            a3.b(this.f64152a.get()).d("复制成功！");
        }
    }

    @JavascriptInterface
    public abstract void creatVipOrder(final int orderType);

    @JavascriptInterface
    public void downloadApkGameByUrl(String appUrl, String appName, String appIconUrl, String packageName) {
        if (System.currentTimeMillis() - this.f64153b < 1000) {
            return;
        }
        this.f64153b = System.currentTimeMillis();
        List<DownloadTask> listI = q5.f.M().I(packageName);
        if (listI == null || listI.size() <= 0) {
            DownloadTask downloadTask = new DownloadTask();
            downloadTask.setUrl(appUrl);
            downloadTask.setShowName(appName);
            downloadTask.setPackageName(packageName);
            downloadTask.setPlugin_num("46");
            downloadTask.setDtype(Dtype.android.name());
            downloadTask.setPortraitURL(appIconUrl);
            ArrayList arrayList = new ArrayList();
            TipBean tipBean = new TipBean();
            tipBean.setId("7");
            tipBean.setName("网游");
            tipBean.setColor("#8dbbec");
            arrayList.add(tipBean);
            downloadTask.setTips(JsonMapper.toJsonString(arrayList));
            TipNew tipNew = new TipNew();
            TipBean tipBean2 = new TipBean();
            tipBean2.setName("安卓");
            tipBean2.setColor("#f47500");
            tipBean2.setId("7");
            tipNew.setModel(tipBean2);
            TipBean tipBean3 = new TipBean();
            tipBean3.setName("外部");
            tipBean3.setColor("#f47500");
            tipBean3.setId("1024");
            tipNew.setModel(tipBean2);
            tipNew.setOut_game(tipBean3);
            downloadTask.setSp_tag_info(tipNew);
            downloadTask.setCrc_link_type_val(System.currentTimeMillis() + "");
            com.php25.PDownload.d.c(downloadTask, this.f64152a.get());
            com.papa.sim.statistic.t.l(this.f64152a.get()).R1(Event.tencentArena, new Ext().setReMarks(appName));
        }
    }

    @JavascriptInterface
    public void downloadFile(String url, String fileName) {
        UtilsMy.S0(this.f64152a.get(), url, fileName);
    }

    @JavascriptInterface
    public void downloadGame(String downloadTaskJson) {
        com.php25.PDownload.d.c((DownloadTask) JsonMapper.getInstance().fromJson(downloadTaskJson, DownloadTask.class), this.f64152a.get());
    }

    @JavascriptInterface
    public abstract void downloadGameByGameId(String gameId);

    @JavascriptInterface
    public abstract void downloadGameByGameIdAndFrom(String gameId, int from);

    @JavascriptInterface
    public abstract void downloadGameByGameIdAndUrl(String gameId, String gameurl);

    @JavascriptInterface
    public abstract void downloadGameByGameIdIfNoGame(String gameId);

    @JavascriptInterface
    public abstract void downloadGameByGameIdWithExt(String gameId, String extStr);

    @JavascriptInterface
    public String findAllGames() {
        List<DownloadTask> listD = q5.f.M().d();
        if (listD == null || listD.size() <= 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<DownloadTask> it2 = listD.iterator();
        while (it2.hasNext()) {
            stringBuffer.append("," + it2.next().getCrc_link_type_val());
        }
        return stringBuffer.toString().replaceFirst(",", "");
    }

    @JavascriptInterface
    public int gameProgress(String gameId) {
        try {
            return (int) q5.f.M().G(gameId).getProgress();
        } catch (Exception unused) {
            return 0;
        }
    }

    @JavascriptInterface
    public abstract void getAccount();

    @JavascriptInterface
    public String getAccountVer2() {
        WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
        UserInfo accountData = AccountUtil_.getInstance_(this.f64152a.get()).getAccountData();
        if (accountData != null) {
            webAccountDataBean.setAccountBean(AccountBean.convert(accountData));
            webAccountDataBean.setHasLogin(true);
        } else {
            webAccountDataBean.setHasLogin(false);
        }
        JsonMapper.getInstance().toJson(webAccountDataBean);
        return JsonMapper.getInstance().toJson(webAccountDataBean);
    }

    @JavascriptInterface
    public String getAllH5game() {
        List<DownloadTask> listT = q5.f.M().t();
        if (listT == null) {
            return JsonMapper.getInstance().toJson(new ArrayList());
        }
        ArrayList arrayList = new ArrayList();
        Iterator<DownloadTask> it2 = listT.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getCrc_link_type_val());
        }
        return JsonMapper.getInstance().toJson(arrayList);
    }

    @JavascriptInterface
    public String getAndroidId() {
        return com.join.android.app.common.utils.q.n(this.f64152a.get()).e(this.f64152a.get());
    }

    @JavascriptInterface
    public String getAndroidVersion() {
        return com.join.android.app.common.utils.q.n(this.f64152a.get()).s();
    }

    @JavascriptInterface
    public String getAppversionName() {
        return com.join.android.app.common.utils.q.n(this.f64152a.get()).A();
    }

    @JavascriptInterface
    public String getData(final String appkey) {
        List<H5GameAccountDataTable> listN = t6.w.o().n(appkey);
        if (listN == null) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<H5GameAccountDataTable> it2 = listN.iterator();
        while (it2.hasNext()) {
            arrayList.add((AccountBean) JsonMapper.getInstance().fromJson(it2.next().getAccount_data(), AccountBean.class));
        }
        return JsonMapper.getInstance().toJson(arrayList);
    }

    @JavascriptInterface
    public String getDeviceId() {
        return com.papa.sim.statistic.u.f(this.f64152a.get()).b();
    }

    @JavascriptInterface
    public abstract String getFrom();

    @JavascriptInterface
    public String getGameName() {
        try {
            return this.f64152a.get().getResources().getString(R.string.app_name);
        } catch (Exception unused) {
            return "";
        }
    }

    @JavascriptInterface
    public String getIMEI() {
        return com.papa.sim.statistic.u.f(this.f64152a.get()).b();
    }

    @JavascriptInterface
    public int getNavigationBarHeight() {
        return 0;
    }

    @JavascriptInterface
    public String getNetHeaders() {
        return com.join.mgps.pref.h.n(this.f64152a.get()).B();
    }

    @JavascriptInterface
    public int getNowVersion() {
        return com.join.android.app.common.utils.q.n(this.f64152a.get()).z();
    }

    @JavascriptInterface
    public String getOaid() {
        return com.papa.sim.statistic.u.f(this.f64152a.get()).j();
    }

    @JavascriptInterface
    public String getPackageName() {
        return this.f64152a.get().getPackageName();
    }

    @JavascriptInterface
    public abstract String getPapaUIDAndToken();

    @JavascriptInterface
    public String getParentExtBean() {
        return "";
    }

    @JavascriptInterface
    public String getPhoneModle() {
        return com.join.android.app.common.utils.q.n(this.f64152a.get()).q();
    }

    @JavascriptInterface
    public String getQdId() {
        return com.papa.sim.statistic.m.a(this.f64152a.get());
    }

    @JavascriptInterface
    public int getScreenOrientation() {
        if (this.f64152a.get() != null) {
            return this.f64152a.get().getRequestedOrientation();
        }
        return 1;
    }

    @JavascriptInterface
    public abstract String getSdkIntentData();

    @JavascriptInterface
    public String getSdkIntentData(String appKey) {
        return this.f64152a.get().getSharedPreferences("Papa_Stat_SharedPreferences", 0).getString("papasdk_" + appKey, "");
    }

    @JavascriptInterface
    public int getSingleGameADCount() {
        return new UserPrefs(this.f64152a.get()).getAdGamesHasSeeCount();
    }

    @JavascriptInterface
    public int getStatusBarHeight() {
        return 0;
    }

    @JavascriptInterface
    public String getStringByKey(String saveKey) {
        return this.f64152a.get().getSharedPreferences("Papa_Stat_SharedPreferences", 0).getString("papaH5_" + saveKey, "");
    }

    @JavascriptInterface
    public String getUMIDString() {
        try {
            return UMConfigure.getUMIDString(this.f64152a.get());
        } catch (Exception unused) {
            return "";
        }
    }

    @JavascriptInterface
    public String getVendor() {
        return com.join.android.app.common.utils.q.n(this.f64152a.get()).y();
    }

    @JavascriptInterface
    public void goAccountCenter() {
        f(new o());
    }

    @JavascriptInterface
    public void goAccountDetial() {
        f(new d());
    }

    @JavascriptInterface
    public abstract void goBackUrl(final String url);

    @JavascriptInterface
    public abstract void goChoiceUploadImage();

    @JavascriptInterface
    public void goCodesBoxActivity() {
        f(new a());
    }

    @JavascriptInterface
    public void goDownloadCenter() {
        f(new b());
    }

    @JavascriptInterface
    public void goGameDetail(String gid) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(gid);
        intentDateBean.setExtBean(new ExtBean(120));
        IntentUtil.getInstance().intentActivity(this.f64152a.get(), intentDateBean);
    }

    @JavascriptInterface
    public void goHandShark() {
        f(new p());
    }

    @JavascriptInterface
    public abstract void goMainLabel(final String tag_id);

    @JavascriptInterface
    public abstract void goMainLabel(final String tag_id, final String fid, final String fname);

    @JavascriptInterface
    public void goProfileMessage() {
        f(new e());
    }

    @JavascriptInterface
    public void goQQGroup(final String qqNumber) {
        this.f64152a.get().runOnUiThread(new g(qqNumber));
    }

    @JavascriptInterface
    public abstract void goSearchLabel();

    @JavascriptInterface
    public void goStartLive() {
    }

    @JavascriptInterface
    public int inquiryGameStatus(String gid) {
        DownloadTask downloadTaskG;
        boolean z10;
        List<DownloadTask> listJ = q5.f.M().J(gid);
        if (listJ == null || listJ.size() <= 0) {
            downloadTaskG = null;
        } else {
            String crc_link_type_val = "";
            String crc_link_type_val2 = "";
            boolean z11 = false;
            loop0: while (true) {
                z10 = false;
                for (DownloadTask downloadTask : listJ) {
                    if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                        crc_link_type_val = downloadTask.getCrc_link_type_val();
                        z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                    } else {
                        crc_link_type_val2 = downloadTask.getCrc_link_type_val();
                        if (com.join.android.app.common.utils.g.t0(this.f64152a.get()).e(this.f64152a.get(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                }
                break loop0;
            }
            if ((z11 && z10) || z11) {
                downloadTaskG = q5.f.M().G(crc_link_type_val);
            } else if (z10 || (downloadTaskG = q5.f.M().G(crc_link_type_val)) == null) {
                downloadTaskG = q5.f.M().G(crc_link_type_val2);
            }
        }
        if (downloadTaskG == null) {
            return -1;
        }
        return downloadTaskG.getStatus();
    }

    @JavascriptInterface
    public int inquiryGameStatusByPackage(String packageName) {
        List<DownloadTask> listI = q5.f.M().I(packageName);
        if (listI == null || listI.size() <= 0) {
            return -1;
        }
        return listI.get(0).getStatus();
    }

    @JavascriptInterface
    public int instalApk(String gameId) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null || !Dtype.android.name().equals(downloadTaskG.getFileType())) {
            return -1;
        }
        APKUtils.s0(downloadTaskG.getGameZipPath(), downloadTaskG, new Function1() { // from class: com.join.mgps.callbacks.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f64150b.d((String) obj);
            }
        });
        return 1;
    }

    @JavascriptInterface
    public int instalApkByPackageName(String packagename) {
        List<DownloadTask> listI = q5.f.M().I(packagename);
        if (listI == null || listI.size() <= 0) {
            return 1;
        }
        DownloadTask downloadTask = listI.get(0);
        APKUtils.s0(downloadTask.getGameZipPath(), downloadTask, new Function1() { // from class: com.join.mgps.callbacks.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f64151b.e((String) obj);
            }
        });
        return 1;
    }

    @JavascriptInterface
    public void intentQQ(final String qqNumber) {
        f(new m(qqNumber));
    }

    @JavascriptInterface
    public abstract void intentToCompletAccount();

    @JavascriptInterface
    public boolean isRunningCloud() {
        return w0.n();
    }

    @JavascriptInterface
    public void joinAction(final String action, final String id2) {
        f(new i(action, id2));
    }

    @JavascriptInterface
    public abstract void jumpGameMatch(String roomId);

    @JavascriptInterface
    public abstract void launchMiniProgram(int location, String abUid, String url);

    @JavascriptInterface
    public void liveIntentTo(int type) {
    }

    @JavascriptInterface
    public abstract void login();

    @JavascriptInterface
    public abstract void onEvent(int event, @Nullable String jsonParams);

    @JavascriptInterface
    public void onStartPay(final String json) {
    }

    @JavascriptInterface
    public void openAction(final String action, final String id2) {
        f(new h(action, id2));
    }

    @JavascriptInterface
    public void openWeb(String url) {
        IntentUtil.getInstance().goShareWebActivity(this.f64152a.get(), url);
    }

    @JavascriptInterface
    public abstract void papaLiveCropImage();

    @JavascriptInterface
    public abstract void payByPapa(final String app_key, final int payType, final String callback_url, final String app_name, final String app_order_id, final int paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2);

    @JavascriptInterface
    public abstract void payByPapa(final String app_key, final String appPrivateKey, final int payType, final String callback_url, final String app_name, final String app_order_id, final String paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2, final String token, final String payShowType);

    @JavascriptInterface
    public abstract void payGameFinish(int resultCode);

    @JavascriptInterface
    public void playVideo(final String videoUrl, final String imageUrl) {
        f(new l(videoUrl, imageUrl));
    }

    @JavascriptInterface
    public String processCmd(String cmd, String json) {
        return "";
    }

    @JavascriptInterface
    public void pullRewardAd(String json) {
    }

    @JavascriptInterface
    public abstract void rechargePabiFrom(final String app_key, final int payType, final String callback_url, final String app_name, final String app_order_id, final String paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2);

    @JavascriptInterface
    public void registerKeyboardChangeListener(String callback) {
    }

    @JavascriptInterface
    public void saveStringByKey(String saveKey, String message) {
        SharedPreferences.Editor editorEdit = this.f64152a.get().getSharedPreferences("Papa_Stat_SharedPreferences", 0).edit();
        editorEdit.putString("papaH5_" + saveKey, message);
        editorEdit.commit();
    }

    @JavascriptInterface
    public void setData(final String appkey, final String accountdata) {
        List<H5GameAccountDataTable> listN = t6.w.o().n(appkey);
        if (listN == null || listN.size() <= 0) {
            H5GameAccountDataTable h5GameAccountDataTable = new H5GameAccountDataTable();
            h5GameAccountDataTable.setAppkey(appkey);
            h5GameAccountDataTable.setAccount_data(accountdata);
            t6.w.o().k(h5GameAccountDataTable);
            return;
        }
        boolean z10 = false;
        for (H5GameAccountDataTable h5GameAccountDataTable2 : listN) {
            if (((AccountBean) JsonMapper.getInstance().fromJson(h5GameAccountDataTable2.getAccount_data(), AccountBean.class)).getUid() == ((AccountBean) JsonMapper.getInstance().fromJson(accountdata, AccountBean.class)).getUid()) {
                h5GameAccountDataTable2.setAppkey(appkey);
                h5GameAccountDataTable2.setAccount_data(accountdata);
                t6.w.o().update(h5GameAccountDataTable2);
                z10 = true;
            }
        }
        if (z10) {
            return;
        }
        H5GameAccountDataTable h5GameAccountDataTable3 = new H5GameAccountDataTable();
        h5GameAccountDataTable3.setAppkey(appkey);
        h5GameAccountDataTable3.setAccount_data(accountdata);
        t6.w.o().k(h5GameAccountDataTable3);
    }

    @JavascriptInterface
    public abstract void setFullScreenJs(final String json);

    @JavascriptInterface
    public abstract void setQuitFullScreenJs(final String json);

    @JavascriptInterface
    public abstract void setScreenLandOrPort(final int screenLandOrPort);

    @JavascriptInterface
    public abstract void setTitle(final String title);

    @JavascriptInterface
    public abstract void shareFromJson(final String json);

    @JavascriptInterface
    public void shareToOne(final int shareTo, final String json) {
        f(new k(json, shareTo));
    }

    @JavascriptInterface
    public void shareToOneImageOrText(final int shareTo, final String message, final int shareType) {
        f(new n(shareTo, message, shareType));
    }

    @JavascriptInterface
    public abstract void showBackNew(final boolean show);

    @JavascriptInterface
    public void showDownLiveDialog() {
    }

    @JavascriptInterface
    public abstract void showDownload(final boolean show);

    @JavascriptInterface
    public abstract void showFinish(final boolean show);

    @JavascriptInterface
    public abstract void showRefresh(final boolean show);

    @JavascriptInterface
    public abstract void showSearch(final boolean show);

    @JavascriptInterface
    public abstract void showShareButn(final String json);

    @JavascriptInterface
    public abstract void showTitle(final boolean showOrHide);

    @JavascriptInterface
    public void startGame(String gid, String cheatID) {
        f(new j(gid, cheatID));
    }

    @JavascriptInterface
    public void startGameFromJson(final String json) {
        f(new f(json));
    }

    @JavascriptInterface
    public void startH5Game(final String downloadTask) {
        CollectionBeanSub collectionBeanSub;
        DownloadTask downloadTaskBuildDownloadTask;
        try {
            if (!t2.i(downloadTask) || (collectionBeanSub = (CollectionBeanSub) JsonMapper.getInstance().fromJson(downloadTask, CollectionBeanSub.class)) == null || (downloadTaskBuildDownloadTask = collectionBeanSub.buildDownloadTask()) == null) {
                return;
            }
            UtilsMy.j3(downloadTaskBuildDownloadTask, this.f64152a.get());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @JavascriptInterface
    public abstract void startIntent(final String json);

    @JavascriptInterface
    public void startWechatApp(String appId, String wechatAppId, String path) {
        IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(this.f64152a.get(), appId);
        iwxapiCreateWXAPI.registerApp(appId);
        WXLaunchMiniProgram.Req req = new WXLaunchMiniProgram.Req();
        req.userName = wechatAppId;
        req.path = path;
        req.miniprogramType = 0;
        iwxapiCreateWXAPI.sendReq(req);
    }

    @JavascriptInterface
    public int stopDown(String gameId) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null) {
            return -1;
        }
        com.php25.PDownload.d.i(downloadTaskG);
        return 1;
    }

    @JavascriptInterface
    public int stopDownByPackageName(String packageName) {
        List<DownloadTask> listI = q5.f.M().I(packageName);
        if (listI == null || listI.size() == 0) {
            return -1;
        }
        Iterator<DownloadTask> it2 = listI.iterator();
        while (it2.hasNext()) {
            com.php25.PDownload.d.i(it2.next());
        }
        return 1;
    }

    @JavascriptInterface
    public void toastText(final String message) {
        f(new c(message));
    }

    @JavascriptInterface
    public void unregisterKeyboardChangeListener() {
    }

    @JavascriptInterface
    public abstract void updateAccount();

    @JavascriptInterface
    public abstract void updateRealNameState();

    @JavascriptInterface
    public abstract void updateVip();
}
