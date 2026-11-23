package com.join.mgps.activity.gamedetail;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.join.android.app.common.http.c;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.g;
import com.join.android.app.common.utils.i;
import com.join.android.app.common.utils.m;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.StartGameMeta;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.r0;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.customview.LJNestScrollWebView;
import com.join.mgps.dialog.f1;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.t;
import com.papa.sim.statistic.u;
import com.papa91.wrapper.UserPrefs;
import com.php25.PDownload.d;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.umeng.commonsdk.UMConfigure;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import q5.f;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_common_webview)
public class CommonWebviewFragment extends Fragment implements LJNestScrollWebView.b {
    private Context context;

    @ViewById
    TextView failedMessage;
    private long lastClick;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private f1 mDataLoadingDialog;

    @Pref
    PrefDef_ prefDef;
    String url;

    @ViewById
    LJNestScrollWebView web;

    @ViewById
    RelativeLayout weblayout;
    private View xCustomView;
    String TAG = "ShareWebActivity";
    private Handler mHandler = new Handler();
    private boolean isError = false;
    f1 dialog = null;

    public class WebJSPInterfaceMethedBean {
        public WebJSPInterfaceMethedBean() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit lambda$instalApk$0(String str) {
            g.t0(CommonWebviewFragment.this.context).z(CommonWebviewFragment.this.context, new File(str));
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit lambda$instalApkByPackageName$1(String str) {
            g.t0(CommonWebviewFragment.this.context).z(CommonWebviewFragment.this.context, new File(str));
            return null;
        }

        @JavascriptInterface
        public void changeAccount(String accountJson) {
            try {
                AccountUtil_.getInstance_(CommonWebviewFragment.this.context).saveAccountData(g8.a.a((AccountBean) JsonMapper.getInstance().fromJson(accountJson, AccountBean.class)), CommonWebviewFragment.this.context);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @JavascriptInterface
        public boolean checkAppHasInstall(String packageName) {
            try {
                return g.t0(CommonWebviewFragment.this.context).e(CommonWebviewFragment.this.context, packageName);
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }

        @JavascriptInterface
        public String checkAppInfo(String packageName) {
            APKUtils.a aVarN;
            try {
                aVarN = g.t0(CommonWebviewFragment.this.context).n(CommonWebviewFragment.this.context, packageName);
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
            return m.j(CommonWebviewFragment.this.context) ? 1 : 0;
        }

        @JavascriptInterface
        public String checkWufunPapaPlatform() {
            return "wufun";
        }

        @JavascriptInterface
        public void checkin(final boolean success) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.8
                @Override // java.lang.Runnable
                public void run() {
                    boolean zH = i.h(CommonWebviewFragment.this.prefDef.lastCheckInTime().d().longValue());
                    if (success) {
                        if (zH) {
                            return;
                        }
                        CommonWebviewFragment.this.prefDef.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
                    } else if (zH) {
                        CommonWebviewFragment.this.prefDef.lastCheckInTime().g(0L);
                    }
                }
            });
        }

        @JavascriptInterface
        public void copyToClipboard(final String text) {
            if (t2.i(text)) {
                r0.M(CommonWebviewFragment.this.context, text);
                a3.b(CommonWebviewFragment.this.context).d("复制成功！");
            }
        }

        @JavascriptInterface
        public void downloadApkGameByUrl(String appUrl, String appName, String appIconUrl, String packageName) {
        }

        @JavascriptInterface
        public void downloadFile(String url, String fileName) {
            UtilsMy.S0(CommonWebviewFragment.this.context, url, fileName);
        }

        @JavascriptInterface
        public void downloadGame(String downloadTaskJson) {
            d.c((DownloadTask) JsonMapper.getInstance().fromJson(downloadTaskJson, DownloadTask.class), CommonWebviewFragment.this.context);
        }

        @JavascriptInterface
        public void downloadGameByGameId(String gameId) {
        }

        @JavascriptInterface
        public void downloadGameByGameIdAndUrl(String gameId, String gameurl) {
        }

        @JavascriptInterface
        public void downloadGameByGameIdIfNoGame(String gameId) {
        }

        @JavascriptInterface
        public String findAllGames() {
            List<DownloadTask> listD = f.M().d();
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
        public void getAccount() {
        }

        @JavascriptInterface
        public String getAllH5game() {
            List<DownloadTask> listT = f.M().t();
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
            return q.n(CommonWebviewFragment.this.context).e(CommonWebviewFragment.this.context);
        }

        @JavascriptInterface
        public String getAndroidVersion() {
            return q.n(CommonWebviewFragment.this.context).s();
        }

        @JavascriptInterface
        public String getAppversionName() {
            return q.n(CommonWebviewFragment.this.context).A();
        }

        @JavascriptInterface
        public String getDeviceId() {
            return u.f(CommonWebviewFragment.this.context).b();
        }

        @JavascriptInterface
        public String getIMEI() {
            return u.f(CommonWebviewFragment.this.context).b();
        }

        @JavascriptInterface
        public int getNowVersion() {
            return q.n(CommonWebviewFragment.this.context).z();
        }

        @JavascriptInterface
        public String getPackageName() {
            return CommonWebviewFragment.this.getContext().getPackageName();
        }

        @JavascriptInterface
        public String getPhoneModle() {
            return q.n(CommonWebviewFragment.this.context).q();
        }

        @JavascriptInterface
        public String getSdkIntentData(String appKey) {
            return CommonWebviewFragment.this.context.getSharedPreferences("Papa_Stat_SharedPreferences", 0).getString("papasdk_" + appKey, "");
        }

        @JavascriptInterface
        public int getSingleGameADCount() {
            return new UserPrefs(CommonWebviewFragment.this.context).getAdGamesHasSeeCount();
        }

        @JavascriptInterface
        public String getStringByKey(String saveKey) {
            return CommonWebviewFragment.this.context.getSharedPreferences("Papa_Stat_SharedPreferences", 0).getString("papaH5_" + saveKey, "");
        }

        @JavascriptInterface
        public String getUMIDString() {
            try {
                return UMConfigure.getUMIDString(CommonWebviewFragment.this.context);
            } catch (Exception unused) {
                return "";
            }
        }

        @JavascriptInterface
        public String getVendor() {
            return q.n(CommonWebviewFragment.this.context).y();
        }

        @JavascriptInterface
        public void goAccountCenter() {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.12
                @Override // java.lang.Runnable
                public void run() {
                    IntentUtil.getInstance().goAccountCenterActivity(CommonWebviewFragment.this.context);
                }
            });
        }

        @JavascriptInterface
        public void goAccountDetial() {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.17
                @Override // java.lang.Runnable
                public void run() {
                    IntentUtil.getInstance().goMYAccountDetialActivity(CommonWebviewFragment.this.context);
                }
            });
        }

        @JavascriptInterface
        public void goBackUrl(final String url) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.7
                @Override // java.lang.Runnable
                public void run() {
                    if ("".equals(url)) {
                        return;
                    }
                    CommonWebviewFragment.this.web.v(url);
                }
            });
        }

        @JavascriptInterface
        public void goCodesBoxActivity() {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.14
                @Override // java.lang.Runnable
                public void run() {
                    IntentUtil.getInstance().goCodesBoxActivity(CommonWebviewFragment.this.context);
                }
            });
        }

        @JavascriptInterface
        public void goDownloadCenter() {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.15
                @Override // java.lang.Runnable
                public void run() {
                    IntentUtil.getInstance().goDownloadCenterActivity(CommonWebviewFragment.this.context);
                }
            });
        }

        @JavascriptInterface
        public void goGameDetail(String gid) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(1);
            intentDateBean.setCrc_link_type_val(gid);
            intentDateBean.setExtBean(new ExtBean(120));
            IntentUtil.getInstance().intentActivity(CommonWebviewFragment.this.getContext(), intentDateBean);
        }

        @JavascriptInterface
        public void goHandShark() {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.13
                @Override // java.lang.Runnable
                public void run() {
                    IntentUtil.getInstance().goJoystickManager(CommonWebviewFragment.this.context);
                }
            });
        }

        @JavascriptInterface
        public void goProfileMessage() {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.18
                @Override // java.lang.Runnable
                public void run() {
                    IntentUtil.getInstance().goForumProfileMessageActivity(CommonWebviewFragment.this.context);
                }
            });
        }

        @JavascriptInterface
        public void goQQGroup(final String qqNumber) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.21
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        IntentUtil.getInstance().goQQGroup(CommonWebviewFragment.this.context, qqNumber);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        }

        @JavascriptInterface
        public void goStartLive() {
        }

        @JavascriptInterface
        public int inquiryGameStatus(String gid) {
            return -1;
        }

        @JavascriptInterface
        public int inquiryGameStatusByPackage(String packageName) {
            List<DownloadTask> listI = f.M().I(packageName);
            if (listI == null || listI.size() <= 0) {
                return -1;
            }
            return listI.get(0).getStatus();
        }

        @JavascriptInterface
        public int instalApk(String gameId) {
            DownloadTask downloadTaskG = f.M().G(gameId);
            if (downloadTaskG == null || !Dtype.android.name().equals(downloadTaskG.getFileType())) {
                return -1;
            }
            APKUtils.s0(downloadTaskG.getGameZipPath(), downloadTaskG, new Function1() { // from class: com.join.mgps.activity.gamedetail.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f57253b.lambda$instalApk$0((String) obj);
                }
            });
            return 1;
        }

        @JavascriptInterface
        public int instalApkByPackageName(String packagename) {
            List<DownloadTask> listI = f.M().I(packagename);
            if (listI == null || listI.size() <= 0) {
                return 1;
            }
            DownloadTask downloadTask = listI.get(0);
            APKUtils.s0(downloadTask.getGameZipPath(), downloadTask, new Function1() { // from class: com.join.mgps.activity.gamedetail.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f57254b.lambda$instalApkByPackageName$1((String) obj);
                }
            });
            return 1;
        }

        @JavascriptInterface
        public void intentQQ(final String qqNumber) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.10
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        CommonWebviewFragment.this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + qqNumber + "&version=1")));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        }

        @JavascriptInterface
        public void intentToCompletAccount() {
        }

        @JavascriptInterface
        public void joinAction(final String action, final String id2) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.3
                @Override // java.lang.Runnable
                public void run() {
                    t.l(CommonWebviewFragment.this.context).p(action, id2, AccountUtil_.getInstance_(CommonWebviewFragment.this.context).getUid());
                }
            });
        }

        @JavascriptInterface
        public void jumpGameMatch(String roomId) {
        }

        @JavascriptInterface
        public void liveIntentTo(int type) {
        }

        @JavascriptInterface
        public void login() {
        }

        @JavascriptInterface
        public void openAction(final String action, final String id2) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.2
                @Override // java.lang.Runnable
                public void run() {
                    t.l(CommonWebviewFragment.this.context).p(action, id2, AccountUtil_.getInstance_(CommonWebviewFragment.this.context).getUid());
                }
            });
        }

        @JavascriptInterface
        public void payByPapa(final String app_key, final int payType, final String callback_url, final String app_name, final String app_order_id, final int paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2) {
        }

        @JavascriptInterface
        public void payGameFinish(int resultCode) {
        }

        @JavascriptInterface
        public void playVideo(final String videoUrl, final String imageUrl) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.9
                @Override // java.lang.Runnable
                public void run() {
                    FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                    videoInfo.H(videoUrl);
                    videoInfo.C(imageUrl);
                    FullScreenActivity_.intent(CommonWebviewFragment.this.context).a(videoInfo).start();
                }
            });
        }

        @JavascriptInterface
        public void rechargePabiFrom(final String app_key, final int payType, final String callback_url, final String app_name, final String app_order_id, final String paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2) {
        }

        @JavascriptInterface
        public void saveStringByKey(String saveKey, String message) {
            SharedPreferences.Editor editorEdit = CommonWebviewFragment.this.context.getSharedPreferences("Papa_Stat_SharedPreferences", 0).edit();
            editorEdit.putString("papaH5_" + saveKey, message);
            editorEdit.commit();
        }

        @JavascriptInterface
        public void setFullScreenJs(final String json) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.20
                @Override // java.lang.Runnable
                public void run() {
                    CommonWebviewFragment.this.setFullScreen();
                }
            });
        }

        @JavascriptInterface
        public void setQuitFullScreenJs(final String json) {
        }

        @JavascriptInterface
        public void setScreenLandOrPort(final int screenLandOrPort) {
        }

        @JavascriptInterface
        public void setTitle(final String title) {
        }

        @JavascriptInterface
        public void shareFromJson(final String json) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.1
                @Override // java.lang.Runnable
                public void run() {
                    w.s(CommonWebviewFragment.this.getContext(), json, 5);
                }
            });
        }

        @JavascriptInterface
        public void shareToOne(final int shareTo, final String json) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.6
                @Override // java.lang.Runnable
                public void run() {
                    ShareBean shareBean = (ShareBean) JsonMapper.getInstance().fromJson(json, ShareBean.class);
                    shareBean.setFrom(5);
                    w.p(CommonWebviewFragment.this.context, shareTo, shareBean);
                }
            });
        }

        @JavascriptInterface
        public void shareToOneImageOrText(final int shareTo, final String message, final int shareType) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.11
                @Override // java.lang.Runnable
                public void run() {
                    w.q(CommonWebviewFragment.this.context, shareTo, message, shareType, 5);
                }
            });
        }

        @JavascriptInterface
        public void showBackNew(final boolean show) {
        }

        @JavascriptInterface
        public void showDownLiveDialog() {
        }

        @JavascriptInterface
        public void showDownload(final boolean show) {
        }

        @JavascriptInterface
        public void showFinish(final boolean show) {
        }

        @JavascriptInterface
        public void showRefresh(final boolean show) {
        }

        @JavascriptInterface
        public void showSearch(final boolean show) {
        }

        @JavascriptInterface
        public void showShareButn(final String json) {
        }

        @JavascriptInterface
        public void showTitle(final boolean showOrHide) {
        }

        @JavascriptInterface
        public void startGame(final String gid, final String cheatID) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.4
                @Override // java.lang.Runnable
                public void run() {
                    DownloadTask downloadTaskG;
                    boolean z10;
                    try {
                        List<DownloadTask> listJ = f.M().J(gid);
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
                                        if (g.t0(CommonWebviewFragment.this.getContext()).e(CommonWebviewFragment.this.getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                                            z10 = true;
                                        }
                                    }
                                }
                                break loop0;
                            }
                            if ((z11 && z10) || z11) {
                                downloadTaskG = f.M().G(crc_link_type_val);
                            } else if (z10 || (downloadTaskG = f.M().G(crc_link_type_val)) == null) {
                                downloadTaskG = f.M().G(crc_link_type_val2);
                            }
                        }
                        if (downloadTaskG == null) {
                            return;
                        }
                        if ("login".equals(cheatID)) {
                            UtilsMy.p4(CommonWebviewFragment.this.getContext(), downloadTaskG, cheatID);
                        } else {
                            UtilsMy.k4(CommonWebviewFragment.this.getContext(), downloadTaskG);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        }

        @JavascriptInterface
        public void startGameFromJson(final String json) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.19
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (t2.h(json)) {
                            return;
                        }
                        StartGameMeta startGameMeta = (StartGameMeta) JsonMapper.getInstance().fromJson(json, StartGameMeta.class);
                        Intent intent = new Intent();
                        intent.addFlags(8388608);
                        intent.setComponent(new ComponentName(startGameMeta.getPackageName(), startGameMeta.getActivityName()));
                        String uid = AccountUtil_.getInstance_(CommonWebviewFragment.this.context).getUid();
                        intent.putExtra("uid", uid);
                        startGameMeta.setUserID(uid);
                        startGameMeta.setPa_package_name(CommonWebviewFragment.this.context.getPackageName());
                        intent.putExtra("jsonData", JsonMapper.getInstance().toJson(startGameMeta));
                        intent.setAction("android.intent.action.VIEW");
                        try {
                            CommonWebviewFragment.this.context.startActivity(intent);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            });
        }

        @JavascriptInterface
        public void startH5Game(final String downloadTask) {
            CollectionBeanSub collectionBeanSub;
            DownloadTask downloadTaskBuildDownloadTask;
            try {
                if (!t2.i(downloadTask) || (collectionBeanSub = (CollectionBeanSub) JsonMapper.getInstance().fromJson(downloadTask, CollectionBeanSub.class)) == null || (downloadTaskBuildDownloadTask = collectionBeanSub.buildDownloadTask()) == null) {
                    return;
                }
                UtilsMy.j3(downloadTaskBuildDownloadTask, CommonWebviewFragment.this.context);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @JavascriptInterface
        public void startIntent(final String json) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        IntentDateBean intentDateBean = (IntentDateBean) JsonMapper.getInstance().fromJson(json, IntentDateBean.class);
                        intentDateBean.setExtBean(new ExtBean(120));
                        IntentUtil.getInstance().intentActivity(CommonWebviewFragment.this.getContext(), intentDateBean);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        }

        @JavascriptInterface
        public void startWechatApp(String appId, String wechatAppId, String path) {
            IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(CommonWebviewFragment.this.context, appId);
            iwxapiCreateWXAPI.registerApp(appId);
            WXLaunchMiniProgram.Req req = new WXLaunchMiniProgram.Req();
            req.userName = wechatAppId;
            req.path = path;
            req.miniprogramType = 0;
            iwxapiCreateWXAPI.sendReq(req);
        }

        @JavascriptInterface
        public int stopDown(String gameId) {
            DownloadTask downloadTaskG = f.M().G(gameId);
            if (downloadTaskG == null) {
                return -1;
            }
            d.i(downloadTaskG);
            return 1;
        }

        @JavascriptInterface
        public int stopDownByPackageName(String packageName) {
            List<DownloadTask> listI = f.M().I(packageName);
            if (listI == null || listI.size() == 0) {
                return -1;
            }
            Iterator<DownloadTask> it2 = listI.iterator();
            while (it2.hasNext()) {
                d.i(it2.next());
            }
            return 1;
        }

        @JavascriptInterface
        public void toastText(final String message) {
            CommonWebviewFragment.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.gamedetail.CommonWebviewFragment.WebJSPInterfaceMethedBean.16
                @Override // java.lang.Runnable
                public void run() {
                    a3.b(CommonWebviewFragment.this.context).d(message);
                }
            });
        }

        @JavascriptInterface
        public void updateAccount() {
        }

        @JavascriptInterface
        public void updateRealNameState() {
        }

        @JavascriptInterface
        public void payByPapa(final String app_key, final String appPrivateKey, final int payType, final String callback_url, final String app_name, final String app_order_id, final String paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2, final String token, final String payShowType) {
        }
    }

    private class WebViewClientXY extends WebViewClient {
        public WebViewClientXY(Context context) {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url2) {
            super.onPageFinished(view, url2);
            if (url2.endsWith(".zip")) {
                return;
            }
            g1.b(CommonWebviewFragment.this.TAG, "onPageFinished() called." + url2);
            if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                CommonWebviewFragment.this.url = url2;
            }
            if (CommonWebviewFragment.this.url.equals("data:text/html,chromewebdata") || CommonWebviewFragment.this.isError) {
                CommonWebviewFragment.this.showLodingFailed();
            } else {
                view.getSettings().setBlockNetworkImage(false);
                view.getLayoutParams().height = -2;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url2, Bitmap favicon) {
            super.onPageStarted(view, url2, favicon);
            g1.b(CommonWebviewFragment.this.TAG, "onPageStarted() called." + url2);
            if (url2.endsWith(".zip")) {
                return;
            }
            if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                CommonWebviewFragment.this.url = url2;
            }
            CommonWebviewFragment.this.showLoding();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            g1.b(CommonWebviewFragment.this.TAG, "onReceivedError() called." + failingUrl);
            if (failingUrl.endsWith(".zip")) {
                return;
            }
            CommonWebviewFragment.this.isError = true;
            view.loadDataWithBaseURL(null, "", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
            CommonWebviewFragment.this.showLodingFailed();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            int primaryError = error.getPrimaryError();
            if (primaryError == 3 || primaryError == 5) {
                handler.proceed();
            }
            handler.cancel();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url2) {
            g1.b(CommonWebviewFragment.this.TAG, "shouldOverrideUrlLoading() called.");
            if (!m.j(CommonWebviewFragment.this.context)) {
                a3.b(CommonWebviewFragment.this.context).d(CommonWebviewFragment.this.getString(R.string.net_connect_failed));
            } else {
                if (!url2.startsWith("weixin:")) {
                    if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                        CommonWebviewFragment.this.url = url2;
                        return super.shouldOverrideUrlLoading(view, url2);
                    }
                    try {
                        CommonWebviewFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    return true;
                }
                try {
                    CommonWebviewFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            return true;
        }
    }

    private void lodeWebView(String url) {
        g1.b(this.TAG, "lodeWebView() called." + url);
        try {
            if (m.j(getContext())) {
                LJNestScrollWebView lJNestScrollWebView = this.web;
                if (lJNestScrollWebView == null) {
                    return;
                }
                lJNestScrollWebView.setVisibility(0);
                this.web.setBarHeight(getResources().getDimensionPixelOffset(R.dimen.web_loding_progress_h));
                this.web.setClickable(true);
                this.web.setUseWideViewPort(true);
                this.web.setSupportZoom(false);
                this.web.setBuiltInZoomControls(false);
                this.web.setJavaScriptEnabled(true);
                this.web.setCacheMode(-1);
                this.web.setWebViewClient(new WebViewClientXY(getContext()));
                this.web.q(new WebJSPInterfaceMethedBean());
                this.web.v(url);
                this.web.setActivity(getActivity());
            } else {
                showLodingFailed();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFullScreen() {
        getActivity().getWindow().setFlags(1024, 1024);
    }

    @AfterViews
    void afterview() {
        g1.b(this.TAG, "afterView() called.");
        try {
            this.context = getContext();
            String string = getArguments().getString("url");
            this.url = string;
            if (string == null) {
                this.url = "";
            }
            if (c.f34547c && this.url.contains("http://")) {
                this.url = this.url.replace("http://", "https://");
            }
            if (!this.url.contains("http://") && !this.url.contains("file://") && !this.url.contains("https://")) {
                this.url = "https://" + this.url;
            }
            lodeWebView(this.url);
            TextView textView = this.failedMessage;
            if (textView != null) {
                textView.setText("网页加载失败，再试试吧~");
            }
            LJNestScrollWebView lJNestScrollWebView = this.web;
            if (lJNestScrollWebView != null) {
                lJNestScrollWebView.setMethodListenter(this);
            }
            this.dialog = h0.h0(this.context).x(this.context);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean inCustomView() {
        return this.xCustomView != null;
    }

    @Click
    void loding_faile() {
        g1.b(this.TAG, "loding_faile() called.");
        if (this.web != null) {
            this.isError = false;
            lodeWebView(this.url);
        }
    }

    @Override // com.join.mgps.customview.LJNestScrollWebView.b
    public void noMethod() {
        WebView webView = this.web.getWebView();
        if (webView == null || !webView.canGoBack()) {
            return;
        }
        webView.goBack();
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        if (savedInstanceState != null) {
            try {
                LJNestScrollWebView lJNestScrollWebView = this.web;
                if (lJNestScrollWebView != null) {
                    lJNestScrollWebView.getWebView().restoreState(savedInstanceState);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return super.onCreateView(inflater, container, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.join.mgps.customview.LJNestScrollWebView.b
    public void onHideCustomView() {
        this.xCustomView = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        LJNestScrollWebView lJNestScrollWebView = this.web;
        if (lJNestScrollWebView != null) {
            try {
                lJNestScrollWebView.getWebView().getClass().getMethod("onPause", new Class[0]).invoke(this.web.getWebView(), null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
        super.onPause();
    }

    @Override // com.join.mgps.customview.LJNestScrollWebView.b
    public void onReceivedTitle(String title) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.web.v("javascript:papaActivityOnResume()");
        LJNestScrollWebView lJNestScrollWebView = this.web;
        if (lJNestScrollWebView != null) {
            try {
                lJNestScrollWebView.getWebView().getClass().getMethod("onResume", new Class[0]).invoke(this.web.getWebView(), null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        this.web.getWebView().saveState(outState);
    }

    @Override // com.join.mgps.customview.LJNestScrollWebView.b
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback, WebChromeClient chromeClient) {
        this.xCustomView = view;
        if (view == null) {
            return;
        }
        this.weblayout.setVisibility(8);
        getActivity().setRequestedOrientation(0);
        setFullScreen();
    }

    @Click
    void setNetwork() {
        g1.b(this.TAG, "setNetwork() called.");
        UtilsMy.N3(getContext());
    }

    @UiThread
    void showLoding() {
        try {
            g1.b(this.TAG, "showLoding() called.");
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
            LJNestScrollWebView lJNestScrollWebView = this.web;
            if (lJNestScrollWebView != null) {
                lJNestScrollWebView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        try {
            g1.b(this.TAG, "showLodingFailed() called.");
            this.loding_faile.setVisibility(0);
            this.loding_layout.setVisibility(8);
            LJNestScrollWebView lJNestScrollWebView = this.web;
            if (lJNestScrollWebView != null) {
                lJNestScrollWebView.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showMain() {
        try {
            g1.b(this.TAG, "showMain() called.");
            this.loding_faile.setVisibility(8);
            this.loding_layout.setVisibility(8);
            LJNestScrollWebView lJNestScrollWebView = this.web;
            if (lJNestScrollWebView != null) {
                lJNestScrollWebView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.customview.LJNestScrollWebView.b
    public void showMainWebview() {
        LJNestScrollWebView lJNestScrollWebView = this.web;
        if (lJNestScrollWebView == null || lJNestScrollWebView.getVisibility() == 0) {
            return;
        }
        showMain();
    }

    @UiThread
    void showTost(String message) {
        a3.b(this.context).d(message);
    }
}
