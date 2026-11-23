package com.join.mgps.Util;

import android.app.Activity;
import android.app.Dialog;
import android.app.DownloadManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemClock;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.GeolocationPermissions;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.BaseAppCompatActivity;
import com.BaseFragmentActivity;
import com.MApplication;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.C;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.http.PointSendUtile;
import com.join.android.app.common.servcie.DownloadService_;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.discount.model.bean.GameDetailBean;
import com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback;
import com.join.kotlin.ui.cloudarchive.dialog.ModPromptNormalDialog;
import com.join.mgps.activity.AndroidPermissionDialogActivity;
import com.join.mgps.activity.ChociceDownActivity_;
import com.join.mgps.activity.CloudGameIndexActivity_;
import com.join.mgps.activity.CopyDialogActivity;
import com.join.mgps.activity.EmuLaunchLoadingActivity;
import com.join.mgps.activity.EndGameLaunchActivity_;
import com.join.mgps.activity.GprsNoticeDialogAlphActivity_;
import com.join.mgps.activity.HavenDownActivity_;
import com.join.mgps.activity.LocalGameActivity;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.MiniGameLoadingActivity_;
import com.join.mgps.activity.ModGameIndexActivity_;
import com.join.mgps.activity.MyGameManagerActivity_;
import com.join.mgps.activity.PapaPlugGuideActivity_;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.join.mgps.activity.RankingHomeActivity_;
import com.join.mgps.activity.RewardAdDialogActivity;
import com.join.mgps.activity.SimulatorExitPlayActivity;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.UpdateLodingActivity_;
import com.join.mgps.activity.WarningDialogActivity;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.hideapp.HideAppCalculatorActivity;
import com.join.mgps.activity.hideapp.HideAppCalculatorActivity_;
import com.join.mgps.activity.hideapp.HideAppNotebookActivity;
import com.join.mgps.activity.hideapp.HideAppNotebookActivity_;
import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_;
import com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog_;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.ad.RewardAdParams;
import com.join.mgps.db.tables.DownlodTaskCopyTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.db.tables.FightMainTable;
import com.join.mgps.db.tables.UserPurchaseInfo;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import com.join.mgps.dialog.DownloadChoiceUrlDialog_;
import com.join.mgps.dialog.DownloadHighSpeedDialog_;
import com.join.mgps.dialog.DownloadSnifferPromptDialog_;
import com.join.mgps.dialog.PlugInstallDialog_;
import com.join.mgps.dto.AndroidPermissionParams;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.BaiduAdDataMain;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.DetailResultBeanV3;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.DownloadCfg;
import com.join.mgps.dto.DownloadGameArgsBean;
import com.join.mgps.dto.DownloadSpeedupCfgBean;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.Filepath;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.GameDetailRankingTag;
import com.join.mgps.dto.GameDetialBookTag;
import com.join.mgps.dto.GameDiscoverBean;
import com.join.mgps.dto.GameStartArgs;
import com.join.mgps.dto.GameStartType;
import com.join.mgps.dto.GameTagInfoV2_2Bean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.NetBattleStartGameDto;
import com.join.mgps.dto.PayTagInfo;
import com.join.mgps.dto.PdAdCfgBean;
import com.join.mgps.dto.PlayCfgBean;
import com.join.mgps.dto.RecGameTagBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.dto.SingleGameAdCfgBean;
import com.join.mgps.dto.SingleGameModInfoBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.dto.TodayWufunBroadcast;
import com.join.mgps.dto.TodayWufunEverday;
import com.join.mgps.dto.TodayWufunTodayNew;
import com.join.mgps.dto.UpdateIntentDataBean;
import com.join.mgps.dto.VolcanoOther;
import com.join.mgps.dto.WxProgram;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.NotifcationReceiver;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.dialog.RealNameDialog;
import com.papa91.arc.ext.ToastManager;
import com.papa91.arc.interfaces.RealNameCallBack;
import com.papa91.common.BaseAppConfig;
import com.papa91.common.RealNameCheckInfo;
import com.papa91.view.RealNameLoginDialog;
import com.papa91.wrapper.UserPrefs;
import com.sdk.base.module.manager.SDKManager;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.umeng.analytics.pro.bm;
import com.wufan.user.service.protobuf.GameListPermission;
import com.wufan.user.service.protobuf.UserInfo;
import com.xinzhu.overmind.Overmind;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.json.JSONObject;
import org.springframework.util.Base64Utils;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
public class UtilsMy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f49392a = "UtilsMy";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static EMUApkTable f49393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f49394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f49395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f49396e;

    class a implements ModPromptCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49397a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49398b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ModPromptNormalDialog f49399c;

        a(final DownloadTask val$downloadTask, final Context val$context, final ModPromptNormalDialog val$dialog) {
            this.f49397a = val$downloadTask;
            this.f49398b = val$context;
            this.f49399c = val$dialog;
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback
        public void callback1() {
            UtilsMy.J4(this.f49398b, this.f49397a);
            this.f49399c.dismiss();
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback
        public void callback2() {
            if (APKUtils.P(this.f49397a)) {
                APKUtils.w(this.f49398b, this.f49397a);
            } else if ((com.join.android.app.common.utils.q.x() instanceof ModGameIndexActivity_) || (com.join.android.app.common.utils.q.x() instanceof CloudGameIndexActivity_)) {
                Intent intent = new Intent(p5.a.f96224u0);
                intent.putExtra("from", "modStdDialog");
                this.f49398b.sendBroadcast(intent);
            } else {
                ModInfoBean modInfoBean = this.f49397a.getModInfoBean();
                ModGameIndexActivity_.intent(this.f49398b).a("modStdDialog").b(this.f49397a.getCrc_link_type_val()).d(modInfoBean != null ? modInfoBean.getMain_game_id() : "").start();
            }
            this.f49399c.dismiss();
        }
    }

    class a0 extends WebViewClient {
        a0() {
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
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            if (!url.startsWith("http://") && !url.startsWith("https://")) {
                return false;
            }
            view.loadUrl(url);
            return true;
        }
    }

    class b implements Function0<Unit> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49401c;

        b(final Context val$context, final DownloadTask val$downloadTask) {
            this.f49400b = val$context;
            this.f49401c = val$downloadTask;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unit invoke() {
            UtilsMy.M2(this.f49400b, this.f49401c);
            return null;
        }
    }

    class b0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49402b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ EMUApkTable f49403c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f49404d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Context f49405e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Dialog f49406f;

        b0(final DownloadTask val$plug, final EMUApkTable val$emuApkTable, final int val$plugType, final Context val$context, final Dialog val$dialog) {
            this.f49402b = val$plug;
            this.f49403c = val$emuApkTable;
            this.f49404d = val$plugType;
            this.f49405e = val$context;
            this.f49406f = val$dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = new DownloadTask();
            DownloadTask downloadTask2 = this.f49402b;
            if (downloadTask2 != null) {
                downloadTask.setId(downloadTask2.getId());
            }
            downloadTask.setPackageName(this.f49403c.getPackage_name());
            downloadTask.setPortraitURL(this.f49403c.getLogo());
            downloadTask.setShowName(this.f49403c.getApk_name());
            downloadTask.setUrl(this.f49403c.getDown_url());
            downloadTask.setTipBeans(null);
            downloadTask.setCrc_link_type_val(this.f49404d + "");
            try {
                String[] strArrSplit = this.f49403c.getVer().split("_");
                downloadTask.setVer_name(strArrSplit[1]);
                downloadTask.setVer(strArrSplit[0]);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            downloadTask.setRomType(this.f49404d + "");
            downloadTask.setPlugin_num(this.f49404d + "");
            downloadTask.setFileType(Dtype.chajian.name());
            downloadTask.setShowSize(this.f49403c.getSize());
            downloadTask.setDescribe(this.f49403c.getVer_info());
            downloadTask.setDown_type(this.f49403c.getDown_type());
            downloadTask.setProgress(0L);
            DownloadTask downloadTask3 = this.f49402b;
            if (downloadTask3 != null) {
                UtilsMy.N0(downloadTask3);
                if (this.f49402b.getDown_type() == 2 && com.join.android.app.common.utils.o.i(this.f49403c)) {
                    com.join.android.app.common.utils.o.e(this.f49403c, downloadTask);
                }
            }
            com.php25.PDownload.d.c(downloadTask, this.f49405e);
            this.f49406f.dismiss();
        }
    }

    class c extends e6.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49407a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49408b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ UserPrefs f49409c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f49410d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f49411e;

        c(final Context val$context, final DownloadTask val$downloadTask, final UserPrefs val$userPrefs, final int val$u, final int val$adc) {
            this.f49407a = val$context;
            this.f49408b = val$downloadTask;
            this.f49409c = val$userPrefs;
            this.f49410d = val$u;
            this.f49411e = val$adc;
        }

        @Override // e6.c, e6.b
        public void onAdClose() {
            APKUtils.i0(this.f49407a, this.f49408b);
        }

        @Override // e6.c, e6.b
        public void onAdShow() {
            this.f49409c.setAdGamesConfig(this.f49410d + "", this.f49411e);
        }

        @Override // e6.c, e6.b
        public void onDirectLaunch() {
            APKUtils.i0(this.f49407a, this.f49408b);
        }
    }

    class c0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Dialog f49412b;

        c0(final Dialog val$dialog) {
            this.f49412b = val$dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f49412b.dismiss();
        }
    }

    class d implements GameRoomActivity.x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49413a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49414b;

        d(final Context val$context, final DownloadTask val$downloadTask) {
            this.f49413a = val$context;
            this.f49414b = val$downloadTask;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
            com.join.android.app.common.utils.g.t0(this.f49413a);
            APKUtils.f0(this.f49413a, this.f49414b.getPackageName());
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            com.join.android.app.common.utils.g.t0(this.f49413a);
            APKUtils.f0(this.f49413a, this.f49414b.getPackageName());
        }
    }

    class d0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49415b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ EMUApkTable f49416c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f49417d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Context f49418e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Dialog f49419f;

        d0(final DownloadTask val$plug, final EMUApkTable val$emuApkTable, final int val$plugType, final Context val$context, final Dialog val$dialog) {
            this.f49415b = val$plug;
            this.f49416c = val$emuApkTable;
            this.f49417d = val$plugType;
            this.f49418e = val$context;
            this.f49419f = val$dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = new DownloadTask();
            DownloadTask downloadTask2 = this.f49415b;
            if (downloadTask2 != null) {
                downloadTask.setId(downloadTask2.getId());
            }
            downloadTask.setPackageName(this.f49416c.getPackage_name());
            downloadTask.setPortraitURL(this.f49416c.getLogo());
            downloadTask.setShowName(this.f49416c.getApk_name());
            downloadTask.setUrl(this.f49416c.getDown_url());
            downloadTask.setTipBeans(null);
            downloadTask.setCrc_link_type_val(this.f49417d + "");
            try {
                String[] strArrSplit = this.f49416c.getVer().split("_");
                downloadTask.setVer_name(strArrSplit[1]);
                downloadTask.setVer(strArrSplit[0]);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            downloadTask.setRomType(this.f49417d + "");
            downloadTask.setFileType(Dtype.chajian.name());
            downloadTask.setShowSize(this.f49416c.getSize());
            downloadTask.setDescribe(this.f49416c.getVer_info());
            downloadTask.setDown_type(this.f49416c.getDown_type());
            downloadTask.setProgress(0L);
            DownloadTask downloadTask3 = this.f49415b;
            if (downloadTask3 != null) {
                UtilsMy.N0(downloadTask3);
                if (this.f49415b.getDown_type() == 2 && com.join.android.app.common.utils.o.i(this.f49416c)) {
                    com.join.android.app.common.utils.o.e(this.f49416c, downloadTask);
                }
            }
            com.php25.PDownload.d.f(downloadTask, this.f49418e);
            this.f49419f.dismiss();
        }
    }

    class e extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f49420b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f49421c;

        e(final String val$intentData, final Context val$context) {
            this.f49420b = val$intentData;
            this.f49421c = val$context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            BootPageData bootPageData;
            try {
                Thread.sleep(800L);
                if (this.f49420b == null || (bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(this.f49420b, BootPageData.class)) == null || bootPageData.getPerformance_boot() == null) {
                    return;
                }
                PapaPlugGuideActivity_.intent(this.f49421c).start();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
    }

    class e0 implements Callback<ResponseModel<RealNameCheckInfo>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49422b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f49423c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ GameRoomActivity.x f49424d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f49425e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ UserInfo f49426f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ LuckHistoryrequest f49427g;

        e0(final Context val$context, final String val$gameId, final GameRoomActivity.x val$realNameCall, final int val$from, final UserInfo val$accountBean, final LuckHistoryrequest val$luckHistoryrequest) {
            this.f49422b = val$context;
            this.f49423c = val$gameId;
            this.f49424d = val$realNameCall;
            this.f49425e = val$from;
            this.f49426f = val$accountBean;
            this.f49427g = val$luckHistoryrequest;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(int i10, Context context, RealNameLoginDialog realNameLoginDialog, GameRoomActivity.x xVar, RealNameLoginDialog realNameLoginDialog2, int i11, ButtonBean buttonBean) {
            realNameLoginDialog2.dismiss();
            if (i10 == 6) {
                if (buttonBean.getEventType().intValue() == 4) {
                    c(context);
                } else if (buttonBean.getEventType().intValue() == 1 && realNameLoginDialog != null && !realNameLoginDialog.isShowing()) {
                    realNameLoginDialog.show();
                }
            }
            if (xVar != null) {
                xVar.onSuccess(i10, 0, buttonBean);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(final Context context, String str, final GameRoomActivity.x xVar, final int i10, UserInfo userInfo, LuckHistoryrequest luckHistoryrequest, RealNameCheckInfo realNameCheckInfo, final RealNameLoginDialog realNameLoginDialog, int i11, ButtonBean buttonBean) {
            if (i11 == 1) {
                com.papa.sim.statistic.t.l(context).R1(Event.closedRealNameWindow, new Ext().setGameId(str));
            }
            if (buttonBean.getEventType().intValue() == 2) {
                PopwindowBean popUpWindow = buttonBean.getPopUpWindow();
                if (popUpWindow == null || !popUpWindow.isPopup()) {
                    realNameLoginDialog.dismiss();
                    if (xVar != null) {
                        xVar.onSuccess(i10, 0, buttonBean);
                        return;
                    }
                    return;
                }
                if (popUpWindow.getType() == 1) {
                    com.papa.sim.statistic.t.l(context).R1(Event.realNameDisplayWindow, new Ext().setGameId(str));
                    UtilsMy.b4(context, popUpWindow, xVar, i10, userInfo.getUid() + "", luckHistoryrequest.getType(), luckHistoryrequest.getAction(), str);
                } else {
                    realNameLoginDialog.dismiss();
                    UtilsMy.d4(context, popUpWindow, new RealNameLoginDialog.OnBtnClickListener() { // from class: com.join.mgps.Util.h3
                        @Override // com.papa91.view.RealNameLoginDialog.OnBtnClickListener
                        public final void onClick(RealNameLoginDialog realNameLoginDialog2, int i12, ButtonBean buttonBean2) {
                            this.f49753a.d(i10, context, realNameLoginDialog, xVar, realNameLoginDialog2, i12, buttonBean2);
                        }
                    });
                }
            } else if (buttonBean.getEventType().intValue() == 1) {
                if (xVar != null) {
                    xVar.onSuccess(i10, 0, buttonBean);
                }
                com.papa.sim.statistic.t.l(context).R1(Event.clickKnowGoRealPage, new Ext().setGameId(str));
                IntentUtil.getInstance().goShareWebActivity(context, buttonBean.getJumpLink());
            } else {
                if (buttonBean.getEventType().intValue() == 0 && realNameCheckInfo.isNoAge() && realNameCheckInfo.getStatus() == 0) {
                    c(context);
                }
                if (xVar != null) {
                    xVar.onSuccess(i10, 0, buttonBean);
                }
            }
            if (realNameLoginDialog.isShowing()) {
                realNameLoginDialog.dismiss();
            }
        }

        void c(Context context) {
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                if (activity.isFinishing()) {
                    return;
                }
                activity.finish();
            }
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<RealNameCheckInfo>> call, Throwable t10) {
            boolean unused = UtilsMy.f49394c = false;
            GameRoomActivity.x xVar = this.f49424d;
            if (xVar != null) {
                xVar.onFail(this.f49425e);
            }
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<RealNameCheckInfo>> call, Response<ResponseModel<RealNameCheckInfo>> response) {
            GameRoomActivity.x xVar;
            boolean unused = UtilsMy.f49394c = false;
            if (response == null || response.body() == null || response.body().getCode() != 200) {
                return;
            }
            final RealNameCheckInfo data = response.body().getData();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("RealNameCheckInfo ");
            sb2.append(n6.b.b(data));
            if (data == null || !data.isPopup()) {
                if (data != null && (xVar = this.f49424d) != null) {
                    xVar.onSuccess(this.f49425e, data.getEndDuration().intValue());
                    return;
                }
                GameRoomActivity.x xVar2 = this.f49424d;
                if (xVar2 != null) {
                    xVar2.onFail(this.f49425e);
                    return;
                }
                return;
            }
            if (data.isNoAge() && data.getStatus() == 0) {
                com.papa.sim.statistic.t.l(this.f49422b).R1(Event.antiAddtionWindowUp, new Ext().setGameId(this.f49423c));
            }
            if (data.getType() == 1) {
                com.papa.sim.statistic.t.l(this.f49422b).R1(Event.realNameDisplayWindow, new Ext().setGameId(this.f49423c));
                UtilsMy.b4(this.f49422b, data, this.f49424d, this.f49425e, this.f49426f.getUid() + "", this.f49427g.getType(), this.f49427g.getAction(), this.f49423c);
                return;
            }
            if (data.isNoAge()) {
                com.papa.sim.statistic.t.l(this.f49422b).R1(Event.nonageAstrictHint, new Ext().setGameId(this.f49423c));
            }
            try {
                if (data.isPopup() && data.getButtonCenter().getEventType().intValue() == 1) {
                    com.papa.sim.statistic.t.l(this.f49422b).R1(Event.realNameUpWindows, new Ext().setGameId(this.f49423c));
                }
                final Context context = this.f49422b;
                final String str = this.f49423c;
                final GameRoomActivity.x xVar3 = this.f49424d;
                final int i10 = this.f49425e;
                final UserInfo userInfo = this.f49426f;
                final LuckHistoryrequest luckHistoryrequest = this.f49427g;
                UtilsMy.d4(context, data, new RealNameLoginDialog.OnBtnClickListener() { // from class: com.join.mgps.Util.g3
                    @Override // com.papa91.view.RealNameLoginDialog.OnBtnClickListener
                    public final void onClick(RealNameLoginDialog realNameLoginDialog, int i11, ButtonBean buttonBean) {
                        this.f49738a.e(context, str, xVar3, i10, userInfo, luckHistoryrequest, data, realNameLoginDialog, i11, buttonBean);
                    }
                });
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class f implements FilenameFilter {
        f() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String name) {
            return name != null && name.endsWith(".so");
        }
    }

    class f0 implements RealNameCallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49428a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoomActivity.x f49429b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f49430c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f49431d;

        f0(final Context val$context, final GameRoomActivity.x val$realNameCall, final int val$from, final String val$gameId) {
            this.f49428a = val$context;
            this.f49429b = val$realNameCall;
            this.f49430c = val$from;
            this.f49431d = val$gameId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(PopwindowBean popwindowBean, GameRoomActivity.x xVar, int i10, Context context, RealNameLoginDialog realNameLoginDialog, int i11, ButtonBean buttonBean) {
            realNameLoginDialog.dismiss();
            if (popwindowBean.isNoAge()) {
                if (xVar != null) {
                    xVar.onSuccess(i10, 0, buttonBean);
                }
            } else if (xVar != null) {
                xVar.onSuccess(i10, 0);
            }
            if (buttonBean.getEventType().intValue() == 4 && (context instanceof Activity)) {
                ((Activity) context).finish();
            }
        }

        @Override // com.papa91.arc.interfaces.RealNameCallBack
        public void onCancel(Dialog dialog, ButtonBean button) {
            dialog.dismiss();
            GameRoomActivity.x xVar = this.f49429b;
            if (xVar != null) {
                xVar.onSuccess(this.f49430c, 0, button);
            }
            com.papa.sim.statistic.t.l(this.f49428a).R1(Event.clickClosedRealNameWindow, new Ext().setGameId(this.f49431d));
            if (button.getEventType().intValue() == 4) {
                Context context = this.f49428a;
                if (context instanceof Activity) {
                    ((Activity) context).finish();
                }
            }
        }

        @Override // com.papa91.arc.interfaces.RealNameCallBack
        public void onEvent(String eventName, String ext) {
            Event event = Event.realNameDisplayWindow;
            if (eventName.equals(event.name())) {
                com.papa.sim.statistic.t.l(this.f49428a).R1(event, new Ext().setPosition(ext).setGameId(this.f49431d));
            }
            Event event2 = Event.realNameClickSubmit;
            if (eventName.equals(event2.name())) {
                com.papa.sim.statistic.t.l(this.f49428a).R1(event2, new Ext().setPosition(ext).setGameId(this.f49431d));
            }
        }

        @Override // com.papa91.arc.interfaces.RealNameCallBack
        public void onFail(int code) {
        }

        @Override // com.papa91.arc.interfaces.RealNameCallBack
        public void onSuccess(Dialog dialog, final PopwindowBean pop_window) {
            if (pop_window.isPopup()) {
                final Context context = this.f49428a;
                final GameRoomActivity.x xVar = this.f49429b;
                final int i10 = this.f49430c;
                UtilsMy.d4(context, pop_window, new RealNameLoginDialog.OnBtnClickListener() { // from class: com.join.mgps.Util.i3
                    @Override // com.papa91.view.RealNameLoginDialog.OnBtnClickListener
                    public final void onClick(RealNameLoginDialog realNameLoginDialog, int i11, ButtonBean buttonBean) {
                        UtilsMy.f0.b(pop_window, xVar, i10, context, realNameLoginDialog, i11, buttonBean);
                    }
                });
            } else {
                GameRoomActivity.x xVar2 = this.f49429b;
                if (xVar2 != null) {
                    xVar2.onSuccess(this.f49430c, 0);
                }
            }
            dialog.dismiss();
        }
    }

    class g implements FilenameFilter {
        g() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String name) {
            return name.endsWith(".so");
        }
    }

    class g0 extends m6.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.callbacks.x f49432a;

        g0(final com.join.mgps.callbacks.x val$callback) {
            this.f49432a = val$callback;
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void a(Activity activity) {
            super.a(activity);
            com.join.mgps.callbacks.x xVar = this.f49432a;
            if (xVar != null) {
                xVar.a(activity);
            }
            if (activity != null) {
                activity.finish();
            }
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void b(Activity activity) {
            com.join.mgps.callbacks.x xVar = this.f49432a;
            if (xVar != null) {
                xVar.b(activity);
            }
            super.b(activity);
        }
    }

    class h extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f49433b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f49434c;

        h(final String val$gameId, final Context val$context) {
            this.f49433b = val$gameId;
            this.f49434c = val$context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            q5.f.M().l0(this.f49433b, true);
            Intent intent = new Intent(p5.a.f96203k);
            intent.putExtra("gameId", this.f49433b);
            this.f49434c.sendBroadcast(intent);
        }
    }

    class h0 extends e6.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49435a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f49436b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49437c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f49438d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ExtBean f49439e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ UserPrefs f49440f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f49441g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f49442h;

        h0(final Context val$context, final String val$gameId, final DownloadTask val$downloadTask, final String val$from, final ExtBean val$extBean, final UserPrefs val$userPrefs, final int val$u, final int val$adc) {
            this.f49435a = val$context;
            this.f49436b = val$gameId;
            this.f49437c = val$downloadTask;
            this.f49438d = val$from;
            this.f49439e = val$extBean;
            this.f49440f = val$userPrefs;
            this.f49441g = val$u;
            this.f49442h = val$adc;
        }

        @Override // e6.c, e6.b
        public void onAdClose() {
            UtilsMy.L2(this.f49435a, this.f49436b, this.f49437c.getPackageName(), this.f49437c, this.f49438d, this.f49439e);
        }

        @Override // e6.c, e6.b
        public void onAdShow() {
            this.f49440f.setAdGamesConfig(this.f49441g + "", this.f49442h);
        }

        @Override // e6.c, e6.b
        public void onDirectLaunch() {
            UtilsMy.L2(this.f49435a, this.f49436b, this.f49437c.getPackageName(), this.f49437c, this.f49438d, this.f49439e);
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49443b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GameDetailRankingTag f49444c;

        i(final Context val$context, final GameDetailRankingTag val$tag) {
            this.f49443b = val$context;
            this.f49444c = val$tag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            RankingHomeActivity_.intent(this.f49443b).c(1001).b(this.f49444c.getHot_game().getType()).a(this.f49444c.getHot_game().getId()).d(this.f49444c.getHot_game().getSub_title()).start();
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49445b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GameDetailRankingTag f49446c;

        j(final Context val$context, final GameDetailRankingTag val$tag) {
            this.f49445b = val$context;
            this.f49446c = val$tag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            RankingHomeActivity_.intent(this.f49445b).c(1001).b(this.f49446c.getTag_game().getType()).a(this.f49446c.getTag_game().getId()).d(this.f49446c.getTag_game().getSub_title()).start();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MApplication.f3170c2 = true;
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49447b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ TipBean f49448c;

        l(final Context val$context, final TipBean val$tipBean) {
            this.f49447b = val$context;
            this.f49448c = val$tipBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.intent(this.f49447b).b(0).d(this.f49448c.getName()).e(Integer.parseInt(this.f49448c.getId())).start();
        }
    }

    class m extends m6.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49449a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49450b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f49451c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f49452d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f49453e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f49454f;

        m(final Context val$context, final DownloadTask val$downloadTask, final List val$downloadUrlBeans, final int val$otherOpen, final int val$cdnOpen, final DownloadGameArgsBean val$downArgs) {
            this.f49449a = val$context;
            this.f49450b = val$downloadTask;
            this.f49451c = val$downloadUrlBeans;
            this.f49452d = val$otherOpen;
            this.f49453e = val$cdnOpen;
            this.f49454f = val$downArgs;
        }

        @Override // m6.a, com.join.mgps.callbacks.a
        public void a(Activity activity) {
            super.a(activity);
            activity.finish();
        }

        @Override // m6.a, com.join.mgps.callbacks.a
        public void b(Activity activity) {
            super.b(activity);
            UtilsMy.j1(this.f49449a, this.f49450b, this.f49451c, this.f49452d, this.f49453e, activity, this.f49454f);
            activity.finish();
        }
    }

    class n extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f49455b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f49456c;

        n(final String val$gameid, final Context val$context) {
            this.f49455b = val$gameid;
            this.f49456c = val$context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(1000L);
                Intent intent = new Intent();
                intent.setAction("com.wufun.get.downFinish");
                intent.putExtra("gameid", this.f49455b);
                LocalBroadcastManager.getInstance(this.f49456c).sendBroadcast(intent);
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
    }

    class o implements GameRoomActivity.x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49457a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f49458b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f49459c;

        o(final Context val$context, final String val$finalGameId, final DownloadGameArgsBean val$argsBean) {
            this.f49457a = val$context;
            this.f49458b = val$finalGameId;
            this.f49459c = val$argsBean;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            UtilsMy.V2(this.f49457a, this.f49458b, this.f49459c);
        }
    }

    class p implements GameRoomActivity.x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49460a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f49461b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadGameArgsBean f49462c;

        p(final Context val$context, final String val$finalGameId, final DownloadGameArgsBean val$argsBean) {
            this.f49460a = val$context;
            this.f49461b = val$finalGameId;
            this.f49462c = val$argsBean;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            UtilsMy.V2(this.f49460a, this.f49461b, this.f49462c);
        }
    }

    class q implements GameRoomActivity.x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49463a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f49464b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f49465c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f49466d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f49467e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f49468f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f49469g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ String f49470h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ boolean f49471i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ String f49472j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ int f49473k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ int f49474l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        final /* synthetic */ String f49475m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final /* synthetic */ String f49476n;

        q(final Context val$context, final String val$gameId, final int val$from, final int val$fromType, final String val$recPosition, final String val$remarks, final String val$nodeId, final String val$volcannoOtherJson, final boolean val$isFromRecomDown, final String val$packagePath, final int val$downType, final int val$location, final String val$ext, final String val$where) {
            this.f49463a = val$context;
            this.f49464b = val$gameId;
            this.f49465c = val$from;
            this.f49466d = val$fromType;
            this.f49467e = val$recPosition;
            this.f49468f = val$remarks;
            this.f49469g = val$nodeId;
            this.f49470h = val$volcannoOtherJson;
            this.f49471i = val$isFromRecomDown;
            this.f49472j = val$packagePath;
            this.f49473k = val$downType;
            this.f49474l = val$location;
            this.f49475m = val$ext;
            this.f49476n = val$where;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this.f49463a).extra("gameDownloadDetail", this.f49464b)).extra("_from", this.f49465c)).extra("_from_type", this.f49466d)).extra("recPosition", this.f49467e)).extra("remarks", this.f49468f)).extra("nodeId", this.f49469g)).extra("volcanoOther", this.f49470h)).extra("fromRecomDown", this.f49471i)).extra("packagePath", this.f49472j)).extra("downType", this.f49473k)).extra("location", this.f49474l)).extra("ext", this.f49475m)).extra("fromRecomDown", this.f49471i)).extra("where", this.f49476n)).a();
        }
    }

    class r extends m6.a {
        r() {
        }

        @Override // m6.a, com.join.mgps.callbacks.a
        public void a(Activity activity) {
            super.a(activity);
            activity.finish();
        }

        @Override // m6.a, com.join.mgps.callbacks.a
        public void b(Activity activity) {
            super.b(activity);
            activity.finish();
        }
    }

    class s extends m6.a {
        s() {
        }

        @Override // m6.a, com.join.mgps.callbacks.a
        public void a(Activity activity) {
            super.a(activity);
            activity.finish();
        }

        @Override // m6.a, com.join.mgps.callbacks.a
        public void b(Activity activity) {
            super.b(activity);
            activity.finish();
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f49477b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AlertDialog f49478c;

        t(final Activity val$activity, final AlertDialog val$dialog) {
            this.f49477b = val$activity;
            this.f49478c = val$dialog;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!UtilsMy.f49396e || this.f49477b.isFinishing() || this.f49477b.isDestroyed()) {
                return;
            }
            this.f49478c.show();
        }
    }

    class u implements v6.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AlertDialog f49479a;

        u(final AlertDialog val$dialog) {
            this.f49479a = val$dialog;
        }

        @Override // v6.d
        public void a() {
            boolean unused = UtilsMy.f49396e = true;
        }

        @Override // v6.d
        public void b() {
            AlertDialog alertDialog = this.f49479a;
            if (alertDialog == null || !alertDialog.isShowing()) {
                return;
            }
            this.f49479a.dismiss();
        }
    }

    class v implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Dialog f49480b;

        v(final Dialog val$dialog) {
            this.f49480b = val$dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f49480b.dismiss();
        }
    }

    class w implements v6.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AlertDialog f49481a;

        w(final AlertDialog val$dialog) {
            this.f49481a = val$dialog;
        }

        @Override // v6.d
        public void a() {
            boolean unused = UtilsMy.f49396e = true;
        }

        @Override // v6.d
        public void b() {
            AlertDialog alertDialog = this.f49481a;
            if (alertDialog == null || !alertDialog.isShowing()) {
                return;
            }
            this.f49481a.dismiss();
        }
    }

    class x extends m6.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49482a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49483b;

        x(final Context val$context, final DownloadTask val$downloadTask) {
            this.f49482a = val$context;
            this.f49483b = val$downloadTask;
        }

        @Override // m6.a, com.join.mgps.callbacks.a
        public void a(Activity activity) {
            super.a(activity);
            activity.finish();
        }

        @Override // m6.a, com.join.mgps.callbacks.a
        public void b(Activity activity) {
            super.b(activity);
            UtilsMy.n1(this.f49482a, this.f49483b);
            activity.finish();
        }
    }

    class y extends m6.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49484a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49485b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f49486c;

        y(final Context val$context, final DownloadTask val$downloadTask, final CollectionBeanSub val$collectionBeanSub) {
            this.f49484a = val$context;
            this.f49485b = val$downloadTask;
            this.f49486c = val$collectionBeanSub;
        }

        @Override // m6.a, com.join.mgps.callbacks.a
        public void a(Activity activity) {
            super.a(activity);
            activity.finish();
        }

        @Override // m6.a, com.join.mgps.callbacks.a
        public void b(Activity activity) {
            super.b(activity);
            UtilsMy.W0(this.f49484a, this.f49485b, this.f49486c.getTp_down_url(), this.f49486c.getOther_down_switch(), this.f49486c.getCdn_down_switch());
            activity.finish();
        }
    }

    class z extends WebChromeClient {
        z() {
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String origin, GeolocationPermissions.Callback callback) {
            super.onGeolocationPermissionsShowPrompt(origin, callback);
            callback.invoke(origin, true, false);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView view, int progress) {
        }
    }

    public static void A(List<GameDetialBookTag> tipBeans, LinearLayout view, Context context) {
        if (tipBeans == null) {
            return;
        }
        try {
            view.removeAllViews();
            for (int i10 = 0; i10 < tipBeans.size(); i10++) {
                GameDetialBookTag gameDetialBookTag = tipBeans.get(i10);
                View viewInflate = LayoutInflater.from(context).inflate(R.layout.detial_tag_item_modlethree_layout, (ViewGroup) null);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tipText);
                LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.itemBack);
                if (i10 == 0) {
                    linearLayout.setBackgroundResource(R.drawable.detial_tip_first_modlethree);
                }
                textView.setText(gameDetialBookTag.getTitle());
                view.addView(viewInflate);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void A0(Context context, int from, String gameId, String gameType, GameRoomActivity.x realNameCall) {
        if (System.currentTimeMillis() - f49395d < 600) {
            return;
        }
        f49395d = System.currentTimeMillis();
        boolean zBooleanValue = new PrefDef_(context).launch_game_switch().d().booleanValue();
        boolean zBooleanValue2 = new PrefDef_(context).download_game_switch().d().booleanValue();
        if (from == 2) {
            if (!zBooleanValue2) {
                realNameCall.onSuccess(from, 0);
                return;
            }
        } else if (!zBooleanValue) {
            realNameCall.onSuccess(from, 0);
            return;
        }
        RequestModel<LuckHistoryrequest> requestModel = new RequestModel<>();
        requestModel.setDefault(context);
        LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
        if (from == 4) {
            luckHistoryrequest.setType(13);
        } else if (from == 5) {
            luckHistoryrequest.setType(15);
        } else if (from == 6) {
            luckHistoryrequest.setType(301);
        } else {
            luckHistoryrequest.setType(10);
        }
        if (from == 1 || from == 3 || from == 4 || from == 6) {
            luckHistoryrequest.setAction(2);
        } else if (from == 2) {
            luckHistoryrequest.setAction(1);
        } else {
            luckHistoryrequest.setAction(1);
        }
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        luckHistoryrequest.setUserToken(accountData.getToken());
        luckHistoryrequest.setUid(accountData.getUid());
        luckHistoryrequest.setGameType(gameType);
        luckHistoryrequest.setGameId(gameId);
        requestModel.setArgs(luckHistoryrequest);
        if (f49394c) {
            return;
        }
        f49394c = true;
        requestModel.makeSign();
        com.join.mgps.rpc.impl.i.P0().N0().Y0(requestModel).enqueue(new e0(context, gameId, realNameCall, from, accountData, luckHistoryrequest));
    }

    public static void A1(DownloadTask downloadTask, DetailResultBean bean) {
        if (downloadTask == null || bean == null) {
            return;
        }
        downloadTask.setDownload_source_url(bean.getDownload_source_url());
        downloadTask.setDownload_outside_url(bean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(bean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(bean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(bean.getDownload_source_switch_v2());
        downloadTask.setCpu_type(bean.getCpu_type());
        if (t2.i(bean.getExt())) {
            downloadTask.setExt(bean.getExt());
        }
    }

    public static boolean A2(List<TipBean> tipBeans) {
        for (TipBean tipBean : tipBeans) {
            if (tipBean.getId() != null && tipBean.getId().equals("44")) {
                return true;
            }
        }
        return false;
    }

    public static void A3(TipNew showTip, View convertView, DownloadTask downloadTask) {
        try {
            TextView textView = convertView instanceof TextView ? (TextView) convertView : (TextView) convertView.findViewById(R.id.moneyText);
            if (textView == null) {
                return;
            }
            if (downloadTask != null && downloadTask.getStatus() != 0) {
                textView.setVisibility(4);
            } else if (showTip == null || showTip.getCoin() == null) {
                textView.setVisibility(4);
            } else {
                textView.setText(showTip.getCoin().getName());
                textView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void A4(Context context, String gameId, String appkey) {
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData == null || accountData.getAccountType() == 2) {
            IntentUtil.getInstance().goMyAccountLoginActivity(context);
        } else {
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("paygameid", gameId)).extra("fromSdk", true)).extra("appkey", appkey)).a();
        }
    }

    private static void B(StartGameMeta meta, DownloadTask downloadTask) {
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getFight_fun())) {
            return;
        }
        try {
            meta.setScoreBoard(O2(downloadTask.getFight_fun(), 16));
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void B0() {
        Activity activity = MApplication.f3182z.getActivity();
        if ((activity instanceof HideAppCalculatorActivity) || (activity instanceof HideAppNotebookActivity) || (activity instanceof SimulatorExitPlayActivity)) {
            return;
        }
        PrefDef_ prefDef_P = MApplication.f3182z.p();
        Integer numD = prefDef_P.hide_app_switch().d();
        if (numD.intValue() <= 0 || TextUtils.isEmpty(prefDef_P.hide_app_pwd().d())) {
            return;
        }
        if (numD.intValue() == 1) {
            ((HideAppNotebookActivity_.b) HideAppNotebookActivity_.intent(MApplication.f3182z).a(true).flags(C.ENCODING_PCM_MU_LAW)).start();
        } else if (numD.intValue() == 2) {
            ((HideAppCalculatorActivity_.e) HideAppCalculatorActivity_.intent(MApplication.f3182z).a(true).flags(C.ENCODING_PCM_MU_LAW)).start();
        }
    }

    public static void B1(DownloadTask downloadTask, DetailResultBeanV3 bean) {
        if (downloadTask == null || bean == null) {
            return;
        }
        downloadTask.setDownload_source_url(bean.getDownload_source_url());
        downloadTask.setDownload_outside_url(bean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(bean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(bean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(bean.getDownload_source_switch_v2());
    }

    public static boolean B2(Context context) {
        long jI = com.join.mgps.pref.h.n(context).I();
        DownloadCfg down_load_unrestricted_speed = MApplication.U.getDown_load_unrestricted_speed();
        if (jI == 0) {
            return true;
        }
        return down_load_unrestricted_speed != null && t2.i(down_load_unrestricted_speed.getCfg_values_express()) && System.currentTimeMillis() - jI < ((long) (Integer.parseInt(down_load_unrestricted_speed.getCfg_values_express()) * 86400000));
    }

    public static void B3(TipNew showTip, TextView tongban) {
        if (tongban == null) {
            return;
        }
        if (showTip == null || showTip.getCoin() == null) {
            tongban.setVisibility(4);
        } else {
            tongban.setText(showTip.getCoin().getName());
            tongban.setVisibility(0);
        }
    }

    private static void B4(final String intentData, final Context context) {
        new e(intentData, context).start();
    }

    public static void C(List<GameTagInfoV2_2Bean> tipBeans, String appSize, LinearLayout view, Context context) {
        if (tipBeans == null) {
            return;
        }
        try {
            view.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(4, 0, 4, 0);
            for (GameTagInfoV2_2Bean gameTagInfoV2_2Bean : tipBeans) {
                if (gameTagInfoV2_2Bean.getId() != null && !gameTagInfoV2_2Bean.getId().equals("") && !gameTagInfoV2_2Bean.getId().equals("44") && !gameTagInfoV2_2Bean.getId().equals("45") && !gameTagInfoV2_2Bean.getId().equals("47") && !gameTagInfoV2_2Bean.getId().equals("48")) {
                    TextView textView = new TextView(context);
                    textView.setLayoutParams(layoutParams);
                    textView.setGravity(17);
                    textView.setText(gameTagInfoV2_2Bean.getName() + "");
                    textView.setTextColor(Color.parseColor(gameTagInfoV2_2Bean.getColor()));
                    textView.setPadding(0, 0, 0, 0);
                    textView.setSingleLine(true);
                    textView.setTextSize(context.getResources().getDimension(R.dimen.wdp8));
                    textView.setBackgroundDrawable(z2.a(context, gameTagInfoV2_2Bean.getColor() + ""));
                    view.addView(textView);
                }
            }
            TextView textView2 = new TextView(context);
            textView2.setLayoutParams(layoutParams);
            textView2.setGravity(17);
            textView2.setText(appSize + "");
            textView2.setTextColor(Color.parseColor("#81dfce"));
            textView2.setPadding(0, 0, 0, 0);
            textView2.setSingleLine(true);
            textView2.setTextSize(context.getResources().getDimension(R.dimen.wdp8));
            textView2.setBackgroundDrawable(z2.a(context, "#81dfce"));
            view.addView(textView2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean C0(Context context, DownloadTask downloadTask, boolean supportFinger, boolean support64Bit, boolean needUpdate, com.join.mgps.callbacks.x callback) {
        String strA;
        if (downloadTask.isMod() || APKUtils.P(downloadTask)) {
            strA = com.join.mgps.va.overmind.k.f73277a.A(downloadTask.getPackageName());
        } else {
            try {
                strA = context.getPackageManager().getApplicationInfo(downloadTask.getPackageName(), 0).sourceDir;
            } catch (PackageManager.NameNotFoundException unused) {
                return false;
            }
        }
        if (APKUtils.m() == 64) {
            boolean zContains = new PrefDef_(context).launchGameUnsupportedTipIds().e("").contains(downloadTask.getCrc_link_type_val());
            if (!com.join.mgps.va.overmind.c.b(com.join.mgps.va.overmind.c.d(strA)) || (!supportFinger && needUpdate)) {
                if (zContains && !support64Bit) {
                    return false;
                }
                WarningDialogActivity.WarningDialogParam warningDialogParam = new WarningDialogActivity.WarningDialogParam();
                warningDialogParam.setType(0);
                warningDialogParam.setGameId(downloadTask.getCrc_link_type_val());
                warningDialogParam.setTitle("此设备运行该游戏稳定性欠佳!");
                warningDialogParam.setPositive("启动");
                if (support64Bit) {
                    warningDialogParam.setNegative("更新");
                    String resource_path = downloadTask.getResource_path();
                    try {
                        if (t2.i(resource_path) && com.join.mgps.va.overmind.i.q().l(resource_path) && !supportFinger) {
                            warningDialogParam.setContent("此设备系统无法稳定运行ARM 32位游戏包:如启动异常，请更新至ARM 64位游戏包，64位游戏包暂不支持<font color='#F1C5AA'>金手指</font>功能。");
                        } else {
                            warningDialogParam.setContent("此设备系统无法稳定运行ARM 32位游戏包:如启动异常，请更新至ARM 64位游戏包。");
                        }
                    } catch (Exception unused2) {
                        warningDialogParam.setContent("此设备系统无法稳定运行ARM 32位游戏包:如启动异常，请更新至ARM 64位游戏包。");
                    }
                } else {
                    warningDialogParam.setContent("此设备最低兼容ARM 64位游戏，继续启动游戏可能出现闪退、黑屏、卡顿、延迟等问题~");
                    warningDialogParam.setEvent(2);
                    warningDialogParam.setNegative("取消");
                }
                Intent intent = new Intent();
                intent.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam);
                IntentUtil.getInstance().startActivityWithCallback(context, WarningDialogActivity.class, intent, new g0(callback));
                return true;
            }
        }
        return false;
    }

    public static void C1(DownloadTask downloadTask, GameDiscoverBean bean) {
        if (downloadTask == null || bean == null) {
            return;
        }
        downloadTask.setDownload_source_url(bean.getDownload_source_url());
        downloadTask.setDownload_outside_url(bean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(bean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(bean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(bean.getDownload_source_switch_v2());
        downloadTask.setCpu_type(bean.getCpu_type());
    }

    public static String C3(double value) {
        return new DecimalFormat("###.00").format(value);
    }

    public static void C4(Context context, WxProgram wxProgram) {
        try {
            if (wxProgram == null) {
                ToastManager.show("无法调起微信小程序");
                return;
            }
            if (!com.join.android.app.common.utils.g.t0(context).e(context, "com.tencent.mm")) {
                com.join.mgps.Util.h0.h0(context).b0(context, wxProgram);
                return;
            }
            String str = new String(com.join.mgps.Util.p.a(wxProgram.getExtend()), "UTF-8");
            String strB = "";
            if (t2.i(str)) {
                if (wxProgram.getAbuid() == null) {
                    wxProgram.setAbuid("0");
                }
                strB = com.join.mgps.Util.p.b(str.replace("[abuid]", wxProgram.getAbuid()).getBytes());
            }
            L4(context, wxProgram.getApp_id(), wxProgram.getOriginal_id(), wxProgram.getApp_path() + strB);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void D(Context context) {
        Activity activity = MApplication.f3182z.getActivity();
        if (activity == null || (activity instanceof HideAppCalculatorActivity) || (activity instanceof HideAppNotebookActivity)) {
            return;
        }
        PrefDef_ prefDef_P = MApplication.f3182z.p();
        Integer numD = prefDef_P.hide_app_switch().d();
        if (numD.intValue() <= 0 || TextUtils.isEmpty(prefDef_P.hide_app_pwd().d())) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView().findViewById(android.R.id.content);
        if (viewGroup.findViewById(R.id.hideAppMask) != null) {
            return;
        }
        View viewInflate = LayoutInflater.from(context).inflate(numD.intValue() == 2 ? R.layout.activity_hide_app_calculator : R.layout.activity_hide_app_notebook, (ViewGroup) null);
        viewInflate.setId(R.id.hideAppMask);
        viewGroup.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
    }

    public static boolean D0(Context context, EMUApkTable emuApkTable) {
        if (emuApkTable == null) {
            return false;
        }
        try {
            if (emuApkTable.getDown_type() == 2) {
                return com.join.android.app.common.utils.o.z(emuApkTable);
            }
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(emuApkTable.getPackage_name(), 0);
                if (packageInfo == null) {
                    return false;
                }
                try {
                    int i10 = packageInfo.versionCode;
                    String ver_compatible = emuApkTable.getVer_compatible();
                    String ver = emuApkTable.getVer();
                    String[] strArrSplit = ver_compatible.split("_");
                    String[] strArrSplit2 = ver.split("_");
                    if (strArrSplit.length == 2 && i10 < Integer.parseInt(strArrSplit[0])) {
                        return true;
                    }
                    if (strArrSplit2.length != 2 || i10 >= Integer.parseInt(strArrSplit2[0])) {
                        return strArrSplit.length == 1 && i10 < Integer.parseInt(strArrSplit[0]);
                    }
                    emuApkTable.setCanUpdate(true);
                    return false;
                } catch (Exception unused) {
                }
            } catch (Exception e10) {
                e10.getLocalizedMessage();
                return false;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return false;
    }

    public static void D1(DownloadTask downloadTask, GamedetialModleFourBean bean) {
        if (downloadTask == null || bean == null) {
            return;
        }
        downloadTask.setDownload_source_url(bean.getDownload_source_url());
        downloadTask.setDownload_outside_url(bean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(bean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(bean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(bean.getDownload_source_switch_v2());
        downloadTask.setCpu_type(bean.getCpu_type());
    }

    public static void D3(TextView mgListviewItemInstall, DetailResultBeanV3 collectionBeanSub) {
        try {
            int down_status = collectionBeanSub.getDown_status();
            collectionBeanSub.getPay_tag_info();
            String crc_sign_id = collectionBeanSub.getCrc_sign_id();
            collectionBeanSub.getDownload_source_switch_v2();
            mgListviewItemInstall.setEnabled(true);
            int iX0 = x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
            boolean z10 = w0(iX0, crc_sign_id) > 0;
            if (down_status == 3 && !z10) {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            } else if ((down_status == 2 || down_status == 6) && !z10) {
                mgListviewItemInstall.setText("即将开放");
                mgListviewItemInstall.setEnabled(false);
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
            } else if (down_status != 6 || z10) {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
                if (iX0 > 0) {
                    mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, t2.n(iX0)));
                } else {
                    mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                }
            } else {
                mgListviewItemInstall.setText("预约");
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void D4(Context context, String info, String sceneType) {
        E4(context, info, sceneType, "0");
    }

    private static boolean E(Context context, StartGameMeta meta, EMUApkTable emuApkTable) {
        meta.setApkOrSo(emuApkTable.getDown_type());
        String apkPath = emuApkTable.getApkPath();
        if (emuApkTable.getDown_type() == 2 && (TextUtils.isEmpty(apkPath) || !v2(emuApkTable))) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("addPluginParam: plugin so not ready, tag=");
            sb2.append(emuApkTable.getTag_id());
            sb2.append(", apkPath=");
            sb2.append(apkPath);
            meta.setAssetspath("");
            meta.setSopath("");
            if (context == null) {
                return false;
            }
            q1(emuApkTable, context);
            return false;
        }
        if (TextUtils.isEmpty(apkPath)) {
            meta.setAssetspath("");
            meta.setSopath("");
        } else {
            meta.setAssetspath(apkPath + "/assets/");
            if (Overmind.is64Bit()) {
                meta.setSopath(apkPath + "/arm64-v8a/");
            } else {
                meta.setSopath(apkPath + "/so/");
            }
        }
        if (emuApkTable.getDown_type() == 2) {
            meta.setPackageName(context.getPackageName());
        }
        if (context == null) {
            return true;
        }
        PrefDef_ prefDef_ = new PrefDef_(context);
        meta.setPspAdShowTime(prefDef_.pspAdShowTime().d().intValue());
        meta.setPspAdShowTimeSwitch(prefDef_.pspAdShowTimeSwitch().d().intValue());
        meta.setChannelId(com.papa.sim.statistic.m.a(context));
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0051 A[Catch: Exception -> 0x0091, TryCatch #2 {Exception -> 0x0091, blocks: (B:5:0x0006, B:7:0x000d, B:9:0x0012, B:11:0x0032, B:16:0x0058, B:32:0x008d, B:13:0x0051, B:17:0x005c), top: B:42:0x0006, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0057 A[RETURN] */
    public static boolean E0(Context context, EMUApkTable emuApkTable) {
        if (emuApkTable == null) {
            return false;
        }
        try {
            if (emuApkTable.getDown_type() == 2) {
                return com.join.android.app.common.utils.o.x(emuApkTable);
            }
            if (!(ConstantIntEnum.VA32.value() + "").equals(emuApkTable.getTag_id())) {
                if ((ConstantIntEnum.VA64.value() + "").equals(emuApkTable.getTag_id())) {
                    if (APKUtils.Q(context, emuApkTable)) {
                        return true;
                    }
                }
            } else if (APKUtils.Q(context, emuApkTable)) {
                return true;
            }
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(emuApkTable.getPackage_name(), 0);
                if (packageInfo == null) {
                    return false;
                }
                try {
                    int i10 = packageInfo.versionCode;
                    String[] strArrSplit = emuApkTable.getVer().split("_");
                    if (strArrSplit.length != 2 || i10 >= Integer.parseInt(strArrSplit[0])) {
                        return strArrSplit.length == 1 && i10 < Integer.parseInt(strArrSplit[0]);
                    }
                    return true;
                } catch (Exception unused) {
                }
            } catch (Exception e10) {
                e10.getLocalizedMessage();
                return false;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return false;
    }

    public static void E1(DownloadTask downloadTask, TodayWufunBroadcast bean) {
        if (downloadTask == null || bean == null) {
            return;
        }
        downloadTask.setDownload_source_url(bean.getDownload_source_url());
        downloadTask.setDownload_outside_url(bean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(bean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(bean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(bean.getDownload_source_switch_v2());
        downloadTask.setCpu_type(bean.getCpu_type());
    }

    private static void E2(Context context, StartGameMeta meta) {
        F2(context, meta, 0);
    }

    public static void E3(TextView mgListviewItemInstall, GamedetialModleFourBean collectionBeanSub) {
        try {
            int down_status = collectionBeanSub.getDown_status();
            collectionBeanSub.getPay_tag_info();
            String game_id = collectionBeanSub.getGame_id();
            collectionBeanSub.getDownload_source_switch_v2();
            mgListviewItemInstall.setEnabled(true);
            int iX0 = x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
            boolean z10 = w0(iX0, game_id) > 0;
            if (down_status == 3 && !z10) {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            } else if (down_status == 2 && !z10) {
                mgListviewItemInstall.setText("即将开放");
                mgListviewItemInstall.setEnabled(false);
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
            } else if (down_status == 6 && collectionBeanSub.getGame_book() == 0 && !z10) {
                mgListviewItemInstall.setText("预约");
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            } else if (down_status == 6 && collectionBeanSub.getGame_book() == 1 && !z10) {
                mgListviewItemInstall.setText("已预约");
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            } else {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
                if (iX0 > 0) {
                    mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, t2.n(iX0)));
                } else {
                    mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void E4(Context context, String info, String sceneType, String abUid) {
        if (t2.i(info)) {
            try {
                WxProgram wxProgram = (WxProgram) JsonMapper.getInstance().fromJson(com.join.mgps.Util.a.b(info), WxProgram.class);
                if (wxProgram != null) {
                    wxProgram.setAbuid(abUid);
                    wxProgram.setSceneType(sceneType);
                    C4(context, wxProgram);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void F(GameDetailRankingTag tag, LinearLayout view, Context context) {
        if (tag == null) {
            return;
        }
        try {
            view.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, view.getResources().getDimensionPixelOffset(R.dimen.wdp14), 0);
            if (tag.getHot_game() != null) {
                View viewInflate = View.inflate(context, R.layout.item_game_detail_bt_ranking_tag, null);
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_icon);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_title);
                imageView.setVisibility(0);
                imageView.setImageResource(R.drawable.ic_game_detail_bt_ranking);
                textView.setText(Html.fromHtml(tag.getHot_game().getTitle()));
                view.addView(viewInflate, layoutParams);
                viewInflate.setOnClickListener(new i(context, tag));
            }
            if (tag.getTag_game() != null) {
                View viewInflate2 = View.inflate(context, R.layout.item_game_detail_bt_ranking_tag, null);
                ImageView imageView2 = (ImageView) viewInflate2.findViewById(R.id.iv_icon);
                TextView textView2 = (TextView) viewInflate2.findViewById(R.id.tv_title);
                imageView2.setImageResource(R.drawable.ic_game_detail_bt_ranking);
                textView2.setText(Html.fromHtml(tag.getTag_game().getTitle()));
                imageView2.setVisibility(0);
                view.addView(viewInflate2, layoutParams);
                viewInflate2.setOnClickListener(new j(context, tag));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean F0(String newCode, String newVersion, String oldCode, String oldVersion) {
        if (newCode != null && oldCode != null && newVersion != null && oldVersion != null) {
            try {
                if (!newCode.equals("") && !"".equals(oldCode) && !"".equals(newVersion) && !"".equals(oldVersion)) {
                    if (Integer.parseInt(newCode) > Integer.parseInt(oldCode)) {
                        return true;
                    }
                    return !newVersion.equals(oldVersion);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public static void F1(DownloadTask downloadTask, TodayWufunEverday bean) {
        if (downloadTask == null || bean == null) {
            return;
        }
        downloadTask.setDownload_source_url(bean.getDownload_source_url());
        downloadTask.setDownload_outside_url(bean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(bean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(bean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(bean.getDownload_source_switch_v2());
        downloadTask.setCpu_type(bean.getCpu_type());
    }

    private static void F2(Context context, StartGameMeta meta, int netBattle) {
        if (netBattle == 1) {
            n2.g(context).b(context, meta);
        } else {
            n2.g(context).a(context, meta);
        }
        Z1(context, 8, meta.getGameID());
    }

    public static void F3(TextView mgListviewItemInstall, GamedetialModleFourBean collectionBeanSub) {
        mgListviewItemInstall.setEnabled(true);
        int down_status = collectionBeanSub.getDown_status();
        collectionBeanSub.getPay_tag_info();
        String crc_sign_id = collectionBeanSub.getCrc_sign_id();
        collectionBeanSub.getDownload_source_switch_v2();
        int iX0 = x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id());
        boolean z10 = w0(iX0, crc_sign_id) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
        } else {
            if (down_status == 6 && !z10) {
                mgListviewItemInstall.setText("预约");
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_video_install_selecter);
                return;
            }
            mgListviewItemInstall.setText("立即获取");
            if (iX0 > 0) {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, t2.n(iX0)));
            } else {
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_video_install_selecter);
            }
        }
    }

    public static boolean F4(final Context context, final String userId, final DownloadTask downloadTask, int startMode, String filePath, boolean isFromEndGame) {
        int i10;
        String gameZipPath = downloadTask.getGameZipPath();
        String strSubstring = gameZipPath.substring(0, gameZipPath.lastIndexOf(o0.f49827a));
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        EMUApkTable eMUApkTableV = V(context, downloadTask, isFromEndGame);
        if (eMUApkTableV == null) {
            return false;
        }
        try {
            i10 = Integer.parseInt(downloadTask.getRomType());
        } catch (Exception unused) {
            i10 = 33;
        }
        StartGameMeta startGameMeta = new StartGameMeta();
        startGameMeta.setPackageName(eMUApkTableV.getPackage_name());
        startGameMeta.setActivityName(eMUApkTableV.getLaunch_name());
        startGameMeta.setRomPath(strSubstring);
        startGameMeta.setStartMode(startMode);
        startGameMeta.setGameID(crc_link_type_val);
        startGameMeta.setUserID(userId);
        startGameMeta.setNetState(filePath);
        startGameMeta.setType(i10);
        startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
        Z4(context, downloadTask, startGameMeta);
        startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
        startGameMeta.setRamCheck(downloadTask.getSync_memory());
        startGameMeta.setNetMode(1);
        startGameMeta.setSp(0);
        startGameMeta.setGametype(P2(downloadTask.getTipBeans()));
        if (!E(context, startGameMeta, eMUApkTableV)) {
            return false;
        }
        E2(context, startGameMeta);
        return true;
    }

    public static void G(String score, int down_count, String appSize, TipNew showTip, List<TipBean> tags, LinearLayout view, Context context) {
        TipBean model;
        TipBean tipBean;
        if (t2.h(appSize)) {
            appSize = "1";
        }
        view.removeAllViews();
        TipBean tipBean2 = null;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout_similar, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.appsize);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.appType);
        if (showTip == null || (model = showTip.getModel()) == null) {
            textView2.setVisibility(8);
        } else if ("7".equals(model.getId()) || "23".equals(model.getId())) {
            String name = "安卓";
            if (tags != null) {
                ArrayList<TipBean> arrayList = new ArrayList();
                for (TipBean tipBean3 : tags) {
                    if (tipBean3.getId() != null && !tipBean3.getId().equals("") && !tipBean3.getId().equals("44") && !tipBean3.getId().equals("45") && !tipBean3.getId().equals("47") && !tipBean3.getId().equals("48")) {
                        arrayList.add(tipBean3);
                    }
                }
                int i10 = 0;
                if (arrayList.size() == 2) {
                    TipBean tipBean4 = (TipBean) arrayList.get(0);
                    name = tipBean4 != null ? tipBean4.getName() : "安卓";
                    if (arrayList.size() > 1 && (tipBean = (TipBean) arrayList.get(1)) != null) {
                        name = name + " · " + tipBean.getName();
                    }
                } else if (arrayList.size() == 1) {
                    TipBean tipBean5 = (TipBean) arrayList.get(0);
                    if (tipBean5 != null) {
                        name = "安卓 · " + tipBean5.getName();
                    }
                } else {
                    for (TipBean tipBean6 : arrayList) {
                        if (!"7".equals(tipBean6.getId())) {
                            name = i10 == 0 ? tipBean6.getName() : name + "·" + tipBean6.getName();
                            i10++;
                            if (i10 == 2) {
                                break;
                            }
                        }
                    }
                }
            }
            textView2.setText(name);
        } else {
            if (tags != null) {
                for (TipBean tipBean7 : tags) {
                    if (t2.i(tipBean7.getId()) && !tipBean7.getId().equals(showTip.getModel().getId())) {
                        tipBean2 = tipBean7;
                        break;
                    }
                }
            }
            if (tipBean2 != null) {
                textView2.setText(showTip.getModel().getName() + " · " + tipBean2.getName());
            } else {
                textView2.setText(showTip.getModel().getName());
            }
        }
        long j10 = (long) (Double.parseDouble(appSize) * 1048576.0d);
        if (!t2.i(score) || "0".equals(score) || "0.0".equals(score)) {
            textView.setText(Z2(j10));
        } else {
            textView.setText(Z2(j10) + " · " + score + "分");
        }
        view.addView(viewInflate);
    }

    public static boolean G0(String newCfg_verCode, String oldCfg_verCode) {
        if (newCfg_verCode != null) {
            try {
                if (!newCfg_verCode.equals("") && !"1".equals(newCfg_verCode) && !"0".equals(newCfg_verCode) && (oldCfg_verCode == null || "".equals(oldCfg_verCode) || Integer.parseInt(newCfg_verCode) > Integer.parseInt(oldCfg_verCode))) {
                    return true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public static void G1(DownloadTask downloadTask, TodayWufunTodayNew bean) {
        if (downloadTask == null || bean == null) {
            return;
        }
        downloadTask.setDownload_source_url(bean.getDownload_source_url());
        downloadTask.setDownload_outside_url(bean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(bean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(bean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(bean.getDownload_source_switch_v2());
        downloadTask.setCpu_type(bean.getCpu_type());
    }

    public static void G2(Context context, String gameId) {
        try {
            H2(context, gameId);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void G3(Button mgListviewItemInstall, GameDiscoverBean gameDiscoverBean) {
        int down_status = gameDiscoverBean.getDown_status();
        PayTagInfo pay_tag_info = gameDiscoverBean.getPay_tag_info();
        String crc_sign_id = gameDiscoverBean.getCrc_sign_id();
        int iX0 = x0(pay_tag_info, crc_sign_id);
        mgListviewItemInstall.setEnabled(true);
        boolean z10 = w0(iX0, crc_sign_id) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
        } else {
            if (down_status == 6 && !z10) {
                mgListviewItemInstall.setText("预约");
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
                return;
            }
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
            if (iX0 > 0) {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, t2.n(iX0)));
            } else {
                mgListviewItemInstall.setBackgroundResource(R.drawable.detial_simple_normal_selecter);
            }
        }
    }

    private static void G4(DownloadTask downloadTask, Context context, UpdateIntentDataBean updateIntentDataBean) {
        float f10;
        if (com.join.android.app.common.utils.m.k(context)) {
            u1(context, updateIntentDataBean);
            return;
        }
        if (!com.join.android.app.common.utils.m.i(context)) {
            if (com.join.android.app.common.utils.m.j(context)) {
                u1(context, updateIntentDataBean);
                return;
            } else {
                u1(context, updateIntentDataBean);
                a3.b(context).d("无网络连接");
                return;
            }
        }
        int iIntValue = new PrefDef_(context).gprsNoticeInfo().d().intValue();
        EMUApkTable eMUApkTableL0 = !Dtype.chajian.name().equals(downloadTask.getFileType()) ? l0(context, downloadTask.getRomType()) : null;
        try {
            f10 = Float.parseFloat(downloadTask.getShowSize());
            if (eMUApkTableL0 != null) {
                try {
                    f10 += Float.parseFloat(eMUApkTableL0.getSize());
                } catch (Exception e10) {
                    e = e10;
                    e.printStackTrace();
                }
            }
        } catch (Exception e11) {
            e = e11;
            f10 = 100.0f;
        }
        if (iIntValue == 0) {
            W3(downloadTask, "游戏资源有更新，确认使用数据流量更新吗？", context, eMUApkTableL0, updateIntentDataBean);
            return;
        }
        if (iIntValue == 1) {
            if (f10 >= 30.0f) {
                W3(downloadTask, "更新资源大于30M，确认使用数据流量吗？", context, eMUApkTableL0, updateIntentDataBean);
                return;
            }
            u1(context, updateIntentDataBean);
            if (eMUApkTableL0 != null) {
                s1(eMUApkTableL0, context);
                return;
            }
            return;
        }
        if (iIntValue == 2) {
            if (f10 >= 50.0f) {
                W3(downloadTask, "更新资源大于50M，确认使用数据流量吗？", context, eMUApkTableL0, updateIntentDataBean);
                return;
            }
            u1(context, updateIntentDataBean);
            if (eMUApkTableL0 != null) {
                s1(eMUApkTableL0, context);
                return;
            }
            return;
        }
        if (iIntValue != 3) {
            if (iIntValue != 4) {
                return;
            }
            u1(context, updateIntentDataBean);
            if (eMUApkTableL0 != null) {
                s1(eMUApkTableL0, context);
                return;
            }
            return;
        }
        if (f10 >= 100.0f) {
            W3(downloadTask, "更新资源大于100M，确认使用数据流量吗？", context, eMUApkTableL0, updateIntentDataBean);
            return;
        }
        u1(context, updateIntentDataBean);
        if (eMUApkTableL0 != null) {
            s1(eMUApkTableL0, context);
        }
    }

    public static void H(List<RecGameTagBean> tipBeans, LinearLayout view, Context context) {
        if (tipBeans == null) {
            return;
        }
        try {
            view.removeAllViews();
            for (RecGameTagBean recGameTagBean : tipBeans) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.rightMargin = (int) context.getResources().getDimension(R.dimen.wdp12);
                View viewInflate = View.inflate(context, R.layout.item_game_detail_similar_game_tag, null);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_text);
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_label);
                if (recGameTagBean.getType() == 1 || recGameTagBean.getType() == 3) {
                    imageView.setVisibility(0);
                    imageView.setImageResource(R.drawable.ic_similar_game_rank);
                } else if (recGameTagBean.getType() == 4) {
                    imageView.setVisibility(0);
                    imageView.setImageResource(R.drawable.ic_similar_game_hot);
                } else {
                    imageView.setVisibility(8);
                }
                textView.setText(recGameTagBean.getTitle());
                view.addView(viewInflate, layoutParams);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void H0(Context context, String inputAssetsfilename, String strOutFileName) throws IOException {
        File file = new File(strOutFileName);
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            Boolean boolValueOf = Boolean.valueOf(parentFile.mkdirs());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(boolValueOf);
            sb2.append("创建文件是否成功");
        }
        if (!file.exists()) {
            file.createNewFile();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(strOutFileName);
        InputStream inputStreamOpen = context.getAssets().open(inputAssetsfilename);
        byte[] bArr = new byte[1024];
        for (int i10 = inputStreamOpen.read(bArr); i10 > 0; i10 = inputStreamOpen.read(bArr)) {
            fileOutputStream.write(bArr, 0, i10);
        }
        fileOutputStream.flush();
        inputStreamOpen.close();
        fileOutputStream.close();
    }

    private static String H1(Context context, String src) {
        String[] list;
        try {
            File file = new File(src);
            if (file.exists() && (list = file.list()) != null && list.length != 0) {
                for (String str : list) {
                    File file2 = new File(file, str);
                    if (!file2.isFile()) {
                        String[] list2 = file2.list();
                        if (list2 != null && list2.length != 0) {
                            for (String str2 : list2) {
                                File file3 = new File(file2, str2);
                                if (file3.isFile() && str.toLowerCase().endsWith(".bin")) {
                                    return file3.getAbsolutePath();
                                }
                            }
                        }
                    } else if (str.toLowerCase().endsWith(".bin")) {
                        return file2.getAbsolutePath();
                    }
                }
                return "";
            }
            return "";
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void H2(Context context, String gameId) {
        try {
            PrefDef_ prefDef_ = new PrefDef_(context);
            prefDef_.downloadSpeedUpCount().d().intValue();
            prefDef_.downloadSpeedUpCountCurrent().d().intValue();
            long jLongValue = prefDef_.downloadSpeedUpLastTime().d().longValue();
            int iIntValue = prefDef_.downloadSpeedUpCountAD().d().intValue();
            int iIntValue2 = prefDef_.downloadSpeedUpCountCurrentAD().d().intValue();
            String strD = prefDef_.downloadSpeedUpGames().d();
            String str = "";
            if (TextUtils.isEmpty(strD)) {
                strD = "";
            }
            if (com.join.mgps.Util.e0.z(jLongValue)) {
                str = strD;
            } else {
                prefDef_.downloadSpeedUpCountCurrentAD().g(0);
                prefDef_.downloadSpeedUpGames().g("");
            }
            if (iIntValue2 >= iIntValue) {
                org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.q(gameId));
                return;
            }
            prefDef_.downloadSpeedUpCountCurrentAD().g(Integer.valueOf(iIntValue2 + 1));
            prefDef_.downloadSpeedUpLastTime().g(Long.valueOf(System.currentTimeMillis()));
            if (!str.contains(gameId)) {
                str = str + gameId + ",";
            }
            prefDef_.downloadSpeedUpGames().g(str);
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.q(gameId));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void H3(TextView mgListviewItemInstall, LinearLayout rLayoutRight, CollectionBeanSub collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String game_id = collectionBeanSub.getGame_id();
        collectionBeanSub.getDownload_source_switch_v2();
        rLayoutRight.setEnabled(true);
        boolean z10 = x0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            rLayoutRight.setEnabled(false);
        } else if (down_status == 6 && !z10) {
            mgListviewItemInstall.setText("预约");
        } else if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
        }
    }

    public static void H4(Context context, String gameId) {
        Intent intent = new Intent("com.tools.AdBroadcast");
        intent.putExtra("action", 6);
        intent.putExtra("gameId", gameId);
        context.sendBroadcast(intent);
    }

    public static void I(List<TipBean> tipBeans, LinearLayout view, Context context) {
        if (tipBeans == null) {
            return;
        }
        try {
            view.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(4, 0, 4, 0);
            for (TipBean tipBean : tipBeans) {
                if (tipBean.getId() != null && !tipBean.getId().equals("") && !tipBean.getId().equals("44") && !tipBean.getId().equals("45") && !tipBean.getId().equals("47") && !tipBean.getId().equals("48")) {
                    TextView textView = new TextView(context);
                    textView.setLayoutParams(layoutParams);
                    textView.setGravity(17);
                    textView.setText(tipBean.getName() + "");
                    textView.setTextColor(Color.parseColor(tipBean.getColor()));
                    textView.setPadding(0, 0, 0, 0);
                    textView.setSingleLine(true);
                    textView.setTextSize(0, context.getResources().getDimension(R.dimen.wdp18));
                    textView.setBackgroundDrawable(z2.a(context, tipBean.getColor() + ""));
                    view.addView(textView);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean I0(String oldPath$Name, String newPath$Name) {
        try {
            File file = new File(newPath$Name);
            if (file.isFile() && file.exists()) {
                file.delete();
            }
            File file2 = new File(oldPath$Name);
            if (!file2.exists() || !file2.isFile() || !file2.canRead()) {
                return false;
            }
            FileInputStream fileInputStream = new FileInputStream(oldPath$Name);
            FileOutputStream fileOutputStream = new FileOutputStream(newPath$Name);
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = fileInputStream.read(bArr);
                if (-1 == i10) {
                    fileInputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return true;
                }
                fileOutputStream.write(bArr, 0, i10);
            }
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("copyFile:  Exception");
            sb2.append(e10.getMessage());
            e10.printStackTrace();
            return false;
        }
    }

    private static boolean I1(Activity activity) {
        try {
            Field declaredField = Activity.class.getDeclaredField("mActivityInfo");
            declaredField.setAccessible(true);
            ((ActivityInfo) declaredField.get(activity)).screenOrientation = -1;
            declaredField.setAccessible(false);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static String I2(double i10) {
        return new DecimalFormat("#0.00").format(i10);
    }

    public static void I3(Button mgListviewItemInstall, int status, PayTagInfo payTagInfo, String gameId) {
        mgListviewItemInstall.setEnabled(true);
        boolean z10 = x0(payTagInfo, gameId) > 0;
        if (status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            return;
        }
        if (status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setEnabled(false);
            mgListviewItemInstall.setTextColor(-7763575);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (payTagInfo == null || payTagInfo.getAmount_check() <= 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, payTagInfo.getPayGameAmount()));
        }
    }

    public static void I4(Context context, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        if ((downloadTask.getModInfoBean() == null || !downloadTask.getModInfoBean().isIncompatible()) && ((downloadTask.getSingleGameModInfoBean() == null || !downloadTask.getSingleGameModInfoBean().isIncompatible()) && !(downloadTask.getModInfoBean() == null && downloadTask.getSingleGameModInfoBean() == null && !downloadTask.isH5VmGame()))) {
            J4(context, downloadTask);
            return;
        }
        ModPromptNormalDialog modPromptNormalDialog = new ModPromptNormalDialog(context);
        Resources resources = context.getResources();
        modPromptNormalDialog.show(resources.getString(R.string.mod_prompt_tips), resources.getString(R.string.mod_prompt_game_incompatible, "" + downloadTask.getShowName(), "" + Build.VERSION.RELEASE), resources.getString(R.string.game_start_continue), resources.getString(R.string.game_start_standard), new a(downloadTask, context, modPromptNormalDialog));
    }

    public static void J(TipNew showTip, LinearLayout view, Context context) {
        view.removeAllViews();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.appsize);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.appType);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.pingfen);
        textView3.setBackgroundResource(R.drawable.stroke_1bb3ae_butn);
        textView3.setTextColor(Color.parseColor("#1BB3AE"));
        if (showTip != null) {
            if (showTip.getModel() != null) {
                textView3.setText(showTip.getModel().getName());
            } else {
                textView3.setVisibility(8);
            }
            if (showTip.getDown_res() != null) {
                textView.setText(showTip.getDown_res().getName());
            }
        } else {
            textView3.setVisibility(8);
        }
        textView4.setVisibility(8);
        textView2.setVisibility(8);
        view.addView(viewInflate);
    }

    public static boolean J0(Context context, String fileName, String path) {
        try {
            InputStream inputStreamOpen = context.getAssets().open(fileName);
            File file = new File(path);
            File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            if (file.exists()) {
                File file2 = new File(file.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                file.renameTo(file2);
                file2.delete();
                file.createNewFile();
            } else {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = inputStreamOpen.read(bArr);
                if (i10 <= 0) {
                    fileOutputStream.close();
                    inputStreamOpen.close();
                    return true;
                }
                fileOutputStream.write(bArr, 0, i10);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static void J1(Activity activity) {
        if (Build.VERSION.SDK_INT == 26 && z2(activity)) {
            I1(activity);
        }
    }

    public static void J2(Context context) {
        h8.a aVarA = com.constant.a.a();
        if (aVarA != null) {
            aVarA.d();
        }
    }

    public static void J3(final Context context, String imageSrc, final SimpleDraweeView userIcon) {
        if (t2.h(imageSrc.trim()) || userIcon == null) {
            imageSrc = com.join.mgps.rpc.h.M + "/upload/images/headportrait/public/system_1.png";
        }
        com.join.android.app.common.utils.l.v(userIcon, R.drawable.unloginstatus, imageSrc);
    }

    public static void J4(Context context, DownloadTask downloadTask) {
        if (com.join.mgps.va.overmind.i.q().R(downloadTask.getPackageName())) {
            Activity activity = MApplication.f3182z.getActivity();
            if (APKUtils.b(activity, downloadTask)) {
                return;
            } else {
                APKUtils.h(activity, new b(context, downloadTask));
            }
        }
        M2(context, downloadTask);
    }

    public static void K(String score, int down_count, String appSize, TipNew showTip, List<TipBean> tags, LinearLayout view, Context context) {
        TipBean tipBean;
        String str = t2.h(appSize) ? "1" : appSize;
        view.removeAllViews();
        TipBean tipBean2 = null;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.appsize);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.appType);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.pingfen);
        textView.setText(t2.c(down_count));
        long j10 = (long) (Double.parseDouble(str) * 1048576.0d);
        if (j10 <= 0) {
            textView2.setVisibility(8);
        } else {
            textView2.setVisibility(0);
            textView2.setText(Z2(j10));
        }
        if (showTip != null) {
            TipBean model = showTip.getModel();
            if (model == null) {
                textView3.setVisibility(8);
            } else if ("7".equals(model.getId()) || "23".equals(model.getId())) {
                String name = "安卓";
                if (tags != null) {
                    ArrayList<TipBean> arrayList = new ArrayList();
                    for (TipBean tipBean3 : tags) {
                        if (tipBean3.getId() != null && !tipBean3.getId().equals("") && !tipBean3.getId().equals("44") && !tipBean3.getId().equals("45") && !tipBean3.getId().equals("47") && !tipBean3.getId().equals("48")) {
                            arrayList.add(tipBean3);
                        }
                    }
                    if (arrayList.size() == 2) {
                        TipBean tipBean4 = (TipBean) arrayList.get(0);
                        name = tipBean4 != null ? tipBean4.getName() : "安卓";
                        if (arrayList.size() > 1 && (tipBean = (TipBean) arrayList.get(1)) != null) {
                            name = name + "·" + tipBean.getName();
                        }
                    } else if (arrayList.size() == 1) {
                        TipBean tipBean5 = (TipBean) arrayList.get(0);
                        if (tipBean5 != null) {
                            name = "安卓·" + tipBean5.getName();
                        }
                    } else {
                        int i10 = 0;
                        for (TipBean tipBean6 : arrayList) {
                            if (!"7".equals(tipBean6.getId())) {
                                name = i10 == 0 ? tipBean6.getName() : name + "·" + tipBean6.getName();
                                i10++;
                                if (i10 == 2) {
                                    break;
                                }
                            }
                        }
                    }
                }
                textView3.setText(name);
            } else {
                if (tags != null) {
                    for (TipBean tipBean7 : tags) {
                        if (t2.i(tipBean7.getId()) && !tipBean7.getId().equals(showTip.getModel().getId())) {
                            tipBean2 = tipBean7;
                            break;
                        }
                    }
                }
                if (tipBean2 != null) {
                    textView3.setText(showTip.getModel().getName() + "·" + tipBean2.getName());
                } else {
                    textView3.setText(showTip.getModel().getName());
                }
            }
            if (showTip.getDown_res() != null) {
                textView.setText(showTip.getDown_res().getName());
            }
        } else {
            textView3.setVisibility(8);
        }
        if (!t2.i(score) || "0".equals(score) || "0.0".equals(score)) {
            textView4.setVisibility(8);
        } else {
            textView4.setText(score + "分");
            textView4.setVisibility(0);
        }
        view.addView(viewInflate);
    }

    private static void K0(String filePath) {
        try {
            File file = new File(filePath.replace(com.join.mgps.Util.z.f50164c, Environment.getExternalStorageDirectory().getAbsolutePath()));
            if (file.exists()) {
                boolean zDelete = delete(file);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(zDelete);
                sb2.append(filePath);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String K1(Context context, int position) {
        List<BaiduAdDataMain> list = (List) JsonMapper.getInstance().fromJson(com.join.mgps.pref.h.n(context).b(), JsonMapper.getInstance().createCollectionType(List.class, BaiduAdDataMain.class));
        if (list == null) {
            return "";
        }
        for (BaiduAdDataMain baiduAdDataMain : list) {
            if (baiduAdDataMain.getType_id() == position) {
                return baiduAdDataMain.getAd_id();
            }
        }
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void K2(Context context, DownloadTask downloadTask, ExtBean extBean) {
        String crc_link_type_val;
        String main_game_id = "";
        if (downloadTask.isMod()) {
            ModInfoBean modInfoBean = downloadTask.getModInfoBean();
            if (modInfoBean != null) {
                main_game_id = modInfoBean.getMain_game_id();
                crc_link_type_val = modInfoBean.getMod_game_id();
            } else {
                crc_link_type_val = downloadTask.getCrc_link_type_val();
            }
            ((CloudGameIndexActivity_.e0) CloudGameIndexActivity_.intent(context).b(crc_link_type_val).flags(C.ENCODING_PCM_MU_LAW)).c(extBean).d(main_game_id).start();
        } else {
            w0.h().s(context, downloadTask.getCrc_link_type_val().replace("cld_", ""), extBean);
        }
        Q4(context, downloadTask.getCrc_link_type_val());
    }

    public static void K3(Button mgListviewItemInstall, DetailResultBean detailResultBean) {
        mgListviewItemInstall.setEnabled(true);
        int down_status = detailResultBean.getDown_status();
        PayTagInfo pay_tag_info = detailResultBean.getPay_tag_info();
        String crc_sign_id = detailResultBean.getCrc_sign_id();
        int iX0 = x0(pay_tag_info, crc_sign_id);
        boolean z10 = w0(iX0, crc_sign_id) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setBackgroundResource(R.drawable.fight_blue_butn);
            mgListviewItemInstall.setTextSize(2, 12.0f);
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setTextSize(2, 11.0f);
            mgListviewItemInstall.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.fight_grey_butn);
            return;
        }
        if (down_status == 6 && !z10) {
            mgListviewItemInstall.setText("预约");
            mgListviewItemInstall.setBackgroundResource(R.drawable.fight_blue_butn);
            return;
        }
        mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        mgListviewItemInstall.setTextSize(2, 13.0f);
        if (iX0 > 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, t2.n(iX0)));
        } else {
            mgListviewItemInstall.setBackgroundResource(R.drawable.fight_blue_butn);
        }
    }

    public static void K4(Context context, DownloadTask downloadTask) {
        if (k2(context, downloadTask, null, GameStartType.startVmGame, 0)) {
            I4(context, downloadTask);
        }
    }

    public static void L(List<TipBean> tipBeans, TipNew showTip, LinearLayout view, Context context) {
        TipBean tipBean;
        view.removeAllViews();
        TipBean tipBean2 = null;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.appsize);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.appType);
        textView2.setVisibility(8);
        if (showTip != null) {
            TipBean model = showTip.getModel();
            if (model == null) {
                textView3.setVisibility(8);
            } else if ("7".equals(model.getId()) || "23".equals(model.getId())) {
                String name = "安卓";
                if (tipBeans != null) {
                    ArrayList<TipBean> arrayList = new ArrayList();
                    for (TipBean tipBean3 : tipBeans) {
                        if (tipBean3.getId() != null && !tipBean3.getId().equals("") && !tipBean3.getId().equals("44") && !tipBean3.getId().equals("45") && !tipBean3.getId().equals("47") && !tipBean3.getId().equals("48")) {
                            arrayList.add(tipBean3);
                        }
                    }
                    int i10 = 0;
                    if (arrayList.size() == 2) {
                        TipBean tipBean4 = (TipBean) arrayList.get(0);
                        name = tipBean4 != null ? tipBean4.getName() : "安卓";
                        if (arrayList.size() > 1 && (tipBean = (TipBean) arrayList.get(1)) != null) {
                            name = name + "·" + tipBean.getName();
                        }
                    } else if (arrayList.size() == 1) {
                        TipBean tipBean5 = (TipBean) arrayList.get(0);
                        if (tipBean5 != null) {
                            name = "安卓·" + tipBean5.getName();
                        }
                    } else {
                        for (TipBean tipBean6 : arrayList) {
                            if (!"7".equals(tipBean6.getId())) {
                                name = i10 == 0 ? tipBean6.getName() : name + "·" + tipBean6.getName();
                                i10++;
                                if (i10 == 2) {
                                    break;
                                }
                            }
                        }
                    }
                }
                textView3.setText(name);
            } else {
                if (tipBeans != null) {
                    for (TipBean tipBean7 : tipBeans) {
                        if (t2.i(tipBean7.getId()) && !tipBean7.getId().equals(showTip.getModel().getId())) {
                            tipBean2 = tipBean7;
                            break;
                        }
                    }
                }
                if (tipBean2 != null) {
                    textView3.setText(showTip.getModel().getName() + "·" + tipBean2.getName());
                } else {
                    textView3.setText(showTip.getModel().getName());
                }
            }
            if (showTip.getDown_res() != null) {
                textView.setText(showTip.getDown_res().getName());
            }
        } else {
            textView3.setVisibility(8);
        }
        view.addView(viewInflate);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0059 A[Catch: Exception -> 0x006b, TryCatch #0 {Exception -> 0x006b, blocks: (B:2:0x0000, B:4:0x000f, B:6:0x0017, B:8:0x0027, B:10:0x0037, B:13:0x003e, B:15:0x004c, B:16:0x0059, B:17:0x0061, B:19:0x0067), top: B:24:0x0000 }] */
    public static void L0(DownloadTask plug) {
        try {
            File file = new File(plug.getPath());
            String gameZipPath = plug.getGameZipPath();
            if (gameZipPath != null && !gameZipPath.equals("")) {
                if (plug.getFileType().equals(Dtype.android.name())) {
                    delete(new File(gameZipPath));
                } else {
                    String fileType = plug.getFileType();
                    Dtype dtype = Dtype.chajian;
                    if (fileType.equals(dtype.name()) || APKUtils.K(plug)) {
                        delete(new File(gameZipPath));
                    } else if (!plug.getFileType().equals(dtype.name())) {
                        delete(new File(gameZipPath).getParentFile());
                    }
                }
            }
            if (file.exists()) {
                delete(file);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String L1() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
            String str = "";
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                str = line;
            }
            if (str.contains("Hardware")) {
                return str.split(":\\s+", 2)[1];
            }
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        return Build.HARDWARE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void L2(Context context, String gameId, String pkg, DownloadTask downloadTask, String from, ExtBean extBean) {
        int i10;
        if (t2.i(downloadTask.getMod_info())) {
            ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class);
            if (modInfoBean != null) {
                APKUtils.b0(context, modInfoBean, from, extBean);
            }
        } else {
            Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
            boolean z10 = false;
            while (it2.hasNext()) {
                if ("23".equals(it2.next().getId())) {
                    z10 = true;
                }
            }
            boolean zBooleanValue = new PrefDef_(context).launch_game_switch().d().booleanValue();
            if (z10 && zBooleanValue) {
                A0(context, 1, downloadTask.getCrc_link_type_val(), "ANDROID_SINGLE", new d(context, downloadTask));
            } else {
                com.join.android.app.common.utils.g.t0(context);
                APKUtils.f0(context, downloadTask.getPackageName());
            }
        }
        if (t2.h(downloadTask.getMod_info())) {
            if (APKUtils.K(downloadTask)) {
                i10 = 1;
            } else {
                i10 = APKUtils.P(downloadTask) ? 2 : 0;
            }
            if (extBean == null) {
                extBean = new ExtBean();
            }
            com.papa.sim.statistic.t.l(context).j1(gameId, AccountUtil_.getInstance_(context).getUid(), i10, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt(), extBean.toExt());
        }
        Q4(context, gameId);
        Z1(context, 12, downloadTask.getCrc_link_type_val());
    }

    public static void L3(final Context context, String imageSrc, SimpleDraweeView userIcon) {
        if (userIcon == null) {
            return;
        }
        Context context2 = userIcon.getContext();
        if (imageSrc == null) {
            com.join.android.app.common.utils.l.d(userIcon, R.drawable.net_match_default_user_icon, com.join.android.app.common.utils.l.G(context2, R.drawable.net_match_default_user_icon).toString());
        } else {
            com.join.android.app.common.utils.l.v(userIcon, R.drawable.net_match_default_user_icon, imageSrc);
        }
    }

    public static void L4(Context context, String appId, String wechatAppId, String path) {
        IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(context, appId);
        iwxapiCreateWXAPI.registerApp(appId);
        WXLaunchMiniProgram.Req req = new WXLaunchMiniProgram.Req();
        req.userName = wechatAppId;
        req.path = path;
        req.miniprogramType = 0;
        iwxapiCreateWXAPI.sendReq(req);
    }

    public static void M(List<TipBean> tipBeans, String appSize, LinearLayout view, Context context) {
        if (tipBeans == null) {
            return;
        }
        try {
            view.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(4, 0, 4, 0);
            for (TipBean tipBean : tipBeans) {
                if (tipBean.getId() != null && !tipBean.getId().equals("") && !tipBean.getId().equals("44") && !tipBean.getId().equals("45") && !tipBean.getId().equals("47") && !tipBean.getId().equals("48")) {
                    TextView textView = new TextView(context);
                    textView.setLayoutParams(layoutParams);
                    textView.setGravity(17);
                    textView.setText(tipBean.getName() + "");
                    textView.setTextColor(Color.parseColor(tipBean.getColor()));
                    textView.setPadding(0, 0, 0, 0);
                    textView.setSingleLine(true);
                    textView.setTextSize(0, context.getResources().getDimension(R.dimen.wdp18));
                    textView.setBackgroundDrawable(z2.a(context, tipBean.getColor() + ""));
                    view.addView(textView);
                }
            }
            TextView textView2 = new TextView(context);
            textView2.setLayoutParams(layoutParams);
            textView2.setGravity(17);
            textView2.setText(appSize + "");
            textView2.setTextColor(Color.parseColor("#81dfce"));
            textView2.setPadding(0, 0, 0, 0);
            textView2.setSingleLine(true);
            textView2.setTextSize(0, context.getResources().getDimension(R.dimen.wdp18));
            textView2.setBackgroundDrawable(z2.a(context, "#81dfce"));
            view.addView(textView2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void M0(Context context, String plugNumber, String gameZipPath, String PackageName, String romType) {
        List<RomArchived> listN = o3.n(plugNumber, gameZipPath);
        boolean z10 = false;
        if (plugNumber.equals("31")) {
            Iterator<RomArchived> it2 = listN.iterator();
            boolean z11 = false;
            boolean z12 = false;
            while (it2.hasNext()) {
                if (it2.next().getFileName().contains("_v2")) {
                    z11 = true;
                } else {
                    z12 = true;
                }
            }
            Iterator<RomArchived> it3 = listN.iterator();
            while (it3.hasNext()) {
                RomArchived next = it3.next();
                if (!z12 || z11) {
                    if (z12 && z11) {
                        if (w1.a(PackageName)) {
                            if (next.getFileName().contains("_v2")) {
                                it3.remove();
                            }
                        } else if (!next.getFileName().contains("_v2")) {
                            it3.remove();
                        }
                    }
                } else if (!w1.a(PackageName)) {
                    it3.remove();
                }
            }
        }
        if (plugNumber.equals("31")) {
            Iterator<RomArchived> it4 = listN.iterator();
            boolean z13 = false;
            while (it4.hasNext()) {
                if (it4.next().getFileName().contains("_v2")) {
                    z10 = true;
                } else {
                    z13 = true;
                }
            }
            Iterator<RomArchived> it5 = listN.iterator();
            while (it5.hasNext()) {
                RomArchived next2 = it5.next();
                if (!z13 || z10) {
                    if (z13 && z10) {
                        if (w1.a(PackageName)) {
                            if (next2.getFileName().contains("_v2")) {
                                it5.remove();
                            }
                        } else if (!next2.getFileName().contains("_v2")) {
                            it5.remove();
                        }
                    }
                } else if (!w1.a(PackageName)) {
                    it5.remove();
                }
            }
        }
        if (listN == null || listN.size() <= 0) {
            return;
        }
        for (RomArchived romArchived : listN) {
            String archivedPath = romArchived.getArchivedPath();
            File file = new File(archivedPath);
            delete(file);
            K0(archivedPath);
            String str = context.getFilesDir().toString() + "/emus/" + d2(Integer.parseInt(romType)) + net.lingala.zip4j.util.e.F0 + new File(M4(gameZipPath)).getName() + net.lingala.zip4j.util.e.F0;
            delete(new File(str + file.getName()));
            String strReplace = romArchived.getArchivedImagePath().replace("file://", "");
            File file2 = new File(strReplace);
            delete(file2);
            delete(new File(str + file2.getName()));
            K0(strReplace);
        }
    }

    public static int M1(Context context) {
        List<UserPurchaseInfo> listO = t6.n0.p().o(AccountUtil_.getInstance_(context).getUid(), com.papa.sim.statistic.t.f77354i);
        if (listO != null && listO.size() > 0) {
            UserPurchaseInfo userPurchaseInfo = listO.get(0);
            String isOpenCheat = userPurchaseInfo.getIsOpenCheat();
            String cheatExpireTime = userPurchaseInfo.getCheatExpireTime();
            if (cheatExpireTime != null && !cheatExpireTime.equals("")) {
                try {
                    cheatExpireTime = new String(Base64Utils.decode(cheatExpireTime.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e10) {
                    e10.printStackTrace();
                }
            }
            if (isOpenCheat != null && isOpenCheat.equals("true") && cheatExpireTime != null && Long.parseLong(cheatExpireTime) - (System.currentTimeMillis() / 1000) > 0) {
                return 2;
            }
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:28:0x00a3 A[PHI: r11
      0x00a3: PHI (r11v7 long) = (r11v0 long), (r11v1 long), (r11v3 long) binds: [B:17:0x006e, B:27:0x00a0, B:23:0x0090] A[DONT_GENERATE, DONT_INLINE]] */
    public static void M2(Context context, DownloadTask downloadTask) {
        int i10;
        String strD = new PrefDef_(context).singleGameAdCfg().d();
        if (!t2.i(strD) || downloadTask.isMiniGame()) {
            APKUtils.i0(context, downloadTask);
            return;
        }
        SingleGameAdCfgBean singleGameAdCfgBean = (SingleGameAdCfgBean) JsonMapper.getInstance().fromJson(strD, SingleGameAdCfgBean.class);
        if (singleGameAdCfgBean == null || singleGameAdCfgBean.getSwitch_state() != 1) {
            APKUtils.i0(context, downloadTask);
            return;
        }
        if (singleGameAdCfgBean.getSwitch_state() != 1) {
            APKUtils.i0(context, downloadTask);
            return;
        }
        UserPrefs userPrefs = new UserPrefs(context);
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        int iB = 0;
        int uid = accountData != null ? accountData.getUid() : 0;
        String adGamesConfig = userPrefs.getAdGamesConfig(uid + "");
        long j10 = 0;
        if (t2.i(adGamesConfig)) {
            try {
                JSONObject jSONObject = new JSONObject(adGamesConfig);
                j10 = jSONObject.has("lastTime") ? Long.parseLong(jSONObject.get("lastTime").toString()) : System.currentTimeMillis();
                if (jSONObject.has("adCount")) {
                    i10 = Integer.parseInt(jSONObject.get("adCount").toString());
                } else {
                    i10 = 0;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            i10 = 0;
        }
        if (!com.join.mgps.Util.e0.z(j10)) {
            i10 = 0;
        }
        if (!(i10 < singleGameAdCfgBean.getDaily_times() && !com.join.mgps.Util.b.piv(accountData))) {
            APKUtils.i0(context, downloadTask);
            userPrefs.setAdGamesConfig(uid + "", i10);
            return;
        }
        if (singleGameAdCfgBean.getPlay_cfg() != null && singleGameAdCfgBean.getPlay_cfg().size() > 0) {
            ArrayList arrayList = new ArrayList();
            Iterator<PlayCfgBean> it2 = singleGameAdCfgBean.getPlay_cfg().iterator();
            while (it2.hasNext()) {
                arrayList.add(Double.valueOf(it2.next().getProbability()));
            }
            iB = com.join.mgps.ad.p.b(arrayList);
        }
        PlayCfgBean playCfgBean = singleGameAdCfgBean.getPlay_cfg().get(iB);
        String ad_id = playCfgBean.getAd_id();
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        RewardAdParams rewardAdParams = new RewardAdParams(playCfgBean.getSdk_key(), ad_id, playCfgBean.getSdk_type(), playCfgBean.getReward_time(), singleGameAdCfgBean, crc_link_type_val, crc_link_type_val);
        Intent intent = new Intent();
        intent.putExtra(RewardAdDialogActivity.KEY_REWARD_PARAMS, rewardAdParams);
        IntentUtil.getInstance().startActivityWithCallback(context, RewardAdDialogActivity.class, intent, new c(context, downloadTask, userPrefs, uid, i10 + 1));
    }

    public static void M3(final Context context, String imageSrc, SimpleDraweeView userIcon) {
        if (userIcon == null) {
            return;
        }
        Context context2 = userIcon.getContext();
        if (imageSrc == null) {
            com.join.android.app.common.utils.l.d(userIcon, R.drawable.net_match_default_user_icon, com.join.android.app.common.utils.l.G(context2, R.drawable.net_match_default_user_icon).toString());
        } else {
            com.join.android.app.common.utils.l.w(userIcon, R.drawable.net_match_default_user_icon, imageSrc, null);
        }
    }

    public static String M4(String romPath) {
        if (romPath.contains(o0.f49827a)) {
            return !romPath.contains("/58/") ? romPath.substring(0, romPath.lastIndexOf(o0.f49827a)) : romPath;
        }
        return romPath;
    }

    public static void N(String score, int down_count, String appSize, TipNew showTip, LinearLayout view, Context context) {
        if (t2.h(appSize)) {
            appSize = "1";
        }
        view.removeAllViews();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.appsize);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.appType);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.pingfen);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.ad_text);
        textView5.setSingleLine();
        textView5.setVisibility(0);
        textView5.setVisibility(0);
        textView.setText(t2.c(down_count));
        long j10 = (long) (Double.parseDouble(appSize) * 1048576.0d);
        if (j10 <= 0) {
            textView2.setVisibility(8);
        } else {
            textView2.setVisibility(0);
            textView2.setText(Z2(j10));
        }
        if (showTip != null) {
            if (showTip.getModel() != null) {
                textView3.setText(showTip.getModel().getName());
            } else {
                textView3.setVisibility(8);
            }
            if (showTip.getDown_res() != null) {
                textView.setText(showTip.getDown_res().getName());
            }
        } else {
            textView3.setVisibility(8);
        }
        if (!t2.i(score) || "0".equals(score) || "0.0".equals(score)) {
            textView4.setVisibility(8);
        } else {
            textView4.setText(score + "分");
            textView4.setVisibility(0);
        }
        view.addView(viewInflate);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0094 A[Catch: Exception -> 0x00a6, TryCatch #0 {Exception -> 0x00a6, blocks: (B:2:0x0000, B:4:0x0008, B:6:0x0010, B:8:0x0016, B:10:0x0025, B:12:0x002d, B:14:0x003d, B:16:0x004d, B:19:0x0054, B:21:0x0062, B:23:0x006d, B:24:0x0071, B:26:0x0085, B:28:0x0090, B:29:0x0094, B:30:0x009c, B:32:0x00a2), top: B:37:0x0000 }] */
    public static void N0(DownloadTask plug) {
        File parentFile;
        try {
            if (plug.getStatus() == 9 || plug.getStatus() == 42 || plug.getStatus() == 0) {
                File file = new File(plug.getPath());
                String gameZipPath = plug.getGameZipPath();
                if (gameZipPath != null && !gameZipPath.equals("")) {
                    if (plug.getFileType().equals(Dtype.android.name())) {
                        delete(new File(gameZipPath));
                    } else {
                        String fileType = plug.getFileType();
                        Dtype dtype = Dtype.chajian;
                        if (fileType.equals(dtype.name()) || APKUtils.K(plug)) {
                            delete(new File(gameZipPath));
                        } else if (!plug.getFileType().equals(dtype.name())) {
                            File parentFile2 = new File(gameZipPath).getParentFile();
                            if (parentFile2 != null) {
                                delete(parentFile2);
                            }
                        } else if (TextUtils.equals(plug.getCrc_link_type_val(), String.valueOf(ConstantIntEnum.PS2.value())) && (parentFile = new File(gameZipPath).getParentFile()) != null) {
                            delete(parentFile);
                        }
                    }
                }
                if (file.exists()) {
                    delete(file);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static long N1(File file) {
        if (file == null) {
            return 0L;
        }
        try {
            if (!file.exists()) {
                System.out.println("文件或者文件夹不存在，请检查路径是否正确！");
                return 0L;
            }
            if (!file.isDirectory()) {
                return file.length();
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return 0L;
            }
            long jN1 = 0;
            for (File file2 : fileArrListFiles) {
                jN1 += N1(file2);
            }
            return jN1;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0L;
        }
    }

    public static String N2(String systenImage) {
        return "http://ctimg.mg3721.com/upload/images/headportrait/public/" + systenImage + ".png";
    }

    public static void N3(Context context) {
        context.startActivity(new Intent("android.settings.SETTINGS"));
    }

    public static void N4(Context context) {
        APKUtils.a aVarN;
        try {
            if (Build.BRAND.toLowerCase().contains("meizu")) {
                for (DownloadTask downloadTask : q5.f.M().w()) {
                    if (com.join.android.app.common.utils.g.t0(context).e(context, downloadTask.getPackageName()) && (aVarN = com.join.android.app.common.utils.g.t0(context).n(context, downloadTask.getPackageName())) != null && t2.i(downloadTask.getVer()) && aVarN.d() == Integer.parseInt(downloadTask.getVer())) {
                        i3(downloadTask, 5);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void O(List<TipBean> tipBeans, LinearLayout view, Context context) {
        if (tipBeans == null) {
            return;
        }
        try {
            view.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, view.getResources().getDimensionPixelOffset(R.dimen.wdp14), 0);
            for (TipBean tipBean : tipBeans) {
                if (tipBean.getId() != null && !tipBean.getId().equals("") && !tipBean.getId().equals("44") && !tipBean.getId().equals("45") && !tipBean.getId().equals("47") && !tipBean.getId().equals("48")) {
                    TextView textView = new TextView(context);
                    textView.setLayoutParams(layoutParams);
                    textView.setGravity(17);
                    textView.setText(tipBean.getName() + "");
                    textView.setTextColor(Color.parseColor(tipBean.getColor()));
                    int iH = (int) (com.join.android.app.common.utils.q.n(context).h(context) * 5.0f);
                    textView.setPadding(iH, view.getResources().getDimensionPixelOffset(R.dimen.wdp1), iH, view.getResources().getDimensionPixelOffset(R.dimen.wdp1));
                    textView.setSingleLine(true);
                    textView.setTextSize(0, context.getResources().getDimensionPixelSize(R.dimen.wdp18));
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setCornerRadius(context.getResources().getDimensionPixelOffset(R.dimen.wdp4));
                    gradientDrawable.setStroke(context.getResources().getDimensionPixelOffset(R.dimen.wdp1), Color.parseColor(tipBean.getColor()));
                    gradientDrawable.setColor(Color.parseColor("#00000000"));
                    textView.setBackgroundDrawable(gradientDrawable);
                    textView.setOnClickListener(new l(context, tipBean));
                    view.addView(textView);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void O0(DownloadTask downloadTask) {
        Q0(downloadTask, true, true, true);
    }

    public static String O1(DownloadTask task) {
        if (task == null) {
            return "下载";
        }
        int status = task.getStatus();
        if (status == 2) {
            return task.getProgress() + "%";
        }
        if (status == 3) {
            return "继续";
        }
        if (status == 5) {
            return "启动";
        }
        if (status == 42) {
            return "更新";
        }
        if (status == 48) {
            return "安装中";
        }
        switch (status) {
            case 9:
                return "更新";
            case 10:
                return "等待";
            case 11:
                return "安装";
            default:
                return "下载";
        }
    }

    private static int O2(String origin, int index) {
        return (TextUtils.isEmpty(origin) || origin.length() < index + 1 || origin.charAt(index) != '1') ? 0 : 1;
    }

    public static void O3(TextView mgListviewItemInstall, DownloadTask downloadTask) {
        int down_status = downloadTask.getDown_status();
        downloadTask.getShowSize();
        int pay_game_amount = downloadTask.getPay_game_amount();
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        mgListviewItemInstall.setEnabled(true);
        boolean z10 = w0(pay_game_amount, crc_link_type_val) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setBackgroundResource(R.drawable.installbutn_big_normal);
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.installbutn_big_grey);
        } else {
            if (down_status == 6 && !z10) {
                mgListviewItemInstall.setText("预约");
                mgListviewItemInstall.setBackgroundResource(R.drawable.installbutn_big_normal);
                return;
            }
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
            if (pay_game_amount > 0) {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, t2.n(pay_game_amount)));
            } else {
                mgListviewItemInstall.setBackgroundResource(R.drawable.installbutn_big_normal);
            }
        }
    }

    public static void O4(Context context, DownloadTask downloadTask) {
        com.join.mgps.Util.h0.h0(context).f0(context, downloadTask);
    }

    public static void P(String score, int down_count, String appSize, TipNew showTip, LinearLayout view, Context context) {
        if (t2.h(appSize)) {
            appSize = "1";
        }
        view.removeAllViews();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.gamelist_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.appsize);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.appType);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.pingfen);
        textView.setText(t2.c(down_count));
        long j10 = (long) (Double.parseDouble(appSize) * 1048576.0d);
        if (j10 <= 0) {
            textView2.setVisibility(8);
        } else {
            textView2.setVisibility(0);
            textView2.setText(Z2(j10));
        }
        if (showTip != null) {
            if (showTip.getModel() != null) {
                textView3.setText(showTip.getModel().getName());
            } else {
                textView3.setVisibility(8);
            }
            if (showTip.getDown_res() != null) {
                textView.setText(showTip.getDown_res().getName());
            }
        } else {
            textView3.setVisibility(8);
        }
        if (!t2.i(score) || "0".equals(score) || "0.0".equals(score)) {
            textView4.setVisibility(8);
        } else {
            textView4.setText(score + "分");
            textView4.setVisibility(0);
        }
        view.addView(viewInflate);
    }

    public static void P0(DownloadTask downloadTask, boolean removeTask, boolean removeSource) {
        Q0(downloadTask, removeTask, removeSource, false);
    }

    public static String P1(TipNew showTip, List<TipBean> tags) {
        TipBean model;
        TipBean next;
        if (showTip == null || (model = showTip.getModel()) == null) {
            return "";
        }
        if (!"7".equals(model.getId()) && !"23".equals(model.getId())) {
            if (tags != null) {
                Iterator<TipBean> it2 = tags.iterator();
                while (it2.hasNext()) {
                    next = it2.next();
                    if (!t2.i(next.getId()) || next.getId().equals(showTip.getModel().getId())) {
                    }
                }
                next = null;
            } else {
                next = null;
            }
            return next != null ? next.getName() : showTip.getModel().getName();
        }
        if (tags == null) {
            return "";
        }
        ArrayList<TipBean> arrayList = new ArrayList();
        for (TipBean tipBean : tags) {
            if (tipBean.getId() != null && !tipBean.getId().equals("") && !tipBean.getId().equals("44") && !tipBean.getId().equals("45") && !tipBean.getId().equals("47") && !tipBean.getId().equals("48")) {
                arrayList.add(tipBean);
            }
        }
        if (arrayList.size() == 1) {
            TipBean tipBean2 = (TipBean) arrayList.get(0);
            return tipBean2 != null ? tipBean2.getName() : "";
        }
        for (TipBean tipBean3 : arrayList) {
            if (!"7".equals(tipBean3.getId())) {
                return tipBean3.getName();
            }
        }
        return "";
    }

    private static int P2(List<TipBean> tipBeens) {
        Iterator<TipBean> it2 = tipBeens.iterator();
        while (it2.hasNext()) {
            if ("19".equals(it2.next().getId())) {
                return 19;
            }
        }
        return 0;
    }

    public static void P3(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        ModInfoBean modInfoBean = downloadTask.getModInfoBean();
        if (modInfoBean != null) {
            modInfoBean.setIncompatible(true);
            downloadTask.setMod_info(JsonMapper.toJsonString(modInfoBean));
            q5.f.M().m(downloadTask);
        }
        SingleGameModInfoBean singleGameModInfoBean = downloadTask.getSingleGameModInfoBean();
        if (singleGameModInfoBean != null) {
            singleGameModInfoBean.setIncompatible(true);
            downloadTask.setSingle_game_mod_info(JsonMapper.toJsonString(singleGameModInfoBean));
            q5.f.M().m(downloadTask);
        }
    }

    public static void P4(Context context, CommonGameInfoBean gameInfoBean) {
        com.join.mgps.Util.h0.h0(context).K(context, gameInfoBean);
    }

    public static void Q(String score, int down_count, String appSize, TipNew showTip, List<TipBean> tags, LinearLayout view, Context context, boolean isvideo) {
        TipBean tipBean;
        String str = t2.h(appSize) ? "1" : appSize;
        view.removeAllViews();
        TipBean tipBean2 = null;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.appitem_appsize_downcount_layout, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.appdownCount);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.appsize);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.appType);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.pingfen);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.ad_text);
        textView5.setSingleLine();
        if (isvideo) {
            textView5.setVisibility(0);
            textView5.setTextColor(Color.parseColor("#AAAAAA"));
            textView5.setBackgroundResource(R.drawable.stroke_red_tip_butn);
            textView5.setText("视频");
        }
        textView.setText(t2.c(down_count));
        long j10 = (long) (Double.parseDouble(str) * 1048576.0d);
        if (j10 <= 0) {
            textView2.setVisibility(8);
        } else {
            textView2.setVisibility(0);
            textView2.setText(Z2(j10));
        }
        if (showTip != null) {
            TipBean model = showTip.getModel();
            if (model == null) {
                textView3.setVisibility(8);
            } else if ("7".equals(model.getId()) || "23".equals(model.getId())) {
                String name = "安卓";
                if (tags != null) {
                    ArrayList<TipBean> arrayList = new ArrayList();
                    for (TipBean tipBean3 : tags) {
                        if (tipBean3.getId() != null && !tipBean3.getId().equals("") && !tipBean3.getId().equals("44") && !tipBean3.getId().equals("45") && !tipBean3.getId().equals("47") && !tipBean3.getId().equals("48")) {
                            arrayList.add(tipBean3);
                        }
                    }
                    if (arrayList.size() == 2) {
                        TipBean tipBean4 = (TipBean) arrayList.get(0);
                        name = tipBean4 != null ? tipBean4.getName() : "安卓";
                        if (arrayList.size() > 1 && (tipBean = (TipBean) arrayList.get(1)) != null) {
                            name = name + "·" + tipBean.getName();
                        }
                    } else if (arrayList.size() == 1) {
                        TipBean tipBean5 = (TipBean) arrayList.get(0);
                        if (tipBean5 != null) {
                            name = "安卓·" + tipBean5.getName();
                        }
                    } else {
                        int i10 = 0;
                        for (TipBean tipBean6 : arrayList) {
                            if (!"7".equals(tipBean6.getId())) {
                                name = i10 == 0 ? tipBean6.getName() : name + "·" + tipBean6.getName();
                                i10++;
                                if (i10 == 2) {
                                    break;
                                }
                            }
                        }
                    }
                }
                textView3.setText(name);
            } else {
                for (TipBean tipBean7 : tags) {
                    if (t2.i(tipBean7.getId()) && !tipBean7.getId().equals(showTip.getModel().getId())) {
                        tipBean2 = tipBean7;
                        break;
                    }
                }
                if (tipBean2 != null) {
                    textView3.setText(showTip.getModel().getName() + "·" + tipBean2.getName());
                } else {
                    textView3.setText(showTip.getModel().getName());
                }
            }
            if (showTip.getDown_res() != null) {
                textView.setText(showTip.getDown_res().getName());
            }
        } else {
            textView3.setVisibility(8);
        }
        if (!t2.i(score) || "0".equals(score) || "0.0".equals(score)) {
            textView4.setVisibility(8);
        } else {
            textView4.setText(score + "分");
            textView4.setVisibility(0);
        }
        view.addView(viewInflate);
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0166 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x0168 A[Catch: all -> 0x0160, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0005, B:6:0x0008, B:8:0x0012, B:10:0x0022, B:16:0x0048, B:18:0x0052, B:20:0x0058, B:25:0x007b, B:22:0x005e, B:24:0x0068, B:26:0x0089, B:28:0x0093, B:30:0x0099, B:35:0x00bc, B:32:0x009f, B:34:0x00a9, B:37:0x00cc, B:39:0x00d6, B:40:0x00e2, B:42:0x00e8, B:65:0x0168, B:45:0x00f0, B:47:0x00fa, B:49:0x0109, B:51:0x011b, B:53:0x0130, B:54:0x0144, B:56:0x0149, B:58:0x0153, B:12:0x0032, B:14:0x0042, B:63:0x0163), top: B:70:0x0005, inners: #1 }] */
    public static synchronized void Q0(DownloadTask downloadTask, boolean removeTask, boolean removeSource, boolean removeResSource) {
        if (removeTask) {
            com.php25.PDownload.d.a(downloadTask);
            try {
                if ((TextUtils.isEmpty(downloadTask.getRomType()) && (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()))) || Dtype.MOD.name().equals(downloadTask.getRomType()) || APKUtils.P(downloadTask)) {
                    if (t2.i(downloadTask.getPackageName())) {
                        if ((APKUtils.K(downloadTask) || APKUtils.P(downloadTask)) && com.join.mgps.va.overmind.i.q().S()) {
                            delete(new File(com.join.mgps.va.overmind.k.f73277a.V(downloadTask.getPackageName())));
                        } else {
                            delete(new File(com.join.mgps.Util.z.f50178q, downloadTask.getPackageName()));
                        }
                    }
                    if (t2.i(downloadTask.getPackageName())) {
                        if ((APKUtils.K(downloadTask) || APKUtils.P(downloadTask)) && com.join.mgps.va.overmind.i.q().S()) {
                            delete(new File(com.join.mgps.va.overmind.k.f73277a.C(downloadTask.getPackageName())));
                        } else {
                            delete(new File(com.join.mgps.Util.z.f50179r, downloadTask.getPackageName()));
                        }
                    }
                    if (removeSource && t2.i(downloadTask.getGameZipPath())) {
                        delete(new File(downloadTask.getGameZipPath()));
                    }
                    if (APKUtils.K(downloadTask) || APKUtils.P(downloadTask)) {
                        if (removeResSource && t2.i(downloadTask.getResource_path())) {
                            File file = new File(downloadTask.getResource_path());
                            if (!file.exists()) {
                                delete(file);
                            } else if (file.getParentFile().getAbsolutePath().endsWith(downloadTask.getPackageName())) {
                                delete(file.getParentFile());
                                if (com.join.mgps.va.overmind.i.q().R(downloadTask.getPackageName())) {
                                    com.join.mgps.va.overmind.m.delete(file.getParentFile().getAbsolutePath().replace("com.join.android.app.mgsim.wufun", "com.join.android.app.mgsim.wufun.addon"));
                                }
                            }
                        }
                        if (removeSource && t2.i(downloadTask.getPath())) {
                            delete(new File(downloadTask.getPath()));
                        }
                        if (removeTask) {
                            com.php25.PDownload.d.a(downloadTask);
                        }
                    } else if (removeTask) {
                        com.php25.PDownload.d.a(downloadTask);
                    }
                } else if (removeTask) {
                    com.php25.PDownload.d.a(downloadTask);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            if (TextUtils.isEmpty(downloadTask.getRomType())) {
            }
            if (removeTask) {
                com.php25.PDownload.d.a(downloadTask);
            }
        }
        throw th;
    }

    public static String Q1(TipNew showTip, List<TipBean> tags) {
        return R1(showTip, tags, "·");
    }

    public static void Q2(DownloadTask downloadTask) {
        if (downloadTask == null || downloadTask.getSp_tag_info() == null) {
            return;
        }
        TipNew sp_tag_info = downloadTask.getSp_tag_info();
        sp_tag_info.setSingle_game_vm(null);
        downloadTask.setSp_tag_info(sp_tag_info);
    }

    public static boolean Q3(Context context, TextView userNameText, int vip, int sVip) {
        if (userNameText == null) {
            return false;
        }
        if (sVip > 0) {
            userNameText.setTextColor(context.getResources().getColor(R.color.vip_svip_color));
        } else {
            if (vip <= 0) {
                userNameText.setTextColor(Color.parseColor("#3b3b3b"));
                return false;
            }
            userNameText.setTextColor(context.getResources().getColor(R.color.vip_color));
        }
        return true;
    }

    public static void Q4(final Context context, final String gameId) {
        new h(gameId, context).start();
    }

    public static void R(Context context) {
        int iIntValue;
        k6.a.b(context, AccountUtil_.getInstance_(context).getAccountStr());
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        int sVIPLevel = 0;
        try {
            String secretKey = AccountUtil_.getInstance_(context).getAccountData().getSecretKey();
            iIntValue = t2.i(secretKey) ? Integer.valueOf(com.join.mgps.Util.b.vl(com.join.mgps.Util.a.b(new JSONObject(com.join.mgps.Util.a.b(secretKey)).optString(bm.aM)))).intValue() : 0;
            try {
                sVIPLevel = AccountUtil_.getInstance_(context).getAccountData().getSVIPLevel();
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            iIntValue = 0;
        }
        intent.putExtra(BaseAppConfig.KEY_VIP_LEVEL, iIntValue);
        intent.putExtra("svipLevel", sVIPLevel);
        intent.putExtra("uid", AccountUtil_.getInstance_(context).getUid() + "");
        intent.putExtra(Constants.TOKEN, AccountUtil_.getInstance_(context).getToken());
        intent.putExtra("sp", e2(context));
        intent.putExtra("cheat", M1(context));
        intent.putExtra("tourist", AccountUtil_.getInstance_(context).isTourist());
        context.sendBroadcast(intent);
        com.join.mgps.va.overmind.i.t0(intent);
        a3(context);
    }

    public static void R0(Context context, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        PrefDef_ prefDef_ = new PrefDef_(context);
        if (t2.i(prefDef_.lastLaunchModGameId().d()) && prefDef_.lastLaunchModGameId().d().equals(downloadTask.getCrc_link_type_val())) {
            prefDef_.lastLaunchModGameId().g("");
        }
        com.join.mgps.va.overmind.i.q().y0(downloadTask.getPackageName());
        O0(downloadTask);
        U4(downloadTask);
    }

    public static String R1(TipNew showTip, List<TipBean> tags, String split) {
        TipBean model;
        TipBean tipBean;
        TipBean next;
        if (showTip == null || (model = showTip.getModel()) == null) {
            return "";
        }
        if (!"7".equals(model.getId()) && !"23".equals(model.getId())) {
            if (tags == null) {
                next = null;
                break;
            }
            Iterator<TipBean> it2 = tags.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                if (t2.i(next.getId()) && !next.getId().equals(showTip.getModel().getId())) {
                    break;
                }
            }
            if (next == null) {
                return showTip.getModel().getName();
            }
            return showTip.getModel().getName() + split + next.getName();
        }
        String name = "安卓";
        if (tags == null) {
            return "安卓";
        }
        ArrayList<TipBean> arrayList = new ArrayList();
        for (TipBean tipBean2 : tags) {
            if (tipBean2.getId() != null && !tipBean2.getId().equals("") && !tipBean2.getId().equals("44") && !tipBean2.getId().equals("45") && !tipBean2.getId().equals("47") && !tipBean2.getId().equals("48")) {
                arrayList.add(tipBean2);
            }
        }
        int i10 = 0;
        if (arrayList.size() == 2) {
            TipBean tipBean3 = (TipBean) arrayList.get(0);
            name = tipBean3 != null ? tipBean3.getName() : "安卓";
            if (arrayList.size() <= 1 || (tipBean = (TipBean) arrayList.get(1)) == null) {
                return name;
            }
            return name + split + tipBean.getName();
        }
        if (arrayList.size() == 1) {
            TipBean tipBean4 = (TipBean) arrayList.get(0);
            if (tipBean4 == null) {
                return "安卓";
            }
            return "安卓" + split + tipBean4.getName();
        }
        for (TipBean tipBean5 : arrayList) {
            if (!"7".equals(tipBean5.getId())) {
                name = i10 == 0 ? tipBean5.getName() : name + split + tipBean5.getName();
                i10++;
                if (i10 == 2) {
                    return name;
                }
            }
        }
        return name;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void R2(Context context, String gameId, CommonGameInfoBean gameInfo) {
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        downloadGameArgsBean.setGameId(gameId);
        if (gameInfo != null) {
            downloadGameArgsBean.setFrom(gameInfo.get_from());
            downloadGameArgsBean.setFromType(gameInfo.get_from_type());
            downloadGameArgsBean.setRemarks(gameInfo.getReMarks());
            downloadGameArgsBean.setRecPosition(gameInfo.getRecPosition());
            downloadGameArgsBean.setNodeId(gameInfo.getNodeId());
            downloadGameArgsBean.setRecPosition(gameInfo.getVolcanoOtherJsonStr());
            downloadGameArgsBean.setFromRecommend(gameInfo.isFromRecomDown());
            downloadGameArgsBean.setExt(gameInfo.getExt());
        }
        ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("requestAndChoiceUpdateGameById", gameId)).extra("_downloadArgs", downloadGameArgsBean)).a();
    }

    public static boolean R3(Context context, TextView userNameText, int vip, int sVip, int resColor) {
        if (userNameText == null) {
            return false;
        }
        if (sVip > 0) {
            userNameText.setTextColor(context.getResources().getColor(R.color.vip_svip_color));
        } else {
            if (vip <= 0) {
                userNameText.setTextColor(context.getResources().getColor(resColor));
                return false;
            }
            userNameText.setTextColor(context.getResources().getColor(R.color.vip_color));
        }
        return true;
    }

    public static void R4(DownloadTask dt) {
        String json;
        if (dt.getCrc_link_type_val() == null || dt.getCrc_link_type_val().equals("")) {
            return;
        }
        DownloadTask downloadTaskG = q5.f.M().G(dt.getCrc_link_type_val());
        try {
            json = JsonMapper.getInstance().toJson(downloadTaskG);
        } catch (Exception e10) {
            e10.printStackTrace();
            json = "";
        }
        DownlodTaskCopyTable downlodTaskCopyTableN = t6.n.o().n(downloadTaskG.getCrc_link_type_val());
        DownlodTaskCopyTable downlodTaskCopyTable = new DownlodTaskCopyTable();
        if (downlodTaskCopyTableN != null) {
            downlodTaskCopyTable.setId(downlodTaskCopyTableN.getId());
        }
        downlodTaskCopyTable.setGameId(downloadTaskG.getCrc_link_type_val());
        downlodTaskCopyTable.setDownloadTask(json);
        t6.n.o().m(downlodTaskCopyTable);
        downloadTaskG.setUrl(downloadTaskG.getCfg_down_url());
        downloadTaskG.setDownloadType(2);
        downloadTaskG.setFileType(Dtype.apk.name());
        q5.f.M().m(downloadTaskG);
        String path = downloadTaskG.getPath();
        if (path != null && !path.equals("")) {
            File file = new File(path);
            if (file.exists()) {
                delete(file);
            }
        }
        com.php25.PDownload.d.c(downloadTaskG, null);
    }

    public static void S(Context context) {
        int iIntValue;
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData != null) {
            intent.putExtra("uid", accountData.getUid() + "");
            intent.putExtra(Constants.TOKEN, accountData.getToken());
            if (t2.i(accountData.getSecretKey())) {
                try {
                    iIntValue = Integer.valueOf(com.join.mgps.Util.b.vl(com.join.mgps.Util.a.b(new JSONObject(com.join.mgps.Util.a.b(accountData.getSecretKey())).optString(bm.aM)))).intValue();
                } catch (Exception unused) {
                    iIntValue = 0;
                }
            } else {
                iIntValue = 0;
            }
            intent.putExtra(BaseAppConfig.KEY_VIP_LEVEL, iIntValue);
            intent.putExtra(BaseAppConfig.KEY_SVIP_LEVEL, accountData.getSVIPLevel());
            intent.putExtra("vip_expire_time", accountData.getVipExpTime());
        }
        intent.putExtra("sp", e2(context));
        intent.putExtra("cheat", M1(context));
        context.sendBroadcast(intent);
    }

    public static void S0(Context context, String url, String fileName) {
        try {
            DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(url));
            request.setDestinationInExternalPublicDir("Download", fileName);
            request.setTitle("文件下载");
            request.setDescription("正在下载");
            request.setNotificationVisibility(1);
            request.setMimeType("application/com.join.mgps.activity.mgmainactivity_");
            request.allowScanningByMediaScanner();
            request.setVisibleInDownloadsUi(true);
            context.getSharedPreferences("downloadplato", 0).edit().putLong("plato", downloadManager.enqueue(request)).commit();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String S1(TipNew showTip, List<TipBean> tags) {
        return T1(showTip, tags, "·");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void S2(Context context, DownloadTask downloadTask) {
        if (downloadTask == null || t2.h(downloadTask.getCrc_link_type_val())) {
            return;
        }
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        downloadGameArgsBean.setGameId(crc_link_type_val);
        downloadGameArgsBean.setFrom(downloadTask.get_from());
        downloadGameArgsBean.setFromType(downloadTask.get_from_type());
        downloadGameArgsBean.setFromRecommend(downloadTask.isFromRecomDown());
        downloadGameArgsBean.setKeyWord(downloadTask.getKeyword());
        downloadGameArgsBean.setExt(downloadTask.getExt());
        downloadGameArgsBean.setExt1(downloadTask.getExt1());
        ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("requestAndChoiceUpdateGameById", crc_link_type_val)).extra("_downloadArgs", downloadGameArgsBean)).a();
    }

    public static boolean S3(Context context, TextView userNameText, int vip, int sVip) {
        if (userNameText == null) {
            return false;
        }
        if (sVip > 0) {
            userNameText.setTextColor(Color.parseColor("#ffdc39"));
        } else {
            if (vip <= 0) {
                userNameText.setTextColor(Color.parseColor("#8a8a8a"));
                return false;
            }
            userNameText.setTextColor(Color.parseColor("#fd5743"));
        }
        return true;
    }

    public static void S4(Context context, List<GameListPermission> data) {
        String uid = AccountUtil_.getInstance_(context).getUid();
        t6.n0.p().delete(uid);
        if (data == null || data.size() <= 0) {
            return;
        }
        for (GameListPermission gameListPermission : data) {
            UserPurchaseInfo userPurchaseInfo = new UserPurchaseInfo();
            userPurchaseInfo.setUid(uid);
            try {
                userPurchaseInfo.setSpExpireTime(Base64Utils.encodeToString((gameListPermission.getSpExpireTime() + "").getBytes("utf-8")));
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
            try {
                userPurchaseInfo.setCheatExpireTime(Base64Utils.encodeToString((gameListPermission.getCheatExpireTime() + "").getBytes("utf-8")));
            } catch (UnsupportedEncodingException e11) {
                e11.printStackTrace();
            }
            t6.n0.p().k(userPurchaseInfo);
        }
    }

    public static EMUApkTable T(final Context context, DownloadTask downloadTask, boolean alreadyInstalled) {
        com.papa.sim.statistic.t.f77354i = downloadTask.getCrc_link_type_val();
        EMUApkTable eMUApkTableF2 = f2(downloadTask.getRomType());
        if (eMUApkTableF2 != null) {
            return m0(context, eMUApkTableF2, alreadyInstalled);
        }
        if (eMUApkTableF2 != null) {
            com.papa.sim.statistic.t.f77353h = eMUApkTableF2.getVer() + "_" + eMUApkTableF2.getTag_id();
        }
        return eMUApkTableF2;
    }

    public static void T0(Context context, DownloadTask downloadTask, CollectionBeanSub collectionBeanSub) {
        int i10;
        int i11;
        if (downloadTask == null || collectionBeanSub == null) {
            ToastManager.show("游戏信息获取异常，请重试");
            return;
        }
        downloadTask.setExt(collectionBeanSub.getExt());
        if (downloadTask.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(downloadTask.getUrl());
            j3(downloadTask, context);
            IntentUtil.getInstance().intentActivity(context, intentDateBean);
            return;
        }
        if (z0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id()) > 0) {
            z4(context, downloadTask.getCrc_link_type_val());
            return;
        }
        z1(downloadTask, collectionBeanSub);
        if (collectionBeanSub.getDown_status() == 5) {
            if (downloadTask.getMax_an_compatible_ver() <= 0 || (((i11 = Build.VERSION.SDK_INT) >= downloadTask.getMin_an_compatible_ver() && i11 <= downloadTask.getMax_an_compatible_ver()) || !t2.h(downloadTask.getMod_info()))) {
                n1(context, downloadTask);
                return;
            }
            AndroidPermissionParams androidPermissionParams = new AndroidPermissionParams("该游戏在安卓" + Build.VERSION.RELEASE + "版本中可能存在闪退、显示效果不佳、运行不流畅等现象");
            Intent intent = new Intent();
            intent.putExtra(AndroidPermissionDialogActivity.KEY_PERMISSION_PARAMS, androidPermissionParams);
            IntentUtil.getInstance().startActivityWithCallback(context, AndroidPermissionDialogActivity.class, intent, new x(context, downloadTask));
            return;
        }
        if (downloadTask.getMax_an_compatible_ver() <= 0 || (((i10 = Build.VERSION.SDK_INT) >= downloadTask.getMin_an_compatible_ver() && i10 <= downloadTask.getMax_an_compatible_ver()) || !t2.h(downloadTask.getMod_info()))) {
            W0(context, downloadTask, collectionBeanSub.getTp_down_url(), collectionBeanSub.getOther_down_switch(), collectionBeanSub.getCdn_down_switch());
            return;
        }
        AndroidPermissionParams androidPermissionParams2 = new AndroidPermissionParams("该游戏在安卓" + Build.VERSION.RELEASE + "版本中可能存在闪退、显示效果不佳、运行不流畅等现象");
        Intent intent2 = new Intent();
        intent2.putExtra(AndroidPermissionDialogActivity.KEY_PERMISSION_PARAMS, androidPermissionParams2);
        IntentUtil.getInstance().startActivityWithCallback(context, AndroidPermissionDialogActivity.class, intent2, new y(context, downloadTask, collectionBeanSub));
    }

    public static String T1(TipNew showTip, List<TipBean> tags, String split) {
        TipBean model;
        TipBean tipBean;
        if (showTip == null || (model = showTip.getModel()) == null) {
            return "";
        }
        int i10 = 0;
        if (!"7".equals(model.getId()) && !"23".equals(model.getId())) {
            StringBuilder sb2 = new StringBuilder();
            if (tags != null) {
                int i11 = 0;
                for (TipBean tipBean2 : tags) {
                    if (t2.i(tipBean2.getId()) && !tipBean2.getId().equals(showTip.getModel().getId())) {
                        if (i11 > 2) {
                            break;
                        }
                        sb2.append(tipBean2.getName());
                        sb2.append(split);
                        i11++;
                    }
                }
            }
            return t2.i(sb2.toString()) ? sb2.substring(0, sb2.length() - split.length()) : showTip.getModel().getName();
        }
        String name = "安卓";
        if (tags == null) {
            return "安卓";
        }
        ArrayList<TipBean> arrayList = new ArrayList();
        for (TipBean tipBean3 : tags) {
            if (tipBean3.getId() != null && !tipBean3.getId().equals("") && !tipBean3.getId().equals("44") && !tipBean3.getId().equals("45") && !tipBean3.getId().equals("47") && !tipBean3.getId().equals("48")) {
                arrayList.add(tipBean3);
            }
        }
        if (arrayList.size() == 2) {
            TipBean tipBean4 = (TipBean) arrayList.get(0);
            name = tipBean4 != null ? tipBean4.getName() : "安卓";
            if (arrayList.size() <= 1 || (tipBean = (TipBean) arrayList.get(1)) == null) {
                return name;
            }
            return name + split + tipBean.getName();
        }
        if (arrayList.size() == 1) {
            TipBean tipBean5 = (TipBean) arrayList.get(0);
            if (tipBean5 == null) {
                return "安卓";
            }
            return "安卓" + split + tipBean5.getName();
        }
        for (TipBean tipBean6 : arrayList) {
            if (!"7".equals(tipBean6.getId())) {
                name = i10 == 0 ? tipBean6.getName() : name + split + tipBean6.getName();
                if (i10 == 2) {
                    return name;
                }
                i10++;
            }
        }
        return name;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void T2(Context context, Downloadable downInfo) {
        String str;
        String gameId;
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        if (downInfo == null || downInfo.getGInfo() == null) {
            V2(context, "", downloadGameArgsBean);
            return;
        }
        boolean z10 = true;
        if (downInfo.getGInfo().getBespeakSwitch() == 1 && downInfo.getGInfo().getDownStatus() == 6) {
            if (downInfo.getGInfo().getGameBook() == 0) {
                ((CommonService_.n0) CommonService_.P2(context).extra("onClickGamebeSpeakGameId", downInfo.getGInfo().getGameId())).a();
                return;
            } else if (downInfo.getGInfo().getGameBook() == 1) {
                ((CommonService_.n0) CommonService_.P2(context).extra("onClickUnGamebeSpeakGameId", downInfo.getGInfo().getGameId())).a();
                return;
            }
        }
        if (downInfo.isModGameVm()) {
            gameId = downInfo.getGInfo().getModGameId();
            str = "VIRTUAL_SINGLE";
        } else {
            str = "";
            gameId = downInfo.getGInfo().getGameId();
        }
        downloadGameArgsBean.setGameId(gameId);
        if (downInfo.getGInfo().getSpTagInfo() == null || downInfo.getGInfo().getSpTagInfo().getModel() == null || !"7".equals(downInfo.getGInfo().getSpTagInfo().getModel().getId())) {
            str = "ANDROID_SINGLE";
        } else {
            z10 = false;
        }
        if (!z10) {
            boolean zW2 = t2.h(downInfo.getGInfo().getPluginNum()) ? false : w2(Integer.parseInt(downInfo.getGInfo().getPluginNum()));
            if (zW2) {
                EMUApkTable eMUApkTableF2 = f2(downInfo.getGInfo().getPluginNum());
                str = (eMUApkTableF2 == null || eMUApkTableF2.getDown_type() != 2) ? "RAW_SIMULATOR" : "SO_SIMULATOR";
            }
            z10 = zW2;
        }
        try {
            String strD = new PrefDef_(context).androidIdNullsKey().d();
            if (t2.i(strD)) {
                List list = (List) JsonMapper.getInstance().fromJson(strD, List.class);
                if (t2.i(MApplication.K) && list.contains(MApplication.K) && z10 && IntentUtil.getInstance().goLogin(context)) {
                    return;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        downloadGameArgsBean.syncValue(downInfo);
        downloadGameArgsBean.setLocation(7);
        boolean zBooleanValue = new PrefDef_(context).download_game_switch().d().booleanValue();
        if (z10 && zBooleanValue) {
            A0(context, 2, gameId, str, new p(context, gameId, downloadGameArgsBean));
        } else {
            V2(context, gameId, downloadGameArgsBean);
        }
    }

    public static void T3(WebView webview) {
        WebSettings settings = webview.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setBuiltInZoomControls(false);
        settings.setMixedContentMode(0);
        try {
            Method method = Class.forName("android.webkit.WebView").getMethod("setWebContentsDebuggingEnabled", Boolean.TYPE);
            if (method != null) {
                method.setAccessible(true);
                method.invoke(null, Boolean.TRUE);
            }
        } catch (Exception unused) {
        }
        webview.setFocusable(true);
        webview.setDrawingCacheEnabled(true);
        webview.setScrollBarStyle(0);
        webview.setWebChromeClient(new z());
        webview.setWebViewClient(new a0());
    }

    public static void T4(DownloadTask downloadTask) {
        DownloadTask downloadTaskG;
        if (downloadTask == null || (downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val())) == null) {
            return;
        }
        downloadTaskG.setProgress(downloadTask.getProgress());
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadTask, 8));
    }

    public static EMUApkTable U(final Context context, DownloadTask downloadTask) {
        return V(context, downloadTask, false);
    }

    public static void U0(Context context, DownloadTask downloadTask, List<DownloadUrlBean> downloadUrlBeans, int otherOpen, int cdnOpen) {
        V0(context, downloadTask, downloadUrlBeans, otherOpen, cdnOpen, null);
    }

    public static String U1(DownloadTask task) {
        if (task == null) {
            return "";
        }
        if (t2.h(task.getRomType())) {
            task.setRomType(task.getPlugin_num());
        }
        String romType = task.getRomType();
        StringBuilder sb2 = new StringBuilder();
        ConstantIntEnum constantIntEnum = ConstantIntEnum.FBA;
        sb2.append(constantIntEnum.value());
        sb2.append("");
        if (sb2.toString().equals(romType)) {
            return constantIntEnum.nickName();
        }
        StringBuilder sb3 = new StringBuilder();
        ConstantIntEnum constantIntEnum2 = ConstantIntEnum.FC;
        sb3.append(constantIntEnum2.value());
        sb3.append("");
        if (sb3.toString().equals(romType)) {
            return constantIntEnum2.nickName();
        }
        StringBuilder sb4 = new StringBuilder();
        ConstantIntEnum constantIntEnum3 = ConstantIntEnum.GBA;
        sb4.append(constantIntEnum3.value());
        sb4.append("");
        if (sb4.toString().equals(romType)) {
            return constantIntEnum3.nickName();
        }
        StringBuilder sb5 = new StringBuilder();
        ConstantIntEnum constantIntEnum4 = ConstantIntEnum.PSP;
        sb5.append(constantIntEnum4.value());
        sb5.append("");
        if (sb5.toString().equals(romType)) {
            return constantIntEnum4.nickName();
        }
        StringBuilder sb6 = new StringBuilder();
        ConstantIntEnum constantIntEnum5 = ConstantIntEnum.NDS;
        sb6.append(constantIntEnum5.value());
        sb6.append("");
        if (sb6.toString().equals(romType)) {
            return constantIntEnum5.nickName();
        }
        StringBuilder sb7 = new StringBuilder();
        ConstantIntEnum constantIntEnum6 = ConstantIntEnum.PS2;
        sb7.append(constantIntEnum6.value());
        sb7.append("");
        if (sb7.toString().equals(romType)) {
            return constantIntEnum6.nickName();
        }
        StringBuilder sb8 = new StringBuilder();
        ConstantIntEnum constantIntEnum7 = ConstantIntEnum.N3DS;
        sb8.append(constantIntEnum7.value());
        sb8.append("");
        if (sb8.toString().equals(romType)) {
            return constantIntEnum7.nickName();
        }
        StringBuilder sb9 = new StringBuilder();
        ConstantIntEnum constantIntEnum8 = ConstantIntEnum.GBC;
        sb9.append(constantIntEnum8.value());
        sb9.append("");
        if (sb9.toString().equals(romType)) {
            return constantIntEnum8.nickName();
        }
        StringBuilder sb10 = new StringBuilder();
        ConstantIntEnum constantIntEnum9 = ConstantIntEnum.MD;
        sb10.append(constantIntEnum9.value());
        sb10.append("");
        if (sb10.toString().equals(romType)) {
            return constantIntEnum9.nickName();
        }
        StringBuilder sb11 = new StringBuilder();
        ConstantIntEnum constantIntEnum10 = ConstantIntEnum.PS;
        sb11.append(constantIntEnum10.value());
        sb11.append("");
        if (sb11.toString().equals(romType)) {
            return constantIntEnum10.nickName();
        }
        StringBuilder sb12 = new StringBuilder();
        ConstantIntEnum constantIntEnum11 = ConstantIntEnum.SFC;
        sb12.append(constantIntEnum11.value());
        sb12.append("");
        if (sb12.toString().equals(romType)) {
            return constantIntEnum11.nickName();
        }
        StringBuilder sb13 = new StringBuilder();
        ConstantIntEnum constantIntEnum12 = ConstantIntEnum.WSC;
        sb13.append(constantIntEnum12.value());
        sb13.append("");
        if (sb13.toString().equals(romType)) {
            return constantIntEnum12.nickName();
        }
        StringBuilder sb14 = new StringBuilder();
        ConstantIntEnum constantIntEnum13 = ConstantIntEnum.N64;
        sb14.append(constantIntEnum13.value());
        sb14.append("");
        if (sb14.toString().equals(romType)) {
            return constantIntEnum13.nickName();
        }
        StringBuilder sb15 = new StringBuilder();
        ConstantIntEnum constantIntEnum14 = ConstantIntEnum.ONS;
        sb15.append(constantIntEnum14.value());
        sb15.append("");
        if (sb15.toString().equals(romType)) {
            return constantIntEnum14.nickName();
        }
        StringBuilder sb16 = new StringBuilder();
        ConstantIntEnum constantIntEnum15 = ConstantIntEnum.DC;
        sb16.append(constantIntEnum15.value());
        sb16.append("");
        if (sb16.toString().equals(romType)) {
            return constantIntEnum15.nickName();
        }
        StringBuilder sb17 = new StringBuilder();
        ConstantIntEnum constantIntEnum16 = ConstantIntEnum.H5;
        sb17.append(constantIntEnum16.value());
        sb17.append("");
        if (sb17.toString().equals(romType)) {
            return constantIntEnum16.nickName();
        }
        List<TipBean> tipBeans = task.getTipBeans();
        if (tipBeans == null) {
            return LocalGameActivity.ALL;
        }
        for (TipBean tipBean : tipBeans) {
            if (tipBean != null) {
                String name = tipBean.getName();
                if (name != null) {
                    ConstantIntEnum constantIntEnum17 = ConstantIntEnum.GAMEOL;
                    if (name.indexOf(constantIntEnum17.nickName()) != -1) {
                        return constantIntEnum17.nickName();
                    }
                }
                if (name != null) {
                    ConstantIntEnum constantIntEnum18 = ConstantIntEnum.CONSOLEGAME;
                    if (name.indexOf(constantIntEnum18.nickName()) != -1) {
                        return constantIntEnum18.nickName();
                    }
                }
                StringBuilder sb18 = new StringBuilder();
                ConstantIntEnum constantIntEnum19 = ConstantIntEnum.CHOICENESS;
                sb18.append(constantIntEnum19.value());
                sb18.append("");
                if (sb18.toString().equals(tipBean.getId())) {
                    return constantIntEnum19.value() + "";
                }
            }
        }
        return LocalGameActivity.ALL;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void U2(Context context, CommonGameInfoBean gameInfo) {
        String str;
        String str2;
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        String id2 = "";
        if (gameInfo == null) {
            V2(context, "", downloadGameArgsBean);
            return;
        }
        GInfoBean g_info = gameInfo.getG_info();
        boolean zW2 = false;
        if (g_info != null) {
            boolean z10 = true;
            if (g_info.getBespeak_switch() == 1 && g_info.getDown_state().intValue() == 6) {
                if (g_info.getGame_book() == 0) {
                    ((CommonService_.n0) CommonService_.P2(context).extra("onClickGamebeSpeakGameId", g_info.getId())).a();
                    return;
                } else if (g_info.getGame_book() == 1) {
                    ((CommonService_.n0) CommonService_.P2(context).extra("onClickUnGamebeSpeakGameId", g_info.getId())).a();
                    return;
                }
            }
            if (g_info.isModGameVm()) {
                id2 = g_info.getMod_id();
                str2 = "VIRTUAL_SINGLE";
            } else {
                str2 = "";
                id2 = g_info.getId();
            }
            downloadGameArgsBean.setGameId(id2);
            if (g_info.getSp_tag_info() == null || g_info.getSp_tag_info().getModel() == null || !"7".equals(g_info.getSp_tag_info().getModel().getId())) {
                str2 = "ANDROID_SINGLE";
            } else {
                z10 = false;
            }
            if (z10) {
                str = str2;
                zW2 = z10;
            } else {
                zW2 = t2.h(g_info.getPlugin_num()) ? false : w2(Integer.parseInt(g_info.getPlugin_num()));
                if (zW2) {
                    str = f2(g_info.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
                } else {
                    str = str2;
                }
            }
        } else {
            str = "";
        }
        try {
            String strD = new PrefDef_(context).androidIdNullsKey().d();
            if (t2.i(strD)) {
                List list = (List) JsonMapper.getInstance().fromJson(strD, List.class);
                if (t2.i(MApplication.K) && list.contains(MApplication.K) && zW2 && IntentUtil.getInstance().goLogin(context)) {
                    return;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        downloadGameArgsBean.setFrom(gameInfo.get_from());
        downloadGameArgsBean.setFromType(gameInfo.get_from_type());
        downloadGameArgsBean.setKeyWord(gameInfo.getKeyword());
        downloadGameArgsBean.setRemarks(gameInfo.getReMarks());
        downloadGameArgsBean.setRecPosition(gameInfo.getRecPosition());
        downloadGameArgsBean.setNodeId(gameInfo.getNodeId());
        downloadGameArgsBean.setRecPosition(gameInfo.getVolcanoOtherJsonStr());
        downloadGameArgsBean.setFromRecommend(gameInfo.isFromRecomDown());
        if (!t2.h(gameInfo.getExt()) || gameInfo.getExtBean() == null) {
            downloadGameArgsBean.setExt(gameInfo.getExt());
        } else {
            downloadGameArgsBean.setExt(JsonMapper.toJsonString(gameInfo.getExtBean()));
        }
        downloadGameArgsBean.setExt1(gameInfo.getExt1());
        downloadGameArgsBean.setLocation(7);
        boolean zBooleanValue = new PrefDef_(context).download_game_switch().d().booleanValue();
        if (zW2 && zBooleanValue) {
            A0(context, 2, id2, str, new o(context, id2, downloadGameArgsBean));
        } else {
            V2(context, id2, downloadGameArgsBean);
        }
    }

    public static void U3(Context context) {
    }

    public static void U4(DownloadTask downloadTask) {
        DownloadTask downloadTaskG;
        if (downloadTask == null || t2.h(downloadTask.getCrc_link_type_val()) || (downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val())) == null) {
            return;
        }
        downloadTask.setStatus(downloadTaskG.getStatus());
        downloadTask.setSpeed(downloadTaskG.getSpeed());
        downloadTask.setCurrentSize(downloadTaskG.getCurrentSize());
        downloadTask.setProgress(downloadTaskG.getProgress());
    }

    public static EMUApkTable V(final Context context, DownloadTask downloadTask, boolean isAutoInstallPlug) {
        return W(context, downloadTask, false, isAutoInstallPlug);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void V0(Context context, DownloadTask downloadTask, List<DownloadUrlBean> downloadUrlBeans, int otherOpen, int cdnOpen, DownloadGameArgsBean downArgs) {
        boolean zB0;
        if (downloadTask.getDown_status() == 6) {
            ((CommonService_.n0) CommonService_.P2(context).extra("onClickGamebeSpeakGameId", downloadTask.getCrc_link_type_val())).a();
            return;
        }
        PointSendUtile.sendPoint(context, downloadTask.getCrc_link_type_val());
        if (downloadTask.getCrc_link_type_val().equals("846928650")) {
            zB0 = b0("2858865652", "752756546", context);
        } else if (downloadTask.getCrc_link_type_val().equals("752756546")) {
            zB0 = b0("846928650", "2943064551", context);
        } else if (downloadTask.getCrc_link_type_val().equals("802190896")) {
            zB0 = b0("633053817", "823069764", context);
        } else if (downloadTask.getCrc_link_type_val().equals("633053817") || downloadTask.getCrc_link_type_val().equals("823069764")) {
            zB0 = b0("802190896", "1306459891", context);
        } else if (downloadTask.getCrc_link_type_val().equals("1306459891")) {
            zB0 = b0("633053817", "823069764", context);
        } else if (downloadTask.getCrc_link_type_val().equals("2943064551")) {
            zB0 = b0("2858865652", "752756546", context);
        } else {
            zB0 = downloadTask.getCrc_link_type_val().equals("2858865652") ? b0("846928650", "2943064551", context) : true;
        }
        if (zB0) {
            if (!m2(context) || ConstantIntEnum.PS2.value() != Integer.parseInt(downloadTask.getPlugin_num())) {
                j1(context, downloadTask, downloadUrlBeans, otherOpen, cdnOpen, context, downArgs);
                return;
            }
            AndroidPermissionParams androidPermissionParams = new AndroidPermissionParams("你的手机CPU版本较低，运行游戏时可能会出现不流畅等情况，是否仍要下载？");
            Intent intent = new Intent();
            intent.putExtra(AndroidPermissionDialogActivity.KEY_PERMISSION_PARAMS, androidPermissionParams);
            IntentUtil.getInstance().startActivityWithCallback(context, AndroidPermissionDialogActivity.class, intent, new m(context, downloadTask, downloadUrlBeans, otherOpen, cdnOpen, downArgs));
        }
    }

    public static String V1() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress()) {
                        return inetAddressNextElement.getHostAddress().toString();
                    }
                }
            }
            return null;
        } catch (SocketException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static void V2(Context context, String gameId, DownloadGameArgsBean argsBean) {
        ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("requestAndDownloadGameById", gameId)).extra("_downloadArgs", argsBean)).a();
    }

    public static boolean V3(DownloadTask task, Context context) {
        if (!(context instanceof Activity) && MApplication.f3182z.getActivity() != null) {
            MApplication.f3182z.getActivity();
        }
        if (Build.VERSION.SDK_INT >= 28 || ConstantIntEnum.PS2.value() != Integer.parseInt(task.getPlugin_num())) {
            return false;
        }
        AndroidPermissionParams androidPermissionParams = new AndroidPermissionParams("该游戏在安卓" + Build.VERSION.RELEASE + "版本中可能存在闪退、显示效果不佳、运行不流畅等现象");
        androidPermissionParams.setSingleBtn(true);
        Intent intent = new Intent();
        intent.putExtra(AndroidPermissionDialogActivity.KEY_PERMISSION_PARAMS, androidPermissionParams);
        IntentUtil.getInstance().startActivityWithCallback(context, AndroidPermissionDialogActivity.class, intent, new r());
        return true;
    }

    public static void V4(DownloadTask newTask, DownloadTask oldTask) {
        if (oldTask == null || newTask == null) {
            return;
        }
        if (!APKUtils.P(oldTask)) {
            if (APKUtils.P(newTask)) {
                Q2(newTask);
                return;
            }
            return;
        }
        TipNew sp_tag_info = oldTask.getSp_tag_info();
        if (sp_tag_info != null) {
            TipNew sp_tag_info2 = newTask.getSp_tag_info();
            if (sp_tag_info2 != null) {
                sp_tag_info2.setSingle_game_vm(sp_tag_info.getSingle_game_vm());
                newTask.setSp_tag_info(sp_tag_info2);
            } else {
                newTask.setSp_tag_info(sp_tag_info);
            }
        }
        try {
            EMUApkTable eMUApkTableN = t6.p.o().n(ConstantIntEnum.VM_SINGLE_MOD.value() + "");
            if (eMUApkTableN != null) {
                SingleGameModInfoBean singleGameModInfoBean = oldTask.getSingleGameModInfoBean();
                if (singleGameModInfoBean == null) {
                    singleGameModInfoBean = new SingleGameModInfoBean();
                }
                if (t2.i(eMUApkTableN.getVer())) {
                    singleGameModInfoBean.setVersion(Integer.valueOf(Integer.parseInt(eMUApkTableN.getVer())));
                }
                singleGameModInfoBean.setDownUrl(eMUApkTableN.getDown_url());
                newTask.setSingle_game_mod_info(JsonMapper.toJsonString(singleGameModInfoBean));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static EMUApkTable W(final Context context, DownloadTask downloadTask, boolean alreadyInstalled, boolean isAutoInstallPlug) {
        com.papa.sim.statistic.t.f77354i = downloadTask.getCrc_link_type_val();
        EMUApkTable eMUApkTableF2 = f2(downloadTask.getRomType());
        if (eMUApkTableF2 != null) {
            return k0(context, eMUApkTableF2, alreadyInstalled, isAutoInstallPlug);
        }
        if (eMUApkTableF2 != null) {
            com.papa.sim.statistic.t.f77353h = eMUApkTableF2.getVer() + "_" + eMUApkTableF2.getTag_id();
        }
        return eMUApkTableF2;
    }

    public static void W0(Context context, DownloadTask downloadTask, List<DownloadUrlBean> downloadUrlBeans, int otherOpen, int cdnOpen) {
        X0(context, downloadTask, downloadUrlBeans, otherOpen, cdnOpen, null);
    }

    public static String W1(String color) {
        try {
            if (TextUtils.isEmpty(color)) {
                return "#348FD8";
            }
            int color2 = Color.parseColor(color);
            return ((((double) Color.red(color2)) * 0.299d) + (((double) Color.green(color2)) * 0.587d)) + (((double) Color.blue(color2)) * 0.114d) < 192.0d ? color : "#348FD8";
        } catch (Exception e10) {
            e10.printStackTrace();
            return "#348FD8";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void W2(Context context, String gameId, CommonGameInfoBean gameInfo) {
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        downloadGameArgsBean.setGameId(gameId);
        if (gameInfo != null) {
            downloadGameArgsBean.setFrom(gameInfo.get_from());
            downloadGameArgsBean.setFromType(gameInfo.get_from_type());
            downloadGameArgsBean.setKeyWord(gameInfo.getKeyword());
            downloadGameArgsBean.setRemarks(gameInfo.getReMarks());
            downloadGameArgsBean.setRecPosition(gameInfo.getRecPosition());
            downloadGameArgsBean.setNodeId(gameInfo.getNodeId());
            downloadGameArgsBean.setRecPosition(gameInfo.getVolcanoOtherJsonStr());
            downloadGameArgsBean.setFromRecommend(gameInfo.isFromRecomDown());
            downloadGameArgsBean.setExt(gameInfo.getExt());
            downloadGameArgsBean.setExt1(gameInfo.getExt1());
        }
        ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("requestAndUpdateGameById", gameId)).extra("_downloadArgs", downloadGameArgsBean)).a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void W3(DownloadTask downloadTask, String showContent, Context context, EMUApkTable apkTable, UpdateIntentDataBean updateIntentDataBean) {
        ((GprsNoticeDialogAlphActivity_.c) GprsNoticeDialogAlphActivity_.intent(context).b(downloadTask).flags(C.ENCODING_PCM_MU_LAW)).d(showContent).c(true).e(updateIntentDataBean).a(apkTable).start();
    }

    public static void W4(DownloadTask newTask, String gameId) {
        DownloadTask downloadTaskG;
        if (!t2.i(gameId) || (downloadTaskG = q5.f.M().G(gameId)) == null) {
            return;
        }
        V4(newTask, downloadTaskG);
    }

    public static EMUApkTable X(final Context context, DownloadTask downloadTask) {
        com.papa.sim.statistic.t.f77354i = downloadTask.getCrc_link_type_val();
        EMUApkTable eMUApkTableN = t6.o.o().n(downloadTask.getRomType());
        if (eMUApkTableN != null) {
            return i0(context, eMUApkTableN);
        }
        if (eMUApkTableN != null) {
            com.papa.sim.statistic.t.f77353h = eMUApkTableN.getVer() + "_" + eMUApkTableN.getTag_id();
        }
        return eMUApkTableN;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void X0(Context context, DownloadTask downloadTask, List<DownloadUrlBean> downloadUrlBeans, int otherOpen, int cdnOpen, DownloadGameArgsBean downArgs) {
        ModInfoBean modInfoBean;
        boolean zEquals = false;
        if (downloadTask != null) {
            String gameZipPath = downloadTask.getGameZipPath();
            if (!TextUtils.isEmpty(gameZipPath) && new File(gameZipPath).exists()) {
                DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
                if (downloadTaskG != null) {
                    downloadTask.setId(downloadTaskG.getId());
                }
                try {
                    if (Integer.parseInt(downloadTask.getPlugin_num()) == ConstantIntEnum.MGAME.value()) {
                        if (t2.i(downloadTask.getMod_info()) && (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class)) != null && (zEquals = downloadTask.getCrc_link_type_val().equals(modInfoBean.getMod_game_id()))) {
                            downloadTask.setResource_url_remote(modInfoBean.getDown_url());
                            Dtype dtype = Dtype.MOD;
                            downloadTask.setFileType(dtype.name());
                            downloadTask.setRomType(dtype.name());
                        }
                        if (!zEquals) {
                            SingleGameModInfoBean singleGameModInfoBean = (SingleGameModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getSingle_game_mod_info(), SingleGameModInfoBean.class);
                            if (t2.i(downloadTask.getSingle_game_mod_info()) && singleGameModInfoBean != null) {
                                downloadTask.setResource_url_remote(singleGameModInfoBean.getDownUrl());
                            }
                            Dtype dtype2 = Dtype.android;
                            downloadTask.setFileType(dtype2.name());
                            downloadTask.setRomType(dtype2.name());
                        }
                    }
                    if (downloadTask.getTipBeans() != null) {
                        for (TipBean tipBean : downloadTask.getTipBeans()) {
                            if (tipBean.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                                downloadTask.setRomType(Dtype.androiddata.name());
                            } else {
                                if (tipBean.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                                    downloadTask.setRomType(Dtype.androidobb.name());
                                }
                            }
                            if (tipBean.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                                downloadTask.setRomType(Dtype.androidobbdata.name());
                                break;
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                q5.f.M().m(downloadTask);
                if (Dtype.MOD.name().equals(downloadTask.getFileType()) || APKUtils.P(downloadTask)) {
                    downloadTask.setStatus(12);
                    q5.f.M().m(downloadTask);
                    org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadTask, 12));
                    com.php25.PDownload.d.l(context, downloadTask);
                    return;
                }
                if (downloadTask.getFileType().equals(Dtype.android.name())) {
                    downloadTask.setStatus(11);
                    q5.f.M().m(downloadTask);
                    org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadTask, 11));
                    com.join.android.app.common.utils.g.t0(context).A(context, downloadTask.getPath());
                    return;
                }
                return;
            }
        }
        if (downloadTask.getDown_status() == 2) {
            return;
        }
        if (downloadUrlBeans == null) {
            downloadUrlBeans = new ArrayList<>();
        }
        if (Build.VERSION.SDK_INT > 28 && !n0(context)) {
            downloadTask.setFromRecomDown(true);
            ((WufunGameDownFirstNotPermissDialog_.IntentBuilder_) WufunGameDownFirstNotPermissDialog_.intent(context).flags(C.ENCODING_PCM_MU_LAW)).start();
        }
        ArrayList<DownloadUrlBean> arrayList = new ArrayList<>();
        Iterator<DownloadUrlBean> it2 = downloadUrlBeans.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        DownloadTask downloadTaskG2 = q5.f.M().G(downloadTask.getCrc_link_type_val());
        zEquals = cdnOpen == 1;
        if (downloadTaskG2 == null && !TextUtils.isEmpty(downloadTask.getDownload_source_switch_v2()) && "1".equals(downloadTask.getDownload_source_switch_v2()) && (!TextUtils.isEmpty(downloadTask.getDownload_source_url()) || !TextUtils.isEmpty(downloadTask.getDownload_outside_url()))) {
            ((DownloadSnifferPromptDialog_.f) DownloadSnifferPromptDialog_.intent(context).c(downloadTask).d(downloadTask.getDownload_original_switch()).b(downloadTask.getDownload_source_url()).a(downloadTask.getDownload_outside_url()).flags(335544320)).start();
            return;
        }
        if (otherOpen == 1 && downloadTaskG2 == null) {
            DownloadChoiceUrlDialog_.intent(context).b(arrayList).a(downloadTask).c(zEquals).start();
            return;
        }
        if (downloadTaskG2 == null && !downloadTask.isUncheckSelfSupport() && downloadTask.getSp_tag_info() != null && downloadTask.getSp_tag_info().getSelf_support() == null) {
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("downGameIdNotSelfSupport", downloadTask.getCrc_link_type_val())).extra("downloadTask", downloadTask)).extra("_downloadArgs", downArgs)).a();
            return;
        }
        if (downArgs != null) {
            downArgs.setShowDownRecommend(!h0(downArgs.getPdInfo(), downArgs.getLocation()));
        }
        if (downArgs == null || downArgs.isShowDownRecommend()) {
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("getDownloadRecomedData", downloadTask.getCrc_link_type_val())).extra("showName", downloadTask.getShowName())).extra("fromRecommendDown", downloadTask.isFromRecomDown())).a();
        }
        com.php25.PDownload.d.c(downloadTask, context);
        if (downloadTask.isMiniGame()) {
            ((MiniGameLoadingActivity_.d) MiniGameLoadingActivity_.intent(context).flags(C.ENCODING_PCM_MU_LAW)).a(downloadTask.getCrc_link_type_val()).start();
        }
    }

    public static String X1(String color) {
        try {
            int color2 = Color.parseColor(color);
            int iRed = Color.red(color2);
            int iGreen = Color.green(color2);
            int iBlue = Color.blue(color2);
            int color3 = Color.parseColor("#F7F8F9");
            int iRed2 = Color.red(color3);
            int iGreen2 = Color.green(color3);
            int iBlue2 = Color.blue(color3);
            int i10 = iRed - iRed2;
            int i11 = iGreen - iGreen2;
            int i12 = (i10 * i10) + (i11 * i11);
            int i13 = iBlue - iBlue2;
            int i14 = i12 + (i13 * i13);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getNotSimilarColor: ");
            sb2.append(iRed);
            sb2.append(" ");
            sb2.append(iRed2);
            sb2.append(" ");
            sb2.append(iGreen);
            sb2.append(" ");
            sb2.append(iGreen2);
            sb2.append(" ");
            sb2.append(iBlue);
            sb2.append(" ");
            sb2.append(iBlue2);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("getNotSimilarColor: ");
            sb3.append(i14);
            return i14 > 10000 ? color : "#348FD8";
        } catch (Exception e10) {
            e10.printStackTrace();
            return "#348FD8";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void X2(Context context, DownloadTask downloadTask) {
        if (downloadTask == null || t2.h(downloadTask.getCrc_link_type_val())) {
            return;
        }
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        downloadGameArgsBean.setGameId(crc_link_type_val);
        downloadGameArgsBean.setFrom(downloadTask.get_from());
        downloadGameArgsBean.setFromType(downloadTask.get_from_type());
        downloadGameArgsBean.setFromRecommend(downloadTask.isFromRecomDown());
        downloadGameArgsBean.setKeyWord(downloadTask.getKeyword());
        downloadGameArgsBean.setExt(downloadTask.getExt());
        downloadGameArgsBean.setExt1(downloadTask.getExt1());
        ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("requestAndUpdateGameById", crc_link_type_val)).extra("_downloadArgs", downloadGameArgsBean)).a();
    }

    public static void X3(Context context, DownloadTask downloadTask, int status) {
        PendingIntent broadcast;
        if (d2.d(context, downloadTask) || d2.f49545c.equals(downloadTask.getCrc_link_type_val()) || Dtype.chajian.name().equals(downloadTask.getRomType())) {
            return;
        }
        MApplication mApplication = MApplication.f3182z;
        NotificationManager notificationManager = (NotificationManager) mApplication.getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(com.aggmoread.sdk.z.a.j.u.a("channel_1", "游戏下载完成通知", 4));
        }
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(mApplication.getResources(), R.drawable.icon);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(mApplication, "channel_1");
        if (status != 2) {
            if (status == 5) {
                if (t2.i(downloadTask.getMod_info())) {
                    Intent intent = new Intent(p5.a.f96220s0, null, mApplication, NotifcationReceiver.class);
                    ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class);
                    Bundle bundle = new Bundle();
                    bundle.putString("gameId", modInfoBean.getMod_game_id());
                    bundle.putString("standGameId", modInfoBean.getMain_game_id());
                    bundle.putString("from", downloadTask.get_from() + "");
                    intent.putExtras(bundle);
                    intent.putExtra(NotifcationReceiver.f72264a, downloadTask.getCrc_link_type_val());
                    intent.putExtra(NotifcationReceiver.f72265b, 1);
                    broadcast = PendingIntent.getBroadcast(mApplication, (int) SystemClock.uptimeMillis(), intent, 134217728);
                } else {
                    Intent intent2 = new Intent(p5.a.f96222t0, null, mApplication, NotifcationReceiver.class);
                    intent2.putExtra(NotifcationReceiver.f72264a, downloadTask.getCrc_link_type_val());
                    intent2.putExtra(NotifcationReceiver.f72265b, 1);
                    broadcast = PendingIntent.getBroadcast(mApplication, (int) SystemClock.uptimeMillis(), intent2, 134217728);
                }
                builder.setSmallIcon(R.drawable.icon).setContentTitle(downloadTask.getShowName() + "下载完成").setLargeIcon(bitmapDecodeResource).setContentIntent(broadcast).setAutoCancel(true).setContentText(downloadTask.getShowName() + "下载完成，快来玩耍吧").setOnlyAlertOnce(true).setChannelId("channel_1").setPriority(4);
                notificationManager.notify(downloadTask.getCrc_link_type_val().hashCode(), builder.build());
                return;
            }
            if (status == 11) {
                if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.android.name())) {
                    Intent intent3 = new Intent(p5.a.f96222t0, null, mApplication, NotifcationReceiver.class);
                    intent3.putExtra(NotifcationReceiver.f72264a, downloadTask.getCrc_link_type_val());
                    intent3.putExtra(NotifcationReceiver.f72265b, 1);
                    builder.setSmallIcon(R.drawable.icon).setContentTitle(downloadTask.getShowName() + "下载完成").setLargeIcon(bitmapDecodeResource).setAutoCancel(true).setContentIntent(PendingIntent.getBroadcast(mApplication, (int) SystemClock.uptimeMillis(), intent3, 134217728)).setChannelId("channel_1").setPriority(4).setContentText(downloadTask.getShowName() + "下载完成，点击安装");
                    notificationManager.notify(downloadTask.getCrc_link_type_val().hashCode(), builder.build());
                }
                c1.c(mApplication);
                return;
            }
            if (status == 7) {
                notificationManager.cancel(downloadTask.getCrc_link_type_val().hashCode());
                return;
            } else if (status != 8) {
                return;
            }
        }
        if (downloadTask.isHasDeleteNotify()) {
            return;
        }
        Intent intent4 = new Intent(p5.a.f96222t0, null, mApplication, NotifcationReceiver.class);
        intent4.putExtra(NotifcationReceiver.f72264a, downloadTask.getCrc_link_type_val());
        intent4.putExtra(NotifcationReceiver.f72265b, 0);
        builder.setSmallIcon(R.drawable.icon).setContentTitle("正在下载" + downloadTask.getShowName() + " " + downloadTask.getProgress() + "%").setLargeIcon(bitmapDecodeResource).setContentIntent(PendingIntent.getBroadcast(mApplication, (int) SystemClock.uptimeMillis(), intent4, 134217728)).setAutoCancel(true).setProgress(100, (int) downloadTask.getProgress(), false).setOnlyAlertOnce(true).setChannelId("channel_1").setPriority(4);
        Intent intent5 = new Intent(p5.a.f96218r0, null, mApplication, NotifcationReceiver.class);
        intent5.putExtra(NotifcationReceiver.f72264a, downloadTask.getCrc_link_type_val());
        builder.setDeleteIntent(PendingIntent.getBroadcast(mApplication, 0, intent5, 134217728));
        notificationManager.notify(downloadTask.getCrc_link_type_val().hashCode(), builder.build());
    }

    public static void X4(List<DownloadTask> downloadTasks) {
        if (downloadTasks == null || downloadTasks.size() == 0) {
            return;
        }
        for (DownloadTask downloadTask : downloadTasks) {
            DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
            if (downloadTaskG != null) {
                downloadTask.setSpeed(downloadTaskG.getSpeed());
                downloadTask.setCurrentSize(downloadTaskG.getCurrentSize());
                downloadTask.setProgress(downloadTaskG.getProgress());
                downloadTask.setStatus(downloadTaskG.getStatus());
            }
        }
    }

    public static boolean Y(List<TipBean> tipBeans) {
        if (tipBeans == null) {
            return false;
        }
        Iterator<TipBean> it2 = tipBeans.iterator();
        while (it2.hasNext()) {
            if ((ConstantIntEnum.GAMEOL.value() + "").equals(it2.next().getId())) {
                return true;
            }
        }
        return false;
    }

    public static void Y0(Context context, GameDetailBean collectionBeanSub) {
        h1(context, collectionBeanSub.getGame_id(), "ANDROID_SINGLE", collectionBeanSub.get_from(), collectionBeanSub.get_from_type(), collectionBeanSub.getRecPosition(), collectionBeanSub.getReMarks(), collectionBeanSub.getNodeId(), collectionBeanSub.getPosition_path(), false, collectionBeanSub.isFromRecomDown(), 7, "", 0, collectionBeanSub.getExt(), collectionBeanSub.getWhere());
    }

    private static AlertDialog Y1(Activity activity, String permission) {
        String str;
        String str2;
        if (activity == null || ContextCompat.checkSelfPermission(activity, permission) == 0) {
            return null;
        }
        permission.hashCode();
        switch (permission) {
            case "android.permission.READ_EXTERNAL_STORAGE":
            case "android.permission.WRITE_EXTERNAL_STORAGE":
                str = "存储权限使用说明";
                str2 = "下载游戏和管理游戏；用于对游戏资源进行必要的缓存和读取。";
                break;
            case "android.permission.READ_PHONE_STATE":
                str = "设备信息使用说明";
                str2 = "保障软件使用安全顺畅；协助识别用户，更好地解决用户问题。";
                break;
            case "android.permission.CAMERA":
                str = "相机权限使用说明";
                str2 = "用于用户发布帖子和修改头像等相关功能时，使用相机进行拍摄视频/图片。";
                break;
            default:
                str = "";
                str2 = "";
                break;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, R.style.AlertDialogCustomTransparent);
        View viewInflate = activity.getLayoutInflater().inflate(R.layout.dialog_permission_desc, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvTitle);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tvDesc);
        textView.setText(str);
        textView2.setText(str2);
        builder.setView(viewInflate);
        AlertDialog alertDialogCreate = builder.create();
        Window window = alertDialogCreate.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = (int) activity.getResources().getDimension(R.dimen.wdp700);
        attributes.height = -2;
        attributes.gravity = 48;
        window.setAttributes(attributes);
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setDimAmount(0.0f);
        window.setWindowAnimations(0);
        return alertDialogCreate;
    }

    private static void Y2(Context context, StartGameMeta startGameMeta) {
        String romPath = startGameMeta.getRomPath();
        if (romPath == null || !romPath.startsWith("/storage/emulated/0/wufan91/")) {
            return;
        }
        startGameMeta.setRomPath(romPath.replace("/storage/emulated/0/", "/storage/emulated/0/Android/data/" + context.getPackageName() + "/files/"));
    }

    public static void Y3(Context context, String showName, int count, int status) {
        Intent intent = new Intent(context, (Class<?>) MyGameManagerActivity_.class);
        intent.setFlags(335544320);
        PendingIntent activity = PendingIntent.getActivity(context, (int) SystemClock.uptimeMillis(), intent, 134217728);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(com.aggmoread.sdk.z.a.j.u.a("channel_1", "游戏下载通知", 4));
        }
        if (status != 9) {
            if (status == 11) {
                if (count > 1) {
                    notificationManager.notify(1, new NotificationCompat.Builder(context).setSmallIcon(R.drawable.icon).setContentTitle("你有" + showName + "等" + count + "款游戏需安装").setContentIntent(activity).setAutoCancel(true).setChannelId("channel_1").setPriority(4).setLargeIcon(BitmapFactory.decodeResource(context.getResources(), R.drawable.icon)).build());
                } else {
                    notificationManager.notify(1, new NotificationCompat.Builder(context).setSmallIcon(R.drawable.icon).setContentTitle("你有" + showName + "需安装").setContentIntent(activity).setAutoCancel(true).setPriority(4).setChannelId("channel_1").setLargeIcon(BitmapFactory.decodeResource(context.getResources(), R.drawable.icon)).build());
                }
            }
        } else if (count > 1) {
            notificationManager.notify(1, new NotificationCompat.Builder(context).setSmallIcon(R.drawable.icon).setContentTitle("你有" + showName + "等" + count + "款游戏需更新").setContentIntent(activity).setAutoCancel(true).setChannelId("channel_1").setPriority(4).setLargeIcon(BitmapFactory.decodeResource(context.getResources(), R.drawable.icon)).build());
        } else {
            notificationManager.notify(1, new NotificationCompat.Builder(context).setSmallIcon(R.drawable.icon).setContentTitle("你有" + showName + "需更新").setChannelId("channel_1").setContentIntent(activity).setAutoCancel(true).setPriority(4).setLargeIcon(BitmapFactory.decodeResource(context.getResources(), R.drawable.icon)).build());
        }
        c1.c(context);
    }

    public static void Y4(List<DownloadTask> downloadTasks, DownloadTask downloadTask) {
        if (downloadTasks == null || downloadTasks.size() == 0) {
            return;
        }
        for (DownloadTask downloadTask2 : downloadTasks) {
            if (downloadTask.getCrc_link_type_val().equals(downloadTask2.getCrc_link_type_val())) {
                DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask2.getCrc_link_type_val());
                if (downloadTaskG != null) {
                    downloadTask2.setSpeed(downloadTaskG.getSpeed());
                    downloadTask2.setCurrentSize(downloadTaskG.getCurrentSize());
                    downloadTask2.setProgress(downloadTaskG.getProgress());
                    downloadTask2.setStatus(downloadTaskG.getStatus());
                    return;
                }
                return;
            }
        }
    }

    private void Z(Context context, Bitmap bkg, View view, float radius) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
        new Canvas(bitmapCreateBitmap).drawBitmap(bkg, -view.getLeft(), -view.getTop(), (Paint) null);
        RenderScript renderScriptCreate = RenderScript.create(context);
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, allocationCreateFromBitmap.getElement());
        scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
        scriptIntrinsicBlurCreate.setRadius(radius);
        scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap);
        allocationCreateFromBitmap.copyTo(bitmapCreateBitmap);
        view.setBackground(new BitmapDrawable(context.getResources(), bitmapCreateBitmap));
        renderScriptCreate.destroy();
    }

    public static void Z0(Context context, AppBean collectionBeanSub) {
        String game_id;
        int i10;
        int i11;
        boolean z10;
        String str;
        boolean z11;
        String str2;
        if (collectionBeanSub != null) {
            if (collectionBeanSub.getMod_info() != null) {
                game_id = collectionBeanSub.getMod_info().getMod_game_id();
                i10 = collectionBeanSub.get_from();
                i11 = collectionBeanSub.get_from_type();
            } else {
                game_id = collectionBeanSub.getGame_id();
                i10 = collectionBeanSub.get_from();
                i11 = collectionBeanSub.get_from_type();
            }
            String str3 = game_id;
            int i12 = i10;
            int i13 = i11;
            collectionBeanSub.getTag_info();
            String str4 = collectionBeanSub.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
            if ("7".equals(collectionBeanSub.getSp_tag_info().getModel().getId())) {
                str = str4;
                z10 = false;
            } else {
                z10 = true;
                str = "ANDROID_SINGLE";
            }
            if (z10) {
                z11 = z10;
                str2 = str;
            } else {
                boolean zW2 = t2.h(collectionBeanSub.getPlugin_num()) ? false : w2(Integer.parseInt(collectionBeanSub.getPlugin_num()));
                if (zW2) {
                    str2 = f2(collectionBeanSub.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
                } else {
                    str2 = str;
                }
                z11 = zW2;
            }
            h1(context, str3, str2, i12, i13, collectionBeanSub.getRecPosition(), collectionBeanSub.getReMarks(), collectionBeanSub.getNodeId(), collectionBeanSub.getPosition_path(), z11, false, 7, "", 0, collectionBeanSub.getExt(), "");
        }
    }

    public static void Z1(Context context, int location, String gameId) {
        if (t2.i(gameId)) {
            a2(context, location, gameId, g2(q5.f.M().G(gameId)));
        }
    }

    public static String Z2(long fileS) {
        String str;
        if (fileS < 1024) {
            str = Math.round(fileS) + SDKManager.ALGO_B_AES_SHA256_RSA;
        } else if (fileS < 1048576) {
            str = Math.round(fileS / 1024.0d) + "K";
        } else if (fileS < 1073741824) {
            str = Math.round(fileS / 1048576.0d) + "M";
        } else {
            str = new DecimalFormat("0.0").format(fileS / 1.0737418E9f) + "G";
        }
        return (str.equals(".0B") || str.equals(".00B")) ? "0B" : str;
    }

    public static void Z3(Context context, DownloadTask downloadTask) {
        try {
            PrefDef_ prefDef_ = new PrefDef_(context);
            int iIntValue = prefDef_.downloadSpeedUpCount().d().intValue();
            int iIntValue2 = prefDef_.downloadSpeedUpCountCurrent().d().intValue();
            int iIntValue3 = prefDef_.downloadSpeedUpCountAD().d().intValue();
            int iIntValue4 = prefDef_.downloadSpeedUpCountCurrentAD().d().intValue();
            if (!com.join.mgps.Util.e0.z(prefDef_.downloadSpeedUpLastTime().d().longValue())) {
                prefDef_.downloadSpeedUpCountCurrent().g(0);
                prefDef_.downloadSpeedUpCountCurrentAD().g(0);
                prefDef_.downloadSpeedUpGames().g("");
                iIntValue2 = 0;
            }
            if (iIntValue2 < iIntValue && iIntValue4 < iIntValue3) {
                prefDef_.downloadSpeedUpCountCurrent().g(Integer.valueOf(iIntValue2 + 1));
                prefDef_.downloadSpeedUpLastTime().g(Long.valueOf(System.currentTimeMillis()));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static void Z4(Context context, DownloadTask downloadTask, StartGameMeta startGameMeta) {
        int iIntValue;
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData != null) {
            if (t2.i(accountData.getSecretKey())) {
                try {
                    iIntValue = Integer.valueOf(com.join.mgps.Util.b.vl(com.join.mgps.Util.a.b(new JSONObject(com.join.mgps.Util.a.b(accountData.getSecretKey())).optString(bm.aM)))).intValue();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    iIntValue = 0;
                }
            } else {
                iIntValue = 0;
            }
            startGameMeta.setVipLevel(iIntValue);
            startGameMeta.setsVipLevel(accountData.getSVIPLevel());
            startGameMeta.setUserID(accountData.getUid() + "");
        }
        if (downloadTask.getLock_sp() == 0) {
            startGameMeta.setSp(0);
            return;
        }
        List<UserPurchaseInfo> listO = t6.n0.p().o(AccountUtil_.getInstance_(context).getUid(), downloadTask.getCrc_link_type_val());
        if (listO == null || listO.size() <= 0) {
            startGameMeta.setSp(downloadTask.getLock_sp());
            startGameMeta.setCheat(1);
            return;
        }
        UserPurchaseInfo userPurchaseInfo = listO.get(0);
        String isOpenSp = userPurchaseInfo.getIsOpenSp();
        String spExpireTime = userPurchaseInfo.getSpExpireTime();
        if (spExpireTime != null && !spExpireTime.equals("")) {
            try {
                spExpireTime = new String(Base64Utils.decode(spExpireTime.getBytes("utf-8")));
            } catch (UnsupportedEncodingException e11) {
                e11.printStackTrace();
            }
        }
        if (isOpenSp == null || !isOpenSp.equals("true") || spExpireTime == null || Long.parseLong(spExpireTime) - (System.currentTimeMillis() / 1000) <= 0) {
            startGameMeta.setSp(1);
        } else {
            startGameMeta.setSp(2);
        }
        String isOpenCheat = userPurchaseInfo.getIsOpenCheat();
        String cheatExpireTime = userPurchaseInfo.getCheatExpireTime();
        if (cheatExpireTime != null && !cheatExpireTime.equals("")) {
            try {
                cheatExpireTime = new String(Base64Utils.decode(cheatExpireTime.getBytes("utf-8")));
            } catch (UnsupportedEncodingException e12) {
                e12.printStackTrace();
            }
        }
        if (isOpenCheat == null || !isOpenSp.equals("true")) {
            startGameMeta.setCheat(1);
        } else if (cheatExpireTime == null || Long.parseLong(cheatExpireTime) - (System.currentTimeMillis() / 1000) <= 0) {
            startGameMeta.setCheat(1);
        } else {
            startGameMeta.setCheat(2);
        }
    }

    public static String a0(String color1, String color2, double ratio) {
        if (ratio < 0.0d || ratio > 1.0d) {
            ratio = 0.5d;
        }
        if (!color1.contains("#") || !color2.contains("#") || color1.length() != color2.length() || color2.length() != 7) {
            return "";
        }
        String strReplace = color1.replace("#", "");
        String strReplace2 = color2.replace("#", "");
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("#");
        for (int i10 = 0; i10 < strReplace.length(); i10++) {
            stringBuffer.append(f0(((int) ((((double) e0(String.valueOf(strReplace.charAt(i10)))) * ratio) + (((double) e0(String.valueOf(strReplace2.charAt(i10)))) * (1.0d - ratio)))) + ""));
        }
        return stringBuffer.toString();
    }

    public static void a1(Context context, AppBeanMain appBeanMain) {
        String game_id;
        int i10;
        int i11;
        boolean z10;
        String str;
        boolean z11;
        String str2;
        AppBean game_info = appBeanMain.getGame_info();
        if (game_info != null) {
            if (game_info.getMod_info() != null) {
                game_id = game_info.getMod_info().getMod_game_id();
                i10 = game_info.get_from();
                i11 = game_info.get_from_type();
            } else {
                game_id = game_info.getGame_id();
                i10 = game_info.get_from();
                i11 = game_info.get_from_type();
            }
            String str3 = game_id;
            int i12 = i10;
            int i13 = i11;
            game_info.getTag_info();
            String str4 = game_info.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
            if ("7".equals(game_info.getSp_tag_info().getModel().getId())) {
                str = str4;
                z10 = false;
            } else {
                z10 = true;
                str = "ANDROID_SINGLE";
            }
            if (z10) {
                z11 = z10;
                str2 = str;
            } else {
                boolean zW2 = t2.h(game_info.getPlugin_num()) ? false : w2(Integer.parseInt(game_info.getPlugin_num()));
                if (zW2) {
                    str2 = f2(game_info.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
                } else {
                    str2 = str;
                }
                z11 = zW2;
            }
            f1(context, str3, str2, i12, i13, game_info.getRecPosition(), game_info.getReMarks(), game_info.getNodeId(), game_info.getPosition_path(), z11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a2(Context context, int location, String gameId, String typeId) {
        HashMap map = new HashMap();
        map.put("location", Integer.valueOf(location));
        map.put("typeId", typeId);
        ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("getPrivateDomainById", gameId)).extra("_ArgMaps", map)).a();
    }

    public static void a3(Context context) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("Papa_Stat_SharedPreferences", 4).edit();
        editorEdit.putString("userAvatarForSimulator", AccountUtil_.getInstance_(context).getAccountData().getAvatarSrc());
        editorEdit.putString("userNameForSimulator", AccountUtil_.getInstance_(context).getAccountData().getNickname());
        editorEdit.putBoolean("touristForSimulator", AccountUtil_.getInstance_(context).isTourist());
        editorEdit.commit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static void a4(Context context, String gameId) {
        try {
            PrefDef_ prefDef_ = new PrefDef_(context);
            int iIntValue = prefDef_.downloadSpeedUpCount().d().intValue();
            int iIntValue2 = prefDef_.downloadSpeedUpCountCurrent().d().intValue();
            long jLongValue = prefDef_.downloadSpeedUpLastTime().d().longValue();
            String strD = prefDef_.downloadSpeedUpGames().d();
            String str = "";
            if (TextUtils.isEmpty(strD)) {
                strD = "";
            }
            if (com.join.mgps.Util.e0.z(jLongValue)) {
                str = strD;
            } else {
                prefDef_.downloadSpeedUpCountCurrent().g(0);
                prefDef_.downloadSpeedUpGames().g("");
                iIntValue2 = 0;
            }
            if (iIntValue2 >= iIntValue) {
                return;
            }
            prefDef_.downloadSpeedUpCountCurrent().g(Integer.valueOf(iIntValue2 + 1));
            prefDef_.downloadSpeedUpLastTime().g(Long.valueOf(System.currentTimeMillis()));
            if (!str.contains(gameId)) {
                str = str + gameId + ",";
            }
            prefDef_.downloadSpeedUpGames().g(str);
            if (q5.f.M().G(gameId) != null) {
                return;
            }
            ((DownloadHighSpeedDialog_.c) DownloadHighSpeedDialog_.intent(context).flags(805306368)).a(gameId).start();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static boolean b0(String gameId2, String gameId3, Context context) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId2);
        DownloadTask downloadTaskG2 = q5.f.M().G(gameId3);
        if (downloadTaskG == null && downloadTaskG2 == null) {
            return true;
        }
        if (!(context instanceof Activity) && MApplication.f3182z.getActivity() != null) {
            context = MApplication.f3182z.getActivity();
        }
        a3.b(context).d("暂时不能下载此游戏");
        return false;
    }

    public static void b1(Context context, CollectionBeanSub collectionBeanSub) {
        String game_id;
        int i10;
        int i11;
        boolean z10;
        String str;
        boolean z11;
        String str2;
        if (collectionBeanSub.getMod_info() != null) {
            game_id = collectionBeanSub.getMod_info().getMod_game_id();
            i10 = collectionBeanSub.get_from();
            i11 = collectionBeanSub.get_from_type();
        } else {
            game_id = collectionBeanSub.getGame_id();
            i10 = collectionBeanSub.get_from();
            i11 = collectionBeanSub.get_from_type();
        }
        String str3 = game_id;
        int i12 = i10;
        int i13 = i11;
        String str4 = collectionBeanSub.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
        if (collectionBeanSub.getSp_tag_info() == null || collectionBeanSub.getSp_tag_info().getModel() == null || !"7".equals(collectionBeanSub.getSp_tag_info().getModel().getId())) {
            z10 = true;
            str = "ANDROID_SINGLE";
        } else {
            str = str4;
            z10 = false;
        }
        if (z10) {
            z11 = z10;
            str2 = str;
        } else {
            boolean zW2 = t2.h(collectionBeanSub.getPlugin_num()) ? false : w2(Integer.parseInt(collectionBeanSub.getPlugin_num()));
            if (zW2) {
                str2 = f2(collectionBeanSub.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
            } else {
                str2 = str;
            }
            z11 = zW2;
        }
        String ext = collectionBeanSub.getExt();
        if (t2.h(ext) && collectionBeanSub.getExtBean() != null) {
            ext = JsonMapper.toJsonString(collectionBeanSub.getExtBean().toExt());
        }
        h1(context, str3, str2, i12, i13, collectionBeanSub.getRecPosition(), collectionBeanSub.getReMarks(), collectionBeanSub.getNodeId(), collectionBeanSub.getPosition_path(), z11, collectionBeanSub.isFromRecomDown(), 7, "", collectionBeanSub.getDownType(), ext, collectionBeanSub.getWhere());
    }

    public static boolean b2(Context context, String gameId, DownloadTask downloadTask, EMUApkTable emuApkTable, boolean isFight) {
        EMUUpdateTable eMUUpdateTableN = t6.q.o().n(gameId);
        if (eMUUpdateTableN == null) {
            return false;
        }
        downloadTask.setUrl(eMUUpdateTableN.getDown_url_remote());
        downloadTask.setCfg_down_url(eMUUpdateTableN.getCfg_down_url());
        if (eMUUpdateTableN.getScreenshot_pic() != null && !eMUUpdateTableN.getScreenshot_pic().equals("")) {
            downloadTask.setScreenshot_pic(eMUUpdateTableN.getScreenshot_pic());
        }
        boolean zG0 = G0(eMUUpdateTableN.getRom_lowest_ver(), downloadTask.getVer());
        boolean zG1 = G0(eMUUpdateTableN.getVer(), downloadTask.getVer());
        boolean zG2 = G0(eMUUpdateTableN.getCfg_lowest_ver(), downloadTask.getCfg_ver());
        boolean zG3 = G0(eMUUpdateTableN.getCfg_ver(), downloadTask.getCfg_ver());
        boolean zG4 = G0(eMUUpdateTableN.getSource_lowest_ver(), downloadTask.getSource_ver());
        boolean zG5 = G0(eMUUpdateTableN.getSource_ver(), downloadTask.getSource_ver());
        int i10 = Integer.parseInt(downloadTask.getPlugin_num());
        if (Build.VERSION.SDK_INT > 29 && (i10 == ConstantIntEnum.VA32.value() || i10 == ConstantIntEnum.VA64.value())) {
            DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
            boolean zContains = downloadTask.getGameZipPath().contains(context.getPackageName());
            boolean zContains2 = downloadTaskG.getGameZipPath().contains(context.getPackageName());
            if (zContains && zContains2) {
                if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74786j) != 0) {
                    e3(context, com.kuaishou.weapon.p0.g.f74786j);
                    return true;
                }
                Intent intent = new Intent(context, (Class<?>) CopyDialogActivity.class);
                intent.putExtra("gameid", downloadTask.getCrc_link_type_val());
                context.startActivity(intent);
                return true;
            }
            if (zContains && !zContains2) {
                downloadTask.setGameZipPath(downloadTaskG.getGameZipPath());
            }
        }
        if (!zG1 && !zG3 && !zG5 && !zG0) {
            return false;
        }
        G4(downloadTask, context, new UpdateIntentDataBean(zG0, zG1, zG2, zG3, zG4, zG5, downloadTask, emuApkTable, isFight));
        return true;
    }

    public static void b3(final EMUApkTable emuApkTable, final Context context) {
        int i10 = Integer.parseInt(emuApkTable.getTag_id());
        DownloadTask downloadTaskC0 = q5.f.M().c0(i10);
        DownloadTask downloadTask = new DownloadTask();
        if (downloadTaskC0 != null) {
            downloadTask.setId(downloadTaskC0.getId());
        }
        downloadTask.setStatus(5);
        downloadTask.setPackageName(emuApkTable.getPackage_name());
        downloadTask.setPortraitURL(emuApkTable.getLogo());
        downloadTask.setShowName(emuApkTable.getApk_name());
        downloadTask.setUrl(emuApkTable.getDown_url());
        downloadTask.setTipBeans(null);
        downloadTask.setCrc_link_type_val(i10 + "");
        downloadTask.setDown_type(emuApkTable.getDown_type());
        try {
            String[] strArrSplit = emuApkTable.getVer().split("_");
            try {
                if (emuApkTable.getDown_type() == 2 && !TextUtils.isEmpty(emuApkTable.getApkPath()) && new File(emuApkTable.getApkPath()).exists()) {
                    strArrSplit = new File(emuApkTable.getApkPath()).getName().split("_");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            downloadTask.setVer_name(strArrSplit[1]);
            downloadTask.setVer(strArrSplit[0]);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        downloadTask.setRomType(i10 + "");
        downloadTask.setPlugin_num(i10 + "");
        downloadTask.setFileType(Dtype.chajian.name());
        downloadTask.setShowSize(emuApkTable.getSize());
        downloadTask.setDescribe(emuApkTable.getVer_info());
        q5.f.M().m(downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b4(Context context, PopwindowBean checkInfo, GameRoomActivity.x realNameCall, int from, String uid, int type, int action, String gameId) {
        RealNameDialog realNameDialog = new RealNameDialog(context, checkInfo, new f0(context, realNameCall, from, gameId));
        if (((Activity) context).isFinishing()) {
            return;
        }
        realNameDialog.show(uid, Integer.valueOf(type), Integer.valueOf(action));
    }

    public static String c(long fileS) {
        return d(fileS, "#.00");
    }

    public static boolean c0(Context context, String gameId) {
        try {
            PrefDef_ prefDef_ = new PrefDef_(context);
            int iIntValue = prefDef_.downloadSpeedUpCount().d().intValue();
            int iIntValue2 = prefDef_.downloadSpeedUpCountCurrent().d().intValue();
            long jLongValue = prefDef_.downloadSpeedUpLastTime().d().longValue();
            String strD = prefDef_.downloadSpeedUpGames().d();
            String str = "";
            if (TextUtils.isEmpty(strD)) {
                strD = "";
            }
            if (com.join.mgps.Util.e0.z(jLongValue)) {
                str = strD;
            } else {
                prefDef_.downloadSpeedUpCountCurrent().g(0);
                prefDef_.downloadSpeedUpGames().g("");
                iIntValue2 = 0;
            }
            return iIntValue2 < iIntValue && !str.contains(gameId) && q5.f.M().G(gameId) == null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    public static void c1(Context context, DetailResultBean collectionBeanSub) {
        String crc_sign_id;
        int i10;
        int i11;
        boolean z10;
        String str;
        boolean z11;
        String str2;
        if (collectionBeanSub.getMod_info() != null) {
            crc_sign_id = collectionBeanSub.getMod_info().getMod_game_id();
            i10 = collectionBeanSub.get_from();
            i11 = collectionBeanSub.get_from_type();
        } else {
            crc_sign_id = collectionBeanSub.getCrc_sign_id();
            i10 = collectionBeanSub.get_from();
            i11 = collectionBeanSub.get_from_type();
        }
        String str3 = crc_sign_id;
        int i12 = i10;
        int i13 = i11;
        collectionBeanSub.getTag_info();
        String str4 = collectionBeanSub.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
        if ("7".equals(collectionBeanSub.getSp_tag_info().getModel().getId())) {
            str = str4;
            z10 = false;
        } else {
            z10 = true;
            str = "ANDROID_SINGLE";
        }
        if (z10) {
            z11 = z10;
            str2 = str;
        } else {
            boolean zW2 = t2.h(collectionBeanSub.getPlugin_num()) ? false : w2(Integer.parseInt(collectionBeanSub.getPlugin_num()));
            if (zW2) {
                str2 = f2(collectionBeanSub.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
            } else {
                str2 = str;
            }
            z11 = zW2;
        }
        h1(context, str3, str2, i12, i13, collectionBeanSub.getRecPosition(), collectionBeanSub.getReMarks(), collectionBeanSub.getNodeId(), collectionBeanSub.getPosition_path(), z11, false, 7, "", 0, collectionBeanSub.getExt(), collectionBeanSub.getWhere());
    }

    public static String c2(List<TipBean> tipBeans) {
        for (TipBean tipBean : tipBeans) {
            if ("46".equals(tipBean.getId())) {
                return tipBean.getId();
            }
            EMUApkTable eMUApkTableU0 = u0(tipBean.getId());
            if (eMUApkTableU0 != null) {
                return eMUApkTableU0.getTag_id();
            }
        }
        return System.currentTimeMillis() + "";
    }

    public static void c3(final EMUApkTable emuApkTable, final Context context) {
        int i10 = Integer.parseInt(emuApkTable.getTag_id());
        DownloadTask downloadTaskC0 = q5.f.M().c0(i10);
        DownloadTask downloadTask = new DownloadTask();
        if (downloadTaskC0 != null) {
            downloadTask.setId(downloadTaskC0.getId());
        }
        downloadTask.setStatus(9);
        downloadTask.setPackageName(emuApkTable.getPackage_name());
        downloadTask.setPortraitURL(emuApkTable.getLogo());
        downloadTask.setShowName(emuApkTable.getApk_name());
        downloadTask.setUrl(emuApkTable.getDown_url());
        downloadTask.setTipBeans(null);
        downloadTask.setCrc_link_type_val(i10 + "");
        downloadTask.setDown_type(emuApkTable.getDown_type());
        try {
            String[] strArrSplit = emuApkTable.getVer().split("_");
            try {
                if (emuApkTable.getDown_type() == 2 && !TextUtils.isEmpty(emuApkTable.getApkPath()) && new File(emuApkTable.getApkPath()).exists()) {
                    strArrSplit = new File(emuApkTable.getApkPath()).getName().split("_");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            downloadTask.setVer_name(strArrSplit[1]);
            downloadTask.setVer(strArrSplit[0]);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        downloadTask.setRomType(i10 + "");
        downloadTask.setPlugin_num(i10 + "");
        downloadTask.setFileType(Dtype.chajian.name());
        downloadTask.setShowSize(emuApkTable.getSize());
        downloadTask.setDescribe(emuApkTable.getVer_info());
        q5.f.M().m(downloadTask);
    }

    public static void c4(Activity activity, String permission) {
        f49396e = false;
        AlertDialog alertDialogY1 = Y1(activity, permission);
        if (alertDialogY1 != null) {
            new Handler().postDelayed(new t(activity, alertDialogY1), 300L);
        }
        if (activity instanceof BaseAppCompatActivity) {
            ((BaseAppCompatActivity) activity).setChannelPermissionCallBack(new u(alertDialogY1));
        } else if (activity instanceof BaseFragmentActivity) {
            ((BaseFragmentActivity) activity).setChannelPermissionCallBack(new w(alertDialogY1));
        }
    }

    public static String d(long fileS, String dfString) {
        String str;
        DecimalFormat decimalFormat = new DecimalFormat(dfString);
        if (fileS < 1024) {
            str = decimalFormat.format(fileS) + SDKManager.ALGO_B_AES_SHA256_RSA;
        } else if (fileS < 1048576) {
            str = decimalFormat.format(fileS / 1024.0d) + "KB";
        } else if (fileS < 1073741824) {
            str = decimalFormat.format(fileS / 1048576.0d) + "M";
        } else {
            str = decimalFormat.format(fileS / 1.073741824E9d) + "GB";
        }
        return (str.equals(".0B") || str.equals(".00B")) ? "0B" : str;
    }

    public static boolean d0(Context context, String gameId) {
        int net_status;
        int switch_state;
        DownloadSpeedupCfgBean downloadSpeedupCfgBean;
        try {
            if (com.join.mgps.Util.b.piv(AccountUtil_.getInstance_(context).getAccountData())) {
                return false;
            }
            PrefDef_ prefDef_ = new PrefDef_(context);
            int iIntValue = prefDef_.downloadSpeedUpCount().d().intValue();
            int iIntValue2 = prefDef_.downloadSpeedUpCountCurrent().d().intValue();
            int iIntValue3 = prefDef_.downloadSpeedUpCountAD().d().intValue();
            int iIntValue4 = prefDef_.downloadSpeedUpCountCurrentAD().d().intValue();
            long jLongValue = prefDef_.downloadSpeedUpLastTime().d().longValue();
            TextUtils.isEmpty(prefDef_.downloadSpeedUpGames().d());
            if (!com.join.mgps.Util.e0.z(jLongValue)) {
                prefDef_.downloadSpeedUpCountCurrent().g(0);
                prefDef_.downloadSpeedUpCountCurrentAD().g(0);
                prefDef_.downloadSpeedUpGames().g("");
                iIntValue2 = 0;
            }
            if (iIntValue2 < iIntValue && iIntValue4 < iIntValue3) {
                String strD = prefDef_.downloadSpeedupCfg().d();
                if (!t2.i(strD) || (downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(strD, DownloadSpeedupCfgBean.class)) == null) {
                    net_status = 0;
                    switch_state = 0;
                } else {
                    switch_state = downloadSpeedupCfgBean.getSwitch_state();
                    net_status = downloadSpeedupCfgBean.getNet_status();
                }
                DownloadTask downloadTaskG = q5.f.M().G(gameId);
                if (downloadTaskG == null || !t2.i(downloadTaskG.getTips()) || !downloadTaskG.getTips().contains("网游") || switch_state != 1 || net_status != 1) {
                }
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return true;
    }

    public static void d1(Context context, GamedetialModleFourBean collectionBeanSub) {
        e1(context, collectionBeanSub, "");
    }

    public static String d2(int romType) {
        if (ConstantIntEnum.FBA.value() == romType) {
            return "arc";
        }
        if (ConstantIntEnum.NDS.value() == romType) {
            return "nds";
        }
        if (ConstantIntEnum.PS2.value() == romType) {
            return "ps2";
        }
        if (ConstantIntEnum.N3DS.value() == romType) {
            return "3ds";
        }
        if (ConstantIntEnum.GBA.value() == romType) {
            return "gba";
        }
        if (ConstantIntEnum.PSP.value() == romType) {
            return "psp";
        }
        if (ConstantIntEnum.FC.value() == romType) {
            return "fc";
        }
        if (ConstantIntEnum.AVG.value() == romType) {
            return "avg";
        }
        if (ConstantIntEnum.FIGHT.value() == romType) {
            return "fight";
        }
        if (ConstantIntEnum.SFC.value() == romType) {
            return "sfc";
        }
        if (ConstantIntEnum.WORLD.value() == romType) {
            return "world";
        }
        if (ConstantIntEnum.NET.value() == romType) {
            return "net";
        }
        if (ConstantIntEnum.MGAME.value() == romType) {
            return "mgame";
        }
        if (ConstantIntEnum.DATA.value() == romType) {
            return "data";
        }
        if (ConstantIntEnum.OBB.value() == romType) {
            return "obb";
        }
        if (ConstantIntEnum.MD.value() == romType) {
            return LiveConfigKey.MEDIUM;
        }
        if (ConstantIntEnum.GBA_ENHANCE.value() == romType) {
            return "gba";
        }
        if (ConstantIntEnum.PS.value() == romType) {
            return "ps";
        }
        if (ConstantIntEnum.WSC.value() == romType) {
            return "wsc";
        }
        if (ConstantIntEnum.GBC.value() == romType) {
            return "gbc";
        }
        if (ConstantIntEnum.N64.value() == romType) {
            return "n64";
        }
        if (ConstantIntEnum.ONS.value() == romType) {
            return "ons";
        }
        return ConstantIntEnum.DC.value() == romType ? "dc" : "";
    }

    public static void d3(Context context, String gameid) {
        new n(gameid, context).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d4(Context context, PopwindowBean info, RealNameLoginDialog.OnBtnClickListener lienster) {
        Activity activity = context instanceof Activity ? (Activity) context : MApplication.f3182z.getActivity();
        if (activity == null) {
            return;
        }
        new RealNameLoginDialog(activity).setDialogData(info).setDialogListener(lienster).show();
    }

    public static boolean delete(File file) {
        String[] list;
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isDirectory() && (list = file.list()) != null) {
            for (String str : list) {
                delete(new File(file, str));
            }
        }
        try {
            File file2 = new File(file.getParent() + File.separator + System.currentTimeMillis());
            file.renameTo(file2);
            return file2.delete();
        } catch (Exception e10) {
            try {
                return file.delete();
            } catch (Exception unused) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    public static String e(long fileS) {
        String str;
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (fileS < 1024) {
            str = decimalFormat.format(fileS) + SDKManager.ALGO_B_AES_SHA256_RSA;
        } else if (fileS < 1048576) {
            str = decimalFormat.format(fileS / 1024.0d) + "KB";
        } else if (fileS < 1073741824) {
            str = decimalFormat.format(fileS / 1048576.0d) + "M";
        } else {
            str = decimalFormat.format(fileS / 1.073741824E9d) + "G";
        }
        return (str.equals(".0B") || str.equals(".00B")) ? "0B" : str;
    }

    private static int e0(String temp) {
        return Integer.valueOf(new BigInteger(temp, 16).toString()).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e1(Context context, GamedetialModleFourBean collectionBeanSub, String packagePath) {
        String game_id;
        int i10;
        int i11;
        boolean z10;
        String str;
        boolean z11;
        if (collectionBeanSub.getMod_info() != null) {
            game_id = collectionBeanSub.getMod_info().getMod_game_id();
            i10 = collectionBeanSub.get_from();
            i11 = collectionBeanSub.get_from_type();
        } else {
            game_id = collectionBeanSub.getGame_id();
            i10 = collectionBeanSub.get_from();
            i11 = collectionBeanSub.get_from_type();
        }
        String str2 = game_id;
        int i12 = i10;
        int i13 = i11;
        collectionBeanSub.getTag_info();
        String str3 = collectionBeanSub.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
        if ("7".equals(collectionBeanSub.getSp_tag_info().getModel().getId())) {
            z10 = false;
        } else {
            str3 = "ANDROID_SINGLE";
            z10 = true;
        }
        if (z10) {
            str = str3;
            z11 = z10;
        } else {
            boolean zW2 = t2.h(collectionBeanSub.getPlugin_num()) ? false : w2(Integer.parseInt(collectionBeanSub.getPlugin_num()));
            if (zW2) {
                str3 = f2(collectionBeanSub.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
            }
            str = str3;
            z11 = zW2;
        }
        if (collectionBeanSub.getBespeak_switch() == 1 && collectionBeanSub.getDown_status() == 6) {
            if (collectionBeanSub.getGame_book() == 0) {
                ((CommonService_.n0) CommonService_.P2(context).extra("onClickGamebeSpeakGameId", str2)).a();
                return;
            } else if (collectionBeanSub.getGame_book() == 1) {
                ((CommonService_.n0) CommonService_.P2(context).extra("onClickUnGamebeSpeakGameId", str2)).a();
                return;
            }
        }
        h1(context, str2, str, i12, i13, collectionBeanSub.getRecPosition(), collectionBeanSub.getReMarks(), collectionBeanSub.getNodeId(), collectionBeanSub.getPosition_path(), z11, false, 6, packagePath, collectionBeanSub.getDownType(), collectionBeanSub.getExt(), collectionBeanSub.getWhere());
    }

    public static int e2(Context context) {
        DownloadTask downloadTaskG = q5.f.M().G(com.papa.sim.statistic.t.f77354i);
        if (downloadTaskG == null) {
            return 1;
        }
        List<UserPurchaseInfo> listO = t6.n0.p().o(AccountUtil_.getInstance_(context).getUid(), downloadTaskG.getCrc_link_type_val());
        if (downloadTaskG.getLock_sp() == 0) {
            return 0;
        }
        if (listO != null && listO.size() > 0) {
            UserPurchaseInfo userPurchaseInfo = listO.get(0);
            String isOpenSp = userPurchaseInfo.getIsOpenSp();
            String spExpireTime = userPurchaseInfo.getSpExpireTime();
            if (spExpireTime != null && !spExpireTime.equals("")) {
                try {
                    spExpireTime = new String(Base64Utils.decode(spExpireTime.getBytes("utf-8")));
                } catch (UnsupportedEncodingException e10) {
                    e10.printStackTrace();
                }
            }
            if (isOpenSp != null && isOpenSp.equals("true") && spExpireTime != null && Long.parseLong(spExpireTime) - (System.currentTimeMillis() / 1000) > 0) {
                return 2;
            }
        }
        return 1;
    }

    public static void e3(Context context, String message) {
        Intent intent = new Intent();
        intent.setAction("com.wufun.get.permission");
        intent.putExtra("permission", message);
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    public static void e4(Context context) {
        AndroidPermissionParams androidPermissionParams = new AndroidPermissionParams("您当前安装的PS2模拟器不支持在悟饭内一键启动游戏，请卸载其他平台的PS2模拟器后重试");
        androidPermissionParams.setSingleBtn(true);
        Intent intent = new Intent();
        intent.putExtra(AndroidPermissionDialogActivity.KEY_PERMISSION_PARAMS, androidPermissionParams);
        IntentUtil.getInstance().startActivityWithCallback(context, AndroidPermissionDialogActivity.class, intent, new s());
    }

    public static String f(long fileS) {
        String str = new DecimalFormat("#0.00").format(fileS / 1024.0d);
        return (str.equals(".0") || str.equals(".00")) ? "0" : str;
    }

    private static String f0(String temp) {
        return Integer.toHexString(Integer.parseInt(new BigInteger(temp, 10).toString()));
    }

    public static void f1(Context context, String gameId, String gameType, int from, int fromType, String recPosition, String remarks, String nodeId, VolcanoOther volcanoOther, boolean isSign) {
        g1(context, gameId, gameType, from, fromType, recPosition, remarks, nodeId, volcanoOther, isSign, false, 7, "", 0);
    }

    public static EMUApkTable f2(String plugin_num) {
        EMUApkTable eMUApkTableU0;
        if (plugin_num == null || (eMUApkTableU0 = u0(plugin_num)) == null) {
            return null;
        }
        return eMUApkTableU0;
    }

    public static void f3(Context context, String message, String filePath) {
        Intent intent = new Intent();
        intent.setAction("com.wufun.get.permission");
        intent.putExtra("permission", message);
        intent.putExtra("filePath", filePath);
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00c7 A[PHI: r14
      0x00c7: PHI (r14v8 long) = (r14v0 long), (r14v1 long), (r14v3 long) binds: [B:22:0x0092, B:32:0x00c4, B:28:0x00b4] A[DONT_GENERATE, DONT_INLINE]] */
    public static void f4(Context context, DownloadTask downloadTask, String from, ExtBean extBean) {
        int i10;
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        String strD = new PrefDef_(context).singleGameAdCfg().d();
        if (!t2.i(strD)) {
            L2(context, crc_link_type_val, downloadTask.getPackageName(), downloadTask, from, extBean);
            return;
        }
        Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
        int iB = 0;
        boolean z10 = false;
        while (it2.hasNext()) {
            if ("23".equals(it2.next().getId())) {
                z10 = true;
            }
        }
        SingleGameAdCfgBean singleGameAdCfgBean = (SingleGameAdCfgBean) JsonMapper.getInstance().fromJson(strD, SingleGameAdCfgBean.class);
        if (singleGameAdCfgBean == null || singleGameAdCfgBean.getSwitch_state() != 1 || !z10) {
            L2(context, crc_link_type_val, downloadTask.getPackageName(), downloadTask, from, extBean);
            return;
        }
        if (singleGameAdCfgBean.getSwitch_state() != 1) {
            L2(context, crc_link_type_val, downloadTask.getPackageName(), downloadTask, from, extBean);
            return;
        }
        UserPrefs userPrefs = new UserPrefs(context);
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        int uid = accountData != null ? accountData.getUid() : 0;
        String adGamesConfig = userPrefs.getAdGamesConfig(uid + "");
        long j10 = 0;
        if (t2.i(adGamesConfig)) {
            try {
                JSONObject jSONObject = new JSONObject(adGamesConfig);
                j10 = jSONObject.has("lastTime") ? Long.parseLong(jSONObject.get("lastTime").toString()) : System.currentTimeMillis();
                if (jSONObject.has("adCount")) {
                    i10 = Integer.parseInt(jSONObject.get("adCount").toString());
                } else {
                    i10 = 0;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            i10 = 0;
        }
        if (!com.join.mgps.Util.e0.z(j10)) {
            i10 = 0;
        }
        if (!(i10 < singleGameAdCfgBean.getDaily_times() && !com.join.mgps.Util.b.piv(accountData))) {
            L2(context, crc_link_type_val, downloadTask.getPackageName(), downloadTask, from, extBean);
            userPrefs.setAdGamesConfig(uid + "", i10);
            return;
        }
        if (singleGameAdCfgBean.getPlay_cfg() != null && singleGameAdCfgBean.getPlay_cfg().size() > 0) {
            ArrayList arrayList = new ArrayList();
            Iterator<PlayCfgBean> it3 = singleGameAdCfgBean.getPlay_cfg().iterator();
            while (it3.hasNext()) {
                arrayList.add(Double.valueOf(it3.next().getProbability()));
            }
            iB = com.join.mgps.ad.p.b(arrayList);
        }
        PlayCfgBean playCfgBean = singleGameAdCfgBean.getPlay_cfg().get(iB);
        RewardAdParams rewardAdParams = new RewardAdParams(playCfgBean.getSdk_key(), playCfgBean.getAd_id(), playCfgBean.getSdk_type(), playCfgBean.getReward_time(), singleGameAdCfgBean, crc_link_type_val, crc_link_type_val);
        Intent intent = new Intent();
        intent.putExtra(RewardAdDialogActivity.KEY_REWARD_PARAMS, rewardAdParams);
        IntentUtil.getInstance().startActivityWithCallback(context, RewardAdDialogActivity.class, intent, new h0(context, crc_link_type_val, downloadTask, from, extBean, userPrefs, uid, i10 + 1));
    }

    public static String g(long fileS, String dfString) {
        String str;
        DecimalFormat decimalFormat = new DecimalFormat(dfString);
        if (fileS <= 0) {
            return "0B";
        }
        if (fileS <= 10240) {
            str = "0.01M";
        } else {
            str = decimalFormat.format(fileS / 1048576.0d) + "M";
        }
        return str.equals("0.0M") ? "0.1M" : str;
    }

    public static EMUApkTable g0(String packagename) {
        try {
            HashMap map = new HashMap();
            map.put("package_name", packagename);
            List<EMUApkTable> listH = t6.p.o().h(map);
            if (listH == null || listH.size() <= 0) {
                return null;
            }
            Iterator<EMUApkTable> it2 = listH.iterator();
            if (it2.hasNext()) {
                return it2.next();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void g1(Context context, String gameId, String gameType, int from, int fromType, String recPosition, String remarks, String nodeId, VolcanoOther volcanoOther, boolean isSign, boolean isFromRecomDown, int location, String packagePath, int downType) {
        h1(context, gameId, gameType, from, fromType, recPosition, remarks, nodeId, volcanoOther, isSign, isFromRecomDown, 7, packagePath, downType, null, null);
    }

    public static String g2(DownloadTask task) {
        TipNew sp_tag_info;
        if (task != null && (sp_tag_info = task.getSp_tag_info()) != null) {
            if (sp_tag_info.getMini_game() != null) {
                return sp_tag_info.getMini_game().getId();
            }
            if (sp_tag_info.getSingle_game_vm() != null) {
                return sp_tag_info.getSingle_game_vm().getId();
            }
            if (APKUtils.K(task) && t2.i(task.getMod_info())) {
                return "2046";
            }
            if (sp_tag_info.getModel() != null && "23".equals(sp_tag_info.getModel().getId())) {
                return sp_tag_info.getModel().getId();
            }
            if (sp_tag_info.getModel() != null) {
                return sp_tag_info.getModel().getId();
            }
        }
        return "0";
    }

    public static void g3(Context context) {
        Intent intent = new Intent();
        intent.setAction(p5.a.I);
        context.sendBroadcast(intent);
    }

    public static void g4(Context context, NetBattleStartGameDto netBattleStartGameDto, DownloadTask downloadTask, String str, int i10) {
        int i11;
        EMUApkTable eMUApkTableN;
        if (downloadTask == null) {
            return;
        }
        String gameZipPath = downloadTask.getGameZipPath();
        String strSubstring = gameZipPath.substring(0, gameZipPath.lastIndexOf(o0.f49827a));
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(downloadTask.getPlugin_num()));
        int i12 = 1;
        if (downloadTaskC0 != null && (eMUApkTableN = t6.p.o().n(downloadTaskC0.getPlugin_num())) != null && eMUApkTableN.getDown_type() == 2 && downloadTaskC0.getDown_type() == 2) {
            if (downloadTaskC0.getStatus() == 11 && eMUApkTableN.getVerCode() == downloadTaskC0.getVerCode()) {
                PlugInstallDialog_.a aVarA = PlugInstallDialog_.intent(context).c(eMUApkTableN).a(downloadTask);
                if (downloadTaskC0.getDown_type() == 2 && com.join.android.app.common.utils.o.z(eMUApkTableN)) {
                    i12 = 2;
                }
                aVarA.b(i12).start();
                return;
            }
            if (!com.join.android.app.common.utils.o.s(context, downloadTaskC0, new String[0])) {
                downloadTaskC0.setStatus(0);
                String gameZipPath2 = downloadTaskC0.getGameZipPath();
                if (!TextUtils.isEmpty(gameZipPath2)) {
                    File file = new File(gameZipPath2);
                    if (file.exists()) {
                        file.delete();
                    }
                }
                downloadTaskC0.setPath("");
                downloadTaskC0.setGameZipPath("");
                q5.f.M().m(downloadTaskC0);
                q1(eMUApkTableN, context);
                return;
            }
        }
        EMUApkTable eMUApkTableX = X(context, downloadTask);
        if (eMUApkTableX != null) {
            try {
                i11 = Integer.parseInt(downloadTask.getRomType());
            } catch (Exception unused) {
                i11 = 33;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("emuApkTable=");
            sb2.append(eMUApkTableX.getTag_id());
            PrefDef_ prefDef_ = new PrefDef_(context);
            int iIntValue = prefDef_.runRomFirst().d().intValue();
            String strD = prefDef_.insatllAppFirstData().d();
            if (strD != null && eMUApkTableX.getDown_type() == 0) {
                BootPageData bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(strD, BootPageData.class);
                if (iIntValue > 0 && bootPageData != null && bootPageData.getPerformance_boot() != null) {
                    PapaPlugGuideActivity_.intent(context).a(0).start();
                    prefDef_.runRomFirst().g(Integer.valueOf(iIntValue - 1));
                    return;
                }
            }
            if (b2(context, crc_link_type_val, downloadTask, eMUApkTableX, false)) {
                return;
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(eMUApkTableX.getPackage_name());
            startGameMeta.setActivityName(eMUApkTableX.getLaunch_name());
            startGameMeta.setRomPath(strSubstring);
            startGameMeta.setStartMode(i10);
            startGameMeta.setGameID(crc_link_type_val);
            startGameMeta.setType(i11);
            startGameMeta.setRoomID(netBattleStartGameDto.getRoomID());
            startGameMeta.setServerPort(netBattleStartGameDto.getServerPort() + "");
            startGameMeta.setServerIP(netBattleStartGameDto.getServerIP());
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            startGameMeta.setPorder(netBattleStartGameDto.getPorder());
            startGameMeta.setP1Name(netBattleStartGameDto.getP1Name());
            startGameMeta.setP2Name(netBattleStartGameDto.getP2Name());
            startGameMeta.setOldGame(netBattleStartGameDto.getOldGame());
            startGameMeta.setClientIp(netBattleStartGameDto.getClientIp());
            Z4(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setTcptype(netBattleStartGameDto.getTcptype());
            startGameMeta.setUdpport(netBattleStartGameDto.getUdpport());
            startGameMeta.setUdpIP(netBattleStartGameDto.getUdpIP());
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setNetState(str);
            startGameMeta.setNetMode(1);
            startGameMeta.setUserIcon(netBattleStartGameDto.getUserIcon());
            startGameMeta.setUserName(netBattleStartGameDto.getUserName());
            startGameMeta.setNetPlayers(netBattleStartGameDto.getNetPlayers());
            startGameMeta.setGamePlayers(netBattleStartGameDto.getGamePlayers());
            startGameMeta.setSp(0);
            startGameMeta.setGroupId(netBattleStartGameDto.getGroupId());
            startGameMeta.setArea(netBattleStartGameDto.getArea());
            startGameMeta.setGametype(P2(downloadTask.getTipBeans()));
            startGameMeta.setRoomMode(netBattleStartGameDto.getRoomMode());
            startGameMeta.setGametype(netBattleStartGameDto.getGameype());
            startGameMeta.setAllowPeripheralJoin(netBattleStartGameDto.isAllowPeripheralJoin());
            startGameMeta.setScoreBoard(netBattleStartGameDto.isOpenBattleScore() ? 1 : 0);
            if (E(context, startGameMeta, eMUApkTableX)) {
                F2(context, startGameMeta, 1);
            }
        }
    }

    public static String h(long fileS) {
        String str;
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (fileS < 1024) {
            str = decimalFormat.format(fileS) + SDKManager.ALGO_B_AES_SHA256_RSA;
        } else if (fileS < 1048576) {
            str = decimalFormat.format(fileS / 1024.0d) + "KB";
        } else if (fileS < 1073741824) {
            str = decimalFormat.format(fileS / 1048576.0d) + "M";
        } else {
            str = decimalFormat.format(fileS / 1.073741824E9d) + "G";
        }
        return (str.equals(".0B") || str.equals(".00B")) ? "0B" : str;
    }

    public static boolean h0(DomainInfoBean domainInfoBean, int location) {
        if (domainInfoBean == null) {
            return false;
        }
        PdAdCfgBean pdAdCfgBeanConvertStr2Bean = PdAdCfgBean.convertStr2Bean(MApplication.f3182z.p().pd_ad_config().d());
        if (!(pdAdCfgBeanConvertStr2Bean != null && pdAdCfgBeanConvertStr2Bean.canShowDownload())) {
            return false;
        }
        if (pdAdCfgBeanConvertStr2Bean != null) {
            pdAdCfgBeanConvertStr2Bean.updateDownloadShowTimes();
        }
        domainInfoBean.setLocation(location);
        com.join.mgps.Util.h0.h0(MApplication.f3182z).c0(MApplication.f3182z, domainInfoBean);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void h1(Context context, String gameId, String gameType, int from, int fromType, String recPosition, String remarks, String nodeId, VolcanoOther volcanoOther, boolean isSign, boolean isFromRecomDown, int location, String packagePath, int downType, String ext, String where) {
        try {
            String strD = new PrefDef_(context).androidIdNullsKey().d();
            if (t2.i(strD)) {
                List list = (List) JsonMapper.getInstance().fromJson(strD, List.class);
                if (t2.i(MApplication.K) && list.contains(MApplication.K) && isSign && IntentUtil.getInstance().goLogin(context)) {
                    return;
                }
            }
        } catch (Exception unused) {
        }
        String json = volcanoOther != null ? JsonMapper.getInstance().toJson(volcanoOther) : "";
        boolean zBooleanValue = new PrefDef_(context).download_game_switch().d().booleanValue();
        if (isSign && zBooleanValue) {
            A0(context, 2, gameId, gameType, new q(context, gameId, from, fromType, recPosition, remarks, nodeId, json, isFromRecomDown, packagePath, downType, location, ext, where));
        } else {
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("gameDownloadDetail", gameId)).extra("_from", from)).extra("_from_type", fromType)).extra("recPosition", recPosition)).extra("remarks", remarks)).extra("nodeId", nodeId)).extra("volcanoOther", json)).extra("fromRecomDown", isFromRecomDown)).extra("downType", downType)).extra("location", location)).extra("ext", ext)).extra("where", where)).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h2(final StartGameMeta startGameMeta, final Context finalContext, final String mainPkgName, final String pathDir, final String finalEmuApkType, boolean refresh, int retryCount) {
        com.wf.transfer.core.c.d(finalContext);
        if (!com.wf.transfer.core.c.e(startGameMeta.getPackageName(), finalEmuApkType)) {
            final int i10 = retryCount + 1;
            if (i10 > 10) {
                a3.b(finalContext).d("启动失败，请重试");
                return;
            } else {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.join.mgps.Util.f3
                    @Override // java.lang.Runnable
                    public final void run() {
                        UtilsMy.h2(startGameMeta, finalContext, mainPkgName, pathDir, finalEmuApkType, false, i10);
                    }
                }, 1000L);
                return;
            }
        }
        try {
            com.wf.transfer.core.c.c(startGameMeta.getPackageName(), finalEmuApkType, refresh).initSourceBinder(JsonMapper.getInstance().toJson(startGameMeta), mainPkgName, pathDir);
        } catch (RemoteException e10) {
            if (refresh) {
                e10.printStackTrace();
            } else {
                h2(startGameMeta, finalContext, mainPkgName, pathDir, finalEmuApkType, true, 0);
            }
        } catch (IllegalArgumentException unused) {
            E2(finalContext, startGameMeta);
        }
    }

    public static void h3(Context context) {
        Intent intent = new Intent();
        intent.setAction(p5.a.H);
        context.sendBroadcast(intent);
    }

    public static void h4(Context context) {
        if (p1.b(context) < 26 || Build.VERSION.SDK_INT < 26) {
            try {
                DownloadService_.Y(context).a();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static String i(long fileS) {
        String str;
        DecimalFormat decimalFormat = new DecimalFormat("#.0");
        if (fileS < 1024) {
            str = fileS + SDKManager.ALGO_B_AES_SHA256_RSA;
        } else if (fileS < 1048576) {
            str = (fileS / 1024) + "KB";
        } else if (fileS < 1073741824) {
            str = (fileS / 1048576) + "M";
        } else {
            str = decimalFormat.format(fileS / 1.073741824E9d) + "GB";
        }
        return (str.equals(".0B") || str.equals(".00B")) ? "0B" : str;
    }

    private static EMUApkTable i0(Context context, EMUApkTable emuApkTable) {
        return j0(context, emuApkTable, false);
    }

    public static void i1(Context context, DownloadTask task) {
        boolean z10;
        String str;
        boolean z11;
        if (task != null) {
            String crc_link_type_val = task.getCrc_link_type_val();
            int i10 = task.get_from();
            int i11 = task.get_from_type();
            String str2 = task.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
            if ("7".equals(task.getSp_tag_info().getModel().getId())) {
                str = str2;
                z10 = false;
            } else {
                z10 = true;
                str = "ANDROID_SINGLE";
            }
            if (z10) {
                z11 = z10;
            } else {
                boolean zW2 = t2.h(task.getPlugin_num()) ? false : w2(Integer.parseInt(task.getPlugin_num()));
                if (zW2) {
                    str = f2(task.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
                }
                z11 = zW2;
            }
            f1(context, crc_link_type_val, str, i10, i11, "", "", "", null, z11);
        }
    }

    public static int i2(int intentTo) {
        if (intentTo == 61) {
            return ConstantIntEnum.N3DS.value();
        }
        if (intentTo == 62) {
            return ConstantIntEnum.PS2.value();
        }
        switch (intentTo) {
            case 10:
                return ConstantIntEnum.FBA.value();
            case 11:
                return ConstantIntEnum.FC.value();
            case 12:
                return ConstantIntEnum.GBA.value();
            case 13:
                return ConstantIntEnum.SFC.value();
            case 14:
                return ConstantIntEnum.PSP.value();
            case 15:
                return ConstantIntEnum.FEATURED_ONLINE.value();
            case 16:
                return ConstantIntEnum.MD.value();
            case 17:
                return ConstantIntEnum.PS.value();
            case 18:
                return ConstantIntEnum.LARGE_SINGLE.value();
            case 19:
                return ConstantIntEnum.WSC.value();
            case 20:
                return ConstantIntEnum.NDS.value();
            case 21:
                return ConstantIntEnum.GBC.value();
            case 22:
                return ConstantIntEnum.N64.value();
            case 23:
                return ConstantIntEnum.ONS.value();
            case 24:
                return ConstantIntEnum.DC.value();
            default:
                return intentTo;
        }
    }

    public static void i3(DownloadTask downloadTask, int status) {
        DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
        downloadTaskG.setStatus(status);
        downloadTaskG.setVer(downloadTask.getVer());
        downloadTask.setStatus(status);
        q5.f.M().update(downloadTaskG);
        DownloadTask downloadTaskG2 = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
        if (downloadTaskG2 != null) {
            downloadTaskG2.setStatus(downloadTaskG.getStatus());
            downloadTaskG2.setVer(downloadTaskG.getVer());
        }
        if (status == 5) {
            com.join.android.app.common.servcie.j.f().n(downloadTask.getCrc_link_type_val());
        }
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadTask, status));
    }

    public static boolean i4(final Context context, final String userId, final String gameId, final int startMode, final String filePath, final int index, final int endGameTime, String endGameDesc, String endId, String rules) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        EMUApkTable eMUApkTableV = V(context, downloadTaskG, true);
        if (eMUApkTableV == null) {
            return false;
        }
        try {
            Integer.parseInt(downloadTaskG.getRomType());
        } catch (Exception unused) {
        }
        StartGameMeta startGameMeta = new StartGameMeta();
        Z4(context, downloadTaskG, startGameMeta);
        startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
        startGameMeta.setUserID(AccountUtil_.getInstance_(context).getUid());
        if (!TextUtils.isEmpty(eMUApkTableV.getTag_id())) {
            startGameMeta.setTagId(Integer.parseInt(eMUApkTableV.getTag_id()));
        }
        startGameMeta.setPackageName(eMUApkTableV.getPackage_name());
        startGameMeta.setActivityName(eMUApkTableV.getLaunch_name());
        String gameZipPath = downloadTaskG.getGameZipPath();
        if (gameZipPath == null) {
            return false;
        }
        startGameMeta.setRomPath(M4(gameZipPath));
        startGameMeta.setStartMode(16);
        startGameMeta.setServerIP(null);
        startGameMeta.setGameID(downloadTaskG.getCrc_link_type_val());
        startGameMeta.setType(Integer.parseInt(eMUApkTableV.getTag_id()));
        startGameMeta.setPlugin_area_val(downloadTaskG.getPlugin_area_val());
        startGameMeta.setGametype(P2(downloadTaskG.getTipBeans()));
        startGameMeta.setNetState(filePath);
        startGameMeta.setEndGameId(index);
        startGameMeta.setEndGameTime(endGameTime);
        startGameMeta.setEndId(endId);
        startGameMeta.setSubTitle(endGameDesc);
        startGameMeta.setEndGameLevelRules(rules);
        if (!E(context, startGameMeta, eMUApkTableV)) {
            return false;
        }
        E2(context, startGameMeta);
        return true;
    }

    public static String j(long fileS) {
        String str;
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        if (fileS < 1000) {
            str = decimalFormat.format(fileS) + SDKManager.ALGO_B_AES_SHA256_RSA;
        } else if (fileS < C.MICROS_PER_SECOND) {
            str = decimalFormat.format(fileS / 1000.0d) + "KB";
        } else if (fileS < 1000000000) {
            str = decimalFormat.format(fileS / 1000000.0d) + "M";
        } else {
            str = decimalFormat.format(fileS / 1.0E9d) + "GB";
        }
        return (str.equals(".0B") || str.equals(".00B")) ? "0B" : str;
    }

    private static EMUApkTable j0(Context context, EMUApkTable emuApkTable, boolean alreadyInstalled) {
        return k0(context, emuApkTable, alreadyInstalled, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j1(Context context, DownloadTask downloadTask, List<DownloadUrlBean> downloadUrlBeans, int otherOpen, int cdnOpen, Context activity, DownloadGameArgsBean downArgs) {
        if (V3(downloadTask, context) || p1(context, downloadTask, downArgs)) {
            return;
        }
        if (downloadTask.getDown_status() == 5) {
            n1(context, downloadTask);
        } else {
            X0(context, downloadTask, downloadUrlBeans, otherOpen, cdnOpen, downArgs);
        }
    }

    public static String j2(int intentTo) {
        ConstantIntEnum constantIntEnum = ConstantIntEnum.FBA;
        String strNickName = constantIntEnum.nickName();
        if (intentTo == 61) {
            return ConstantIntEnum.N3DS.nickName();
        }
        if (intentTo == 62) {
            return ConstantIntEnum.PS2.nickName();
        }
        switch (intentTo) {
            case 10:
                return constantIntEnum.nickName();
            case 11:
                return ConstantIntEnum.FC.nickName();
            case 12:
                return ConstantIntEnum.GBA.nickName();
            case 13:
                return ConstantIntEnum.SFC.nickName();
            case 14:
                return ConstantIntEnum.PSP.nickName();
            case 15:
                return ConstantIntEnum.FEATURED_ONLINE.nickName();
            case 16:
                return ConstantIntEnum.MD.nickName();
            case 17:
                return ConstantIntEnum.PS.nickName();
            case 18:
                return ConstantIntEnum.LARGE_SINGLE.nickName();
            case 19:
                return ConstantIntEnum.WSC.nickName();
            case 20:
                return ConstantIntEnum.NDS.nickName();
            case 21:
                return ConstantIntEnum.GBC.nickName();
            case 22:
                return ConstantIntEnum.N64.nickName();
            case 23:
                return ConstantIntEnum.ONS.nickName();
            case 24:
                return ConstantIntEnum.DC.nickName();
            default:
                return strNickName;
        }
    }

    public static void j3(DownloadTask downloadTask, Context context) {
        if (downloadTask == null) {
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        int uid = accountData != null ? accountData.getUid() : 0;
        Ext ext = new Ext();
        ext.setFrom(downloadTask.get_from() + "");
        com.papa.sim.statistic.t.l(context).j(downloadTask.getCrc_link_type_val(), uid + "", null, ext);
        downloadTask.setStatus(5);
        downloadTask.setFileType(Dtype.H5.name());
        downloadTask.setPlugin_num(ConstantIntEnum.H5.value() + "");
        downloadTask.setIsOpen(true);
        DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
        if (downloadTaskG != null) {
            downloadTask.setLastTime(System.currentTimeMillis());
            downloadTask.setOpenTime(System.currentTimeMillis());
            q5.f.M().update(downloadTaskG);
        } else {
            downloadTask.setFinishTime(System.currentTimeMillis());
            downloadTask.setLastTime(System.currentTimeMillis());
            downloadTask.setOpenTime(System.currentTimeMillis());
            q5.f.M().k(downloadTask);
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadTask, 5));
        }
    }

    public static void j4(Context context, DownloadTask downloadTask) {
        g1.h(PapayPayDetialActivity_.INFO_EXTRA, System.currentTimeMillis() + "  startfightActivity");
        IntentUtil.getInstance().goGameMainActivity(context, downloadTask.getCrc_link_type_val(), "");
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00b2  */
    public static void k(final Context ctx, GameStartArgs args) {
        if (args == null) {
            return;
        }
        EMUApkTable emuApkTable = args.getEmuApkTable();
        DownloadTask downloadTask = args.getDownloadTask();
        if (ctx == null) {
            ctx = MApplication.f3182z;
        }
        int startModel = args.getStartModel();
        String core = args.getCore();
        if (emuApkTable == null) {
            emuApkTable = t6.p.o().n(downloadTask.getPlugin_num());
        }
        if (!com.join.android.app.common.utils.o.u(ctx, emuApkTable, new String[0])) {
            q1(emuApkTable, ctx);
            return;
        }
        if (!v2(emuApkTable)) {
            q1(emuApkTable, ctx);
            return;
        }
        if (args.getEmuApkTable() == null) {
            args.setEmuApkTable(emuApkTable);
        }
        if (args.getSkipAbiCheck() || l2(ctx, args)) {
            if (emuApkTable.getTag_id().equals(ConstantIntEnum.NDS.value() + "")) {
                com.papa.sim.statistic.t.l(ctx).j(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(ctx).getUid(), null, null);
            } else {
                if (emuApkTable.getTag_id().equals(ConstantIntEnum.PS2.value() + "")) {
                    com.papa.sim.statistic.t.l(ctx).j(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(ctx).getUid(), null, null);
                } else {
                    if (emuApkTable.getTag_id().equals(ConstantIntEnum.N3DS.value() + "")) {
                        com.papa.sim.statistic.t.l(ctx).j(downloadTask.getCrc_link_type_val(), AccountUtil_.getInstance_(ctx).getUid(), null, null);
                    }
                }
            }
            final StartGameMeta startGameMeta = new StartGameMeta();
            Z4(ctx, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(ctx).getToken());
            startGameMeta.setUserID(AccountUtil_.getInstance_(ctx).getUid());
            if (!TextUtils.isEmpty(emuApkTable.getTag_id())) {
                startGameMeta.setTagId(Integer.parseInt(emuApkTable.getTag_id()));
            }
            startGameMeta.setPackageName(emuApkTable.getPackage_name());
            startGameMeta.setActivityName(emuApkTable.getLaunch_name());
            String gameZipPath = downloadTask.getGameZipPath();
            String strM4 = M4(gameZipPath);
            if (ConstantIntEnum.N3DS.value() == startGameMeta.getTagId()) {
                startGameMeta.setRomPath(gameZipPath);
            } else {
                startGameMeta.setRomPath(strM4);
            }
            startGameMeta.setStartMode(startModel);
            startGameMeta.setServerIP(null);
            startGameMeta.setGameID(downloadTask.getCrc_link_type_val());
            startGameMeta.setType(Integer.parseInt(emuApkTable.getTag_id()));
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            startGameMeta.setGametype(P2(downloadTask.getTipBeans()));
            startGameMeta.setVerCode(String.valueOf(emuApkTable.getVerCode()));
            startGameMeta.setBside(new PrefDef_(ctx).pageVersion().d().intValue() == 2);
            startGameMeta.setCore(core);
            if (E(ctx, startGameMeta, emuApkTable)) {
                ConstantIntEnum constantIntEnum = ConstantIntEnum.PS2;
                if (constantIntEnum.value() == startGameMeta.getTagId()) {
                    DownloadTask downloadTaskG = q5.f.M().G(startGameMeta.getTagId() + "");
                    if (downloadTaskG != null && TextUtils.isEmpty(downloadTaskG.getResource_path())) {
                        String str = com.join.mgps.Util.z.f50167f + constantIntEnum.value();
                        String strH1 = str.contains("Android/data") ? H1(ctx, str) : "";
                        if (TextUtils.isEmpty(strH1) && ContextCompat.checkSelfPermission(ctx, com.kuaishou.weapon.p0.g.f74785i) == 0) {
                            strH1 = H1(ctx, Environment.getExternalStorageDirectory() + "/wufan91/" + constantIntEnum.value());
                        }
                        downloadTaskG.setResource_path(strH1);
                    }
                    startGameMeta.setBios(downloadTaskG != null ? downloadTaskG.getResource_path() : "");
                    startGameMeta.setFromCls("com.join.mgps.activity.GameMainActivity3_");
                    startGameMeta.setRomPath(gameZipPath);
                }
                if (startGameMeta.getTagId() == ConstantIntEnum.PS.value()) {
                    startGameMeta.setPackageName("com.papa91.ps");
                }
                try {
                    if (ctx.getPackageManager().getProviderInfo(new ComponentName(startGameMeta.getPackageName(), "com.wf.transfer.core.FileStubProvider"), 128) == null) {
                        E2(ctx, startGameMeta);
                        return;
                    }
                    ctx.startActivity(new Intent(ctx, (Class<?>) EmuLaunchLoadingActivity.class));
                    final String packageName = ctx.getPackageName();
                    final String parent = new File(startGameMeta.getRomPath()).getParent();
                    Y2(ctx, startGameMeta);
                    String romPath = startGameMeta.getRomPath();
                    if (romPath != null && romPath.startsWith("/storage/emulated/0/Android/data")) {
                        startGameMeta.setRomPath(romPath.replace(ctx.getPackageName(), startGameMeta.getPackageName()));
                    }
                    com.join.android.app.common.utils.g.t0(ctx).T(ctx, startGameMeta, false, "com.wf.transfer.ui.MainActivity");
                    Q4(ctx, startGameMeta.getGameID());
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.join.mgps.Util.e3
                        @Override // java.lang.Runnable
                        public final void run() {
                            UtilsMy.h2(startGameMeta, ctx, packageName, parent, "emu64", false, 0);
                        }
                    }, 500L);
                } catch (Exception unused) {
                    E2(ctx, startGameMeta);
                }
            }
        }
    }

    private static EMUApkTable k0(Context context, EMUApkTable emuApkTable, boolean alreadyInstalled, boolean isAutoInstallPlug) {
        DownloadTask downloadTaskC0;
        APKUtils aPKUtils = new APKUtils();
        if (emuApkTable == null) {
            return null;
        }
        if (emuApkTable.getDown_type() != 2) {
            if (!aPKUtils.e(context, emuApkTable.getPackage_name())) {
                q1(emuApkTable, context);
                return null;
            }
            if (D0(context, emuApkTable)) {
                q1(emuApkTable, context);
                return null;
            }
            com.papa.sim.statistic.t.f77353h = emuApkTable.getVer() + "_" + emuApkTable.getTag_id();
            return emuApkTable;
        }
        if (!com.join.android.app.common.utils.o.B(emuApkTable, false, alreadyInstalled)) {
            com.papa.sim.statistic.t.f77353h = emuApkTable.getVer() + "_" + emuApkTable.getTag_id();
            return emuApkTable;
        }
        if (isAutoInstallPlug && (downloadTaskC0 = q5.f.M().c0(Integer.parseInt(emuApkTable.getTag_id()))) != null && downloadTaskC0.getStatus() == 11 && downloadTaskC0.getDown_type() == 2) {
            com.join.android.app.common.servcie.j.f().w(context, downloadTaskC0);
        } else {
            q1(emuApkTable, context);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean k1(Context context, DownloadTask downloadTask, DownloadGameArgsBean downArgs) {
        if (downloadTask == null || downloadTask.isUncheckSelfSupport() || downloadTask.getSp_tag_info() == null || !((q5.f.M().G(downloadTask.getCrc_link_type_val()) == null || TextUtils.isEmpty(downloadTask.getFileType()) || !downloadTask.getFileType().equals(Dtype.apk.name())) && downloadTask.getSp_tag_info().getSelf_support() == null)) {
            return false;
        }
        ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("downGameIdNotSelfSupport", downloadTask.getCrc_link_type_val())).extra("downloadTask", downloadTask)).extra("_downloadArgs", downArgs)).a();
        return true;
    }

    public static boolean k2(Context context, DownloadTask downloadTask, String from, GameStartType methodType, int skipPreDownloadTip) {
        if (downloadTask == null) {
            return true;
        }
        int cpu_type = downloadTask.getCpu_type();
        boolean zContains = new PrefDef_(context).launchGameUnsupportedTipIds().e("").contains(downloadTask.getCrc_link_type_val());
        APKUtils.b bVar = APKUtils.f34739a;
        if (bVar.z(cpu_type) || zContains || Overmind.isPluginPkgInstalled()) {
            return true;
        }
        Intent intent = new Intent(p5.a.f96216q0);
        intent.putExtra("needBit", bVar.o());
        GameStartArgs gameStartArgs = new GameStartArgs(methodType);
        gameStartArgs.setDownloadTask(downloadTask);
        gameStartArgs.setFrom(from);
        gameStartArgs.setSkipPreDownloadTip(skipPreDownloadTip);
        intent.putExtra(QuarkPromptActivity_.ARGS_EXTRA, JsonMapper.getInstance().toJson(gameStartArgs));
        intent.putExtra("gameId", downloadTask.getCrc_link_type_val());
        context.sendBroadcast(intent);
        return false;
    }

    public static void k3(PrefDef_ prefDef, Context context) {
        l3(prefDef, context, false);
    }

    public static void k4(final Context context, final DownloadTask downloadTask) {
        p4(context, downloadTask, "");
    }

    public static void l(EMUApkTable emuApkTable, DownloadTask downloadTask, Context context, int startModle) {
        m(emuApkTable, downloadTask, context, startModle, "");
    }

    public static EMUApkTable l0(Context context, String tagid) {
        EMUApkTable eMUApkTableN = t6.p.o().n(tagid);
        new APKUtils();
        if (eMUApkTableN == null) {
            return null;
        }
        if (!com.join.android.app.common.utils.o.t(context, eMUApkTableN, false, new String[0])) {
            com.papa.sim.statistic.t.f77353h = eMUApkTableN.getVer() + "_" + eMUApkTableN.getTag_id();
            return eMUApkTableN;
        }
        if (D0(context, eMUApkTableN)) {
            return eMUApkTableN;
        }
        com.papa.sim.statistic.t.f77353h = eMUApkTableN.getVer() + "_" + eMUApkTableN.getTag_id();
        return null;
    }

    public static void l1(Context context, DownloadTask downloadTask) {
        V0(context, downloadTask, downloadTask.getTp_down_url(), downloadTask.getOther_down_switch(), downloadTask.getCdn_down_switch(), null);
    }

    static boolean l2(Context context, GameStartArgs args) {
        EMUApkTable emuApkTable = args.getEmuApkTable();
        if (emuApkTable.getDown_type() != 2) {
            return true;
        }
        if (TextUtils.isEmpty(emuApkTable.getApkPath())) {
            Intent intent = new Intent(p5.a.f96216q0);
            intent.putExtra("needBit", APKUtils.f34739a.o());
            intent.putExtra(QuarkPromptActivity_.ARGS_EXTRA, JsonMapper.getInstance().toJson(args));
            context.sendBroadcast(intent);
            return false;
        }
        String str = emuApkTable.getApkPath() + "/so/";
        if (Overmind.is64Bit()) {
            str = emuApkTable.getApkPath() + "/arm64-v8a/";
        }
        File file = new File(str);
        if (!file.exists()) {
            Intent intent2 = new Intent(p5.a.f96216q0);
            intent2.putExtra("needBit", APKUtils.f34739a.o());
            intent2.putExtra(QuarkPromptActivity_.ARGS_EXTRA, JsonMapper.getInstance().toJson(args));
            context.sendBroadcast(intent2);
            return false;
        }
        File[] fileArrListFiles = file.listFiles(new g());
        if (fileArrListFiles != null && fileArrListFiles.length != 0) {
            return true;
        }
        Intent intent3 = new Intent(p5.a.f96216q0);
        intent3.putExtra("needBit", APKUtils.f34739a.o());
        intent3.putExtra(QuarkPromptActivity_.ARGS_EXTRA, JsonMapper.getInstance().toJson(args));
        context.sendBroadcast(intent3);
        return false;
    }

    public static void l3(PrefDef_ prefDef, Context context, boolean isPs2Or3ds) {
        if (Build.VERSION.SDK_INT > 29 || isPs2Or3ds) {
            prefDef.sdcardisFirst().g(Boolean.TRUE);
            List<Filepath> listA = f2.a(context);
            String str = com.join.mgps.Util.z.f50167f;
            String pathHome = "";
            if (t2.i(com.join.mgps.pref.h.n(context).h())) {
                String pathHome2 = "";
                for (Filepath filepath : listA) {
                    if (filepath.isIslocal()) {
                        pathHome2 = filepath.getPathHome();
                    } else {
                        pathHome = filepath.getPathHome();
                    }
                }
                if (t2.i(pathHome)) {
                    com.join.mgps.pref.h.n(context).W(pathHome);
                } else if (t2.i(pathHome2)) {
                    com.join.mgps.pref.h.n(context).W(pathHome2);
                } else {
                    com.join.mgps.pref.h.n(context).W(str);
                }
            } else {
                String pathHome3 = "";
                long available = 0;
                for (Filepath filepath2 : listA) {
                    if (filepath2.isIslocal()) {
                        pathHome3 = filepath2.getPathHome();
                    } else {
                        pathHome = filepath2.getPathHome();
                        available = filepath2.getAvailable();
                    }
                }
                if (t2.i(pathHome) && available != 0) {
                    com.join.mgps.pref.h.n(context).W(pathHome);
                } else if (t2.i(pathHome3)) {
                    com.join.mgps.pref.h.n(context).W(pathHome3);
                } else {
                    com.join.mgps.pref.h.n(context).W(str);
                }
            }
            for (Filepath filepath3 : listA) {
                File file = new File(filepath3.getPathHome());
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(filepath3.getPathHome() + File.separator + ".nomedia");
                if (!file2.exists()) {
                    try {
                        file2.createNewFile();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
    }

    public static void l4(final Context context, final DownloadTask downloadTask, int skipPreDownloadTip) {
        m4(context, downloadTask, skipPreDownloadTip, "");
    }

    public static void m(EMUApkTable emuApkTable, DownloadTask downloadTask, Context context, int startModle, String core) {
        GameStartArgs gameStartArgs = new GameStartArgs(GameStartType.onlyStartGame);
        gameStartArgs.setEmuApkTable(emuApkTable);
        gameStartArgs.setDownloadTask(downloadTask);
        gameStartArgs.setStartModel(startModle);
        gameStartArgs.setCore(core);
        k(context, gameStartArgs);
    }

    private static EMUApkTable m0(Context context, EMUApkTable emuApkTable, boolean alreadyInstalled) {
        APKUtils aPKUtils = new APKUtils();
        if (emuApkTable == null) {
            return null;
        }
        if (emuApkTable.getDown_type() == 2) {
            if (com.join.android.app.common.utils.o.B(emuApkTable, false, alreadyInstalled)) {
                q1(emuApkTable, context);
                return null;
            }
            com.papa.sim.statistic.t.f77353h = emuApkTable.getVer() + "_" + emuApkTable.getTag_id();
            return emuApkTable;
        }
        if (!aPKUtils.e(context, emuApkTable.getPackage_name())) {
            q1(emuApkTable, context);
            return null;
        }
        if (D0(context, emuApkTable)) {
            q1(emuApkTable, context);
            return null;
        }
        com.papa.sim.statistic.t.f77353h = emuApkTable.getVer() + "_" + emuApkTable.getTag_id();
        return emuApkTable;
    }

    public static void m1(Context context, DownloadTask downloadTask, DownloadGameArgsBean downArgs) {
        V0(context, downloadTask, downloadTask.getTp_down_url(), downloadTask.getOther_down_switch(), downloadTask.getCdn_down_switch(), downArgs);
    }

    public static boolean m2(Context context) {
        String[] strArrSplit;
        String strL1 = L1();
        if (TextUtils.isEmpty(strL1) || strL1.equalsIgnoreCase("qcom")) {
            return false;
        }
        if ((!strL1.toLowerCase().contains("qcom") && !strL1.toLowerCase().contains("qualcomm")) || (strArrSplit = strL1.split("\\s+")) == null || strArrSplit.length <= 0) {
            return false;
        }
        for (String str : strArrSplit) {
            if (str.contains("SDM845") || str.startsWith("SM8")) {
                return false;
            }
            if (str.startsWith("SM7") || str.startsWith("SM6")) {
                if (str.length() <= 3) {
                    return false;
                }
                if (Character.isDigit(str.charAt(3)) && str.charAt(3) - '0' >= 3) {
                    return false;
                }
            }
        }
        return true;
    }

    public static void m3(TextView mgListviewItemInstall, int down_status, int payTagInfo, String gameId) {
        mgListviewItemInstall.setTextColor(-12802819);
        boolean z10 = w0(payTagInfo, gameId) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setTextSize(0, mgListviewItemInstall.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            mgListviewItemInstall.setTextColor(-7763575);
            mgListviewItemInstall.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (down_status == 6 && !z10) {
            mgListviewItemInstall.setText("预约");
            mgListviewItemInstall.setTextSize(2, 13.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (payTagInfo > 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, payTagInfo + ""));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        }
        mgListviewItemInstall.setTextSize(2, 13.0f);
        mgListviewItemInstall.setTextColor(-12802819);
        mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    public static void m4(final Context context, final DownloadTask downloadTask, int skipPreDownloadTip, String from) {
        n4(context, downloadTask, skipPreDownloadTip, from, null);
    }

    public static void n(Context context, GameStartArgs args) {
        DownloadTask downloadTask = args.getDownloadTask();
        int room = args.getRoom();
        String ip = args.getIp();
        int port = args.getPort();
        String fastIP = args.getFastIP();
        int maxBattleCount = args.getMaxBattleCount();
        String core = args.getCore();
        EMUApkTable eMUApkTableN = t6.p.o().n(downloadTask.getPlugin_num());
        if (args.getEmuApkTable() == null) {
            args.setEmuApkTable(eMUApkTableN);
        }
        if (args.getSkipAbiCheck() || l2(context, args)) {
            StartGameMeta startGameMeta = new StartGameMeta();
            Z4(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setPackageName(eMUApkTableN.getPackage_name());
            startGameMeta.setActivityName(eMUApkTableN.getLaunch_name());
            startGameMeta.setRomPath(M4(downloadTask.getGameZipPath()));
            startGameMeta.setStartMode(9);
            startGameMeta.setServerIP(ip);
            startGameMeta.setServerPort(port + "");
            startGameMeta.setFastIP(fastIP);
            startGameMeta.setGameID(downloadTask.getCrc_link_type_val());
            startGameMeta.setType(Integer.parseInt(eMUApkTableN.getTag_id()));
            startGameMeta.setRoomSilent(room);
            startGameMeta.setNetPlayers(0);
            startGameMeta.setGamePlayers(maxBattleCount);
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            startGameMeta.setGametype(P2(downloadTask.getTipBeans()));
            startGameMeta.setCore(core);
            if (E(context, startGameMeta, eMUApkTableN)) {
                E2(context, startGameMeta);
            }
        }
    }

    public static boolean n0(Context context) {
        try {
            String strG = com.join.mgps.pref.h.n(context).g();
            if (!t2.i(strG)) {
                return false;
            }
            File file = new File(strG);
            if (!file.exists()) {
                return file.mkdirs();
            }
            File file2 = new File(strG, "test_canwhite.txt");
            return file2.exists() ? file2.delete() : file2.createNewFile();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void n1(Context context, DownloadTask downloadTask) {
        ((ChociceDownActivity_.j) ChociceDownActivity_.intent(context).a(downloadTask).flags(C.ENCODING_PCM_MU_LAW)).start();
    }

    public static boolean n2(AppBean bean) {
        if (bean != null && bean.getTag_info() != null) {
            Iterator<TipBean> it2 = bean.getTag_info().iterator();
            while (it2.hasNext()) {
                if (TextUtils.equals("242", it2.next().getId())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void n3(TextView mgListviewItemInstall, View rLayoutRight, DownloadTask collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        int pay_game_amount = collectionBeanSub.getPay_game_amount();
        String crc_link_type_val = collectionBeanSub.getCrc_link_type_val();
        collectionBeanSub.getDownload_source_switch_v2();
        rLayoutRight.setEnabled(true);
        mgListviewItemInstall.setTextColor(-12802819);
        boolean z10 = w0(pay_game_amount, crc_link_type_val) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setTextSize(0, mgListviewItemInstall.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            mgListviewItemInstall.setTextColor(-7763575);
            rLayoutRight.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (down_status == 6 && !z10) {
            mgListviewItemInstall.setText("预约");
            mgListviewItemInstall.setTextSize(2, 13.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (pay_game_amount > 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_game_amount + ""));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        }
        mgListviewItemInstall.setTextSize(2, 13.0f);
        mgListviewItemInstall.setTextColor(-12802819);
        mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    /* JADX WARN: Code duplicated, block: B:179:0x03d4  */
    public static void n4(final Context context, final DownloadTask downloadTask, int skipPreDownloadTip, String from, ExtBean extBean) {
        boolean zS;
        if (downloadTask == null) {
            return;
        }
        if (extBean == null) {
            com.papa.sim.statistic.t.l(context).R1(Event.clickGameStartBtn, new Ext().setGameId(downloadTask.getCrc_link_type_val().replace("cld_", "")).setFrom(downloadTask.get_from() + ""));
        } else if (!(downloadTask.isCloudTask() && w0.p(downloadTask.getTipBeans())) && (!downloadTask.isCloudGame() || downloadTask.isMod())) {
            com.papa.sim.statistic.t.l(context).R1(Event.clickGameStartBtn, extBean.buildScene().toExt());
        } else {
            com.papa.sim.statistic.t.l(context).R1(Event.gameStart, extBean.buildScene().toExt());
        }
        DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
        if (downloadTaskG != null) {
            downloadTask.setLock_sp(downloadTaskG.getLock_sp());
        }
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        int i10 = 1;
        int i11 = 2;
        if (!downloadTask.getFileType().equals(Dtype.apk.name())) {
            if (t2.i(downloadTask.getMod_info())) {
                if (d2.g(downloadTask.getPackageName()) && d2.f49545c.equals(downloadTask.getCrc_link_type_val())) {
                    d2.l(downloadTask.getPackageName(), Overmind.getHostUserId());
                    return;
                }
                if (downloadTask.isCloudGame() && w0.j()) {
                    K2(context, downloadTask, extBean);
                    return;
                }
                if (!com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && !com.join.android.app.common.utils.g.t0(context).e(context, downloadTask.getPackageName())) {
                    w4(downloadTask, context);
                    return;
                }
                if (t2.i(downloadTask.getMod_info())) {
                    ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class);
                    if (modInfoBean != null) {
                        APKUtils.b0(context, modInfoBean, from, extBean);
                    }
                    if (t2.h(downloadTask.getMod_info())) {
                        if (APKUtils.K(downloadTask)) {
                            i11 = 1;
                        } else if (!APKUtils.P(downloadTask)) {
                            i11 = 0;
                        }
                        com.papa.sim.statistic.t.l(context).j1(crc_link_type_val, AccountUtil_.getInstance_(context).getUid(), i11, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt(), extBean != null ? extBean.toExt() : null);
                        return;
                    }
                    return;
                }
                return;
            }
            if (d2.g(downloadTask.getPackageName()) && d2.f49545c.equals(downloadTask.getCrc_link_type_val())) {
                d2.l(downloadTask.getPackageName(), Overmind.getHostUserId());
                return;
            }
            if (downloadTask.isCloudGame() && downloadTask.isCloudTask() && w0.j()) {
                K2(context, downloadTask, extBean);
                return;
            }
            if (APKUtils.P(downloadTask)) {
                if (com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName())) {
                    K4(context, downloadTask);
                    return;
                } else if (com.join.android.app.common.utils.g.t0(context).e(context, downloadTask.getPackageName())) {
                    f4(context, downloadTask, from, extBean);
                    return;
                } else {
                    w4(downloadTask, context);
                    return;
                }
            }
            if (com.join.android.app.common.utils.g.t0(context).e(context, downloadTask.getPackageName())) {
                f4(context, downloadTask, from, extBean);
                return;
            } else if (com.join.android.app.common.utils.g.t0(context).f(context, downloadTask.getPackageName(), APKUtils.DEVICE_TYPE.VM)) {
                K4(context, downloadTask);
                return;
            } else {
                w4(downloadTask, context);
                return;
            }
        }
        if (downloadTask.getGameZipPath() != null && !new File(downloadTask.getGameZipPath()).exists()) {
            com.php25.PDownload.d.a(downloadTask);
            if (o1(context, downloadTask)) {
                return;
            }
            if (downloadTask.getDown_status() == 5) {
                l1(context, downloadTask);
                return;
            } else {
                com.php25.PDownload.d.c(downloadTask, context);
                return;
            }
        }
        String gameZipPath = downloadTask.getGameZipPath();
        try {
            if (Integer.parseInt(downloadTask.getRomType()) == -1) {
                return;
            }
            int i12 = (t2.i(downloadTask.getResource_url_remote()) && downloadTask.isCheckRes() && t2.h(downloadTask.getResource_path())) ? 2 : 1;
            DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(downloadTask.getPlugin_num()));
            if (downloadTaskC0 == null) {
                zS = false;
            } else {
                if (TextUtils.equals(downloadTaskC0.getCrc_link_type_val(), String.valueOf(ConstantIntEnum.PS2.value())) && !TextUtils.isEmpty(downloadTaskC0.getGameZipPath()) && ((!com.join.android.app.common.utils.o.s(context, downloadTaskC0, new String[0]) || E0(context, t6.p.o().n(downloadTaskC0.getPlugin_num()))) && new File(downloadTaskC0.getGameZipPath()).exists())) {
                    if (downloadTaskC0.getGameZipPath().endsWith(".apk")) {
                        if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74785i) != 0) {
                            e3(context, com.kuaishou.weapon.p0.g.f74785i);
                            return;
                        }
                        Intent intent = new Intent();
                        intent.setAction(p5.a.f96209n);
                        intent.putExtra("apkpath", downloadTaskC0.getGameZipPath());
                        context.sendBroadcast(intent);
                        return;
                    }
                    if (downloadTaskC0.getGameZipPath().endsWith(".zip") && (!com.join.android.app.common.utils.o.s(context, downloadTaskC0, new String[0]) || E0(context, t6.p.o().n(downloadTaskC0.getPlugin_num())))) {
                        if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74786j) == 0) {
                            com.join.android.app.common.servcie.j.f().z(context, downloadTaskC0, true);
                            return;
                        }
                        Intent intent2 = new Intent(p5.a.f96210n0);
                        intent2.putExtra("gameId", downloadTaskC0.getCrc_link_type_val());
                        context.sendBroadcast(intent2);
                        return;
                    }
                }
                EMUApkTable eMUApkTableN = t6.p.o().n(downloadTaskC0.getPlugin_num());
                if (eMUApkTableN == null || eMUApkTableN.getDown_type() != 2 || downloadTaskC0.getDown_type() != 2) {
                    zS = false;
                } else {
                    if (downloadTaskC0.getStatus() == 11 && skipPreDownloadTip != 1 && eMUApkTableN.getVerCode() == downloadTaskC0.getVerCode()) {
                        PlugInstallDialog_.a aVarA = PlugInstallDialog_.intent(context).c(eMUApkTableN).a(downloadTask);
                        if (downloadTaskC0.getDown_type() == 2 && com.join.android.app.common.utils.o.z(eMUApkTableN)) {
                            i10 = 2;
                        }
                        aVarA.b(i10).start();
                        return;
                    }
                    zS = com.join.android.app.common.utils.o.s(context, downloadTaskC0, new String[0]);
                    if (!zS || i12 == 2) {
                        if (!zS) {
                            downloadTaskC0.setStatus(0);
                            String gameZipPath2 = downloadTaskC0.getGameZipPath();
                            if (!TextUtils.isEmpty(gameZipPath2)) {
                                File file = new File(gameZipPath2);
                                if (file.exists()) {
                                    file.delete();
                                }
                            }
                            downloadTaskC0.setPath("");
                            downloadTaskC0.setGameZipPath("");
                            q5.f.M().m(downloadTaskC0);
                            q1(eMUApkTableN, context);
                            zS = com.join.android.app.common.utils.o.s(context, downloadTaskC0, new String[0]);
                        }
                        if (!zS || i12 == 2) {
                            if (!zS && i12 == 2) {
                                i12 = 3;
                            }
                            PlugDownDialogAcitivity_.intent(context).plugNumber(downloadTask.getPlugin_num()).gameid(downloadTask.getCrc_link_type_val()).downloadType(i12).start();
                            return;
                        }
                        return;
                    }
                }
            }
            EMUApkTable eMUApkTableW = W(context, downloadTask, zS, false);
            f49393b = eMUApkTableW;
            if (eMUApkTableW == null) {
                EMUApkTable eMUApkTableN2 = t6.p.o().n(downloadTask.getPlugin_num());
                if (eMUApkTableN2 != null) {
                    if (eMUApkTableN2.getDown_type() == 2 || i12 == 2) {
                        boolean zU = com.join.android.app.common.utils.o.u(context, eMUApkTableN2, new String[0]);
                        if (!zU || i12 == 2) {
                            if (!zU && i12 == 2) {
                                i12 = 3;
                            }
                            PlugDownDialogAcitivity_.intent(context).plugNumber(downloadTask.getPlugin_num()).gameid(downloadTask.getCrc_link_type_val()).downloadType(i12).start();
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (skipPreDownloadTip != 1 && E0(context, eMUApkTableW) && com.join.android.app.common.utils.o.C(f49393b)) {
                PlugInstallDialog_.intent(context).c(f49393b).a(downloadTask).b(1).start();
                return;
            }
            if (gameZipPath == null) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("emuApkTable=");
            sb2.append(f49393b.getTag_id());
            PrefDef_ prefDef_ = new PrefDef_(context);
            int iIntValue = prefDef_.runRomFirst().d().intValue();
            String strD = prefDef_.insatllAppFirstData().d();
            if (strD != null && f49393b.getDown_type() == 0) {
                BootPageData bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(strD, BootPageData.class);
                if (iIntValue > 0 && bootPageData != null && bootPageData.getPerformance_boot() != null) {
                    PapaPlugGuideActivity_.intent(context).a(0).start();
                    prefDef_.runRomFirst().g(Integer.valueOf(iIntValue - 1));
                    return;
                }
            }
            if (b2(context, crc_link_type_val, downloadTask, f49393b, false)) {
                return;
            }
            if (!f49393b.isCanUpdate()) {
                IntentUtil.getInstance().goGameMainActivity(context, crc_link_type_val, from);
                return;
            }
            try {
                if (f49393b.getNotUpdateversion() == Integer.parseInt(f49393b.getVer().split("_")[0])) {
                    IntentUtil.getInstance().goGameMainActivity(context, crc_link_type_val, from);
                } else {
                    com.join.mgps.Util.h0.h0(context).a0(context, crc_link_type_val, f49393b, from);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                IntentUtil.getInstance().goGameMainActivity(context, crc_link_type_val, from);
            }
        } catch (Exception unused) {
        }
    }

    public static void o(DownloadTask downloadTask, Context context, int roomSilent, String ip, int port, String fastIp, int max_battle_count) {
        p(downloadTask, context, roomSilent, ip, port, fastIp, max_battle_count, "");
    }

    public static void o0(final Context context, final DownloadTask downloadTask) {
        EMUApkTable eMUApkTableU;
        if (downloadTask.getFileType() == null || !downloadTask.getFileType().equals(Dtype.android.name())) {
            if (downloadTask.getGameZipPath() != null && !new File(downloadTask.getGameZipPath()).exists()) {
                com.php25.PDownload.d.a(downloadTask);
                com.php25.PDownload.d.c(downloadTask, context);
                return;
            }
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            String gameZipPath = downloadTask.getGameZipPath();
            try {
                if (Integer.parseInt(downloadTask.getRomType()) == -1 || (eMUApkTableU = U(context, downloadTask)) == null || gameZipPath == null || b2(context, crc_link_type_val, downloadTask, eMUApkTableU, false)) {
                    return;
                }
                g1.h(PapayPayDetialActivity_.INFO_EXTRA, System.currentTimeMillis() + "  checkfinish");
                j4(context, downloadTask);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean o1(Context context, DownloadTask downloadTask) {
        return false;
    }

    public static boolean o2(CollectionBeanSub bean) {
        if (bean != null && bean.getTag_info() != null) {
            Iterator<TipBean> it2 = bean.getTag_info().iterator();
            while (it2.hasNext()) {
                if (TextUtils.equals("242", it2.next().getId())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void o3(TextView mgListviewItemInstall, View rLayoutRight, AppBean collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String game_id = collectionBeanSub.getGame_id();
        collectionBeanSub.getDownload_source_switch_v2();
        rLayoutRight.setEnabled(true);
        mgListviewItemInstall.setTextColor(-12802819);
        boolean z10 = x0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setTextSize(0, mgListviewItemInstall.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            mgListviewItemInstall.setTextColor(-7763575);
            rLayoutRight.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (down_status == 6 && !z10) {
            mgListviewItemInstall.setText("预约");
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
        }
        mgListviewItemInstall.setTextSize(2, 13.0f);
        mgListviewItemInstall.setTextColor(-12802819);
        mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    public static void o4(final Context context, final DownloadTask downloadTask, ExtBean extBean) {
        q4(context, downloadTask, "", extBean);
    }

    public static void p(DownloadTask downloadTask, Context context, int roomSilent, String ip, int port, String fastIp, int max_battle_count, String core) {
        GameStartArgs gameStartArgs = new GameStartArgs(GameStartType.onlyStartGameSilent);
        gameStartArgs.setDownloadTask(downloadTask);
        gameStartArgs.setRoom(roomSilent);
        gameStartArgs.setIp(ip);
        gameStartArgs.setPort(port);
        gameStartArgs.setFastIP(fastIp);
        gameStartArgs.setMaxBattleCount(max_battle_count);
        gameStartArgs.setCore(core);
        n(context, gameStartArgs);
    }

    public static boolean p0(List<TipBean> tipBeans) {
        if (tipBeans != null) {
            Iterator<TipBean> it2 = tipBeans.iterator();
            while (it2.hasNext()) {
                if (it2.next().getId().equals("46")) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean p1(Context context, DownloadTask downloadTask, DownloadGameArgsBean downArgs) {
        if (Build.VERSION.SDK_INT > 28 && !n0(context)) {
            if (downloadTask != null) {
                downloadTask.setFromRecomDown(true);
            }
            ((WufunGameDownFirstNotPermissDialog_.IntentBuilder_) WufunGameDownFirstNotPermissDialog_.intent(context).flags(C.ENCODING_PCM_MU_LAW)).start();
        }
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getDownload_source_switch_v2()) || !"1".equals(downloadTask.getDownload_source_switch_v2()) || (TextUtils.isEmpty(downloadTask.getDownload_source_url()) && TextUtils.isEmpty(downloadTask.getDownload_outside_url()))) {
            return (downloadTask == null || downloadTask.getDown_status() == 5 || !k1(context, downloadTask, downArgs)) ? false : true;
        }
        ((HavenDownActivity_.i) HavenDownActivity_.intent(context).a(downloadTask).flags(C.ENCODING_PCM_MU_LAW)).start();
        return true;
    }

    public static boolean p2(CommonGameInfoBean bean) {
        if (bean != null && bean.getG_info() != null && bean.getG_info().getTag_info() != null) {
            Iterator<TipBean> it2 = bean.getG_info().getTag_info().iterator();
            while (it2.hasNext()) {
                if (TextUtils.equals("242", it2.next().getId())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void p3(TextView mgListviewItemInstall, View rLayoutRight, CollectionBeanSub collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String game_id = collectionBeanSub.getGame_id();
        collectionBeanSub.getDownload_source_switch_v2();
        rLayoutRight.setEnabled(true);
        mgListviewItemInstall.setTextColor(-12802819);
        boolean z10 = x0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setTextSize(0, mgListviewItemInstall.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            mgListviewItemInstall.setTextColor(-7763575);
            rLayoutRight.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (down_status == 6 && collectionBeanSub.getGame_book() == 0 && !z10) {
            mgListviewItemInstall.setText("预约");
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (down_status == 6 && collectionBeanSub.getGame_book() == 1 && !z10) {
            mgListviewItemInstall.setText("已预约");
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
        }
        mgListviewItemInstall.setTextSize(2, 13.0f);
        mgListviewItemInstall.setTextColor(-12802819);
        mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    public static void p4(final Context context, final DownloadTask downloadTask, final String from) {
        q4(context, downloadTask, from, null);
    }

    public static boolean q0(List<GameTagInfoV2_2Bean> tipBeans) {
        if (tipBeans != null) {
            Iterator<GameTagInfoV2_2Bean> it2 = tipBeans.iterator();
            while (it2.hasNext()) {
                if (it2.next().getId().equals("46")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void q1(final EMUApkTable emuApkTable, final Context context) {
        r1(emuApkTable, context, Boolean.TRUE);
    }

    public static boolean q2(Context context, String gameId) {
        int net_status;
        int switch_state;
        DownloadSpeedupCfgBean downloadSpeedupCfgBean;
        if (context == null) {
            try {
                context = MApplication.n();
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }
        PrefDef_ prefDef_ = new PrefDef_(context);
        int iIntValue = prefDef_.downloadSpeedUpCountAD().d().intValue();
        int iIntValue2 = prefDef_.downloadSpeedUpCountCurrentAD().d().intValue();
        long jLongValue = prefDef_.downloadSpeedUpLastTime().d().longValue();
        TextUtils.isEmpty(prefDef_.downloadSpeedUpGames().d());
        if (!com.join.mgps.Util.e0.z(jLongValue)) {
            prefDef_.downloadSpeedUpCountCurrent().g(0);
            prefDef_.downloadSpeedUpCountCurrentAD().g(0);
            prefDef_.downloadSpeedUpGames().g("");
            iIntValue2 = 0;
        }
        if (iIntValue2 >= iIntValue) {
            return true;
        }
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        String strD = prefDef_.downloadSpeedupCfg().d();
        if (!t2.i(strD) || (downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(strD, DownloadSpeedupCfgBean.class)) == null) {
            net_status = 0;
            switch_state = 0;
        } else {
            switch_state = downloadSpeedupCfgBean.getSwitch_state();
            net_status = downloadSpeedupCfgBean.getNet_status();
        }
        return downloadTaskG != null && t2.i(downloadTaskG.getTips()) && downloadTaskG.getTips().contains("网游") && switch_state == 1 && net_status == 1;
    }

    public static void q3(TextView mgListviewItemInstall, View rLayoutRight, GInfoBean collectionBeanSub) {
        int iIntValue = collectionBeanSub.getDown_state().intValue();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String id2 = collectionBeanSub.getId();
        rLayoutRight.setEnabled(true);
        mgListviewItemInstall.setTextColor(-12802819);
        boolean z10 = x0(pay_tag_info, id2) > 0;
        if (iIntValue == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (iIntValue == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setTextSize(0, mgListviewItemInstall.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            mgListviewItemInstall.setTextColor(-7763575);
            rLayoutRight.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (iIntValue == 6 && !z10) {
            if (collectionBeanSub.getGame_book() == 1) {
                mgListviewItemInstall.setText("已预约");
            } else {
                mgListviewItemInstall.setText("预约");
            }
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
        }
        mgListviewItemInstall.setTextSize(2, 13.0f);
        mgListviewItemInstall.setTextColor(-12802819);
        mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    public static void q4(final Context context, final DownloadTask downloadTask, final String from, ExtBean extBean) {
        LoginCfgsBean loginCfgsBean;
        boolean z10;
        if (!"login".equals(from)) {
            if (IntentUtil.getInstance().startGameCheckRealnameHasIntent(context, AccountUtil_.getInstance_(context).getAccountData(), "startGame", downloadTask.getCrc_link_type_val())) {
                return;
            }
            if ((AccountUtil_.getInstance_(context).isTourist() || AccountUtil_.getInstance_(context).getAccountData().getUid() == 0) && (loginCfgsBean = MApplication.V) != null && loginCfgsBean.getIs_open_login() == 1) {
                PrefDef_ prefDef_ = new PrefDef_(context);
                if (!com.join.mgps.Util.e0.z(prefDef_.lastShowLoginGuiedTime().d().longValue()) && MApplication.V != null) {
                    prefDef_.startgameLogintimes_open_login().g(Integer.valueOf(MApplication.V.getTimes_open_login()));
                    prefDef_.startGameShowLoginNumber().g(Integer.valueOf(MApplication.V.getHow_times_open()));
                }
                int iIntValue = prefDef_.startGameShowLoginNumber().d().intValue();
                if (iIntValue > 0) {
                    prefDef_.startGameShowLoginNumber().g(Integer.valueOf(iIntValue - 1));
                } else {
                    if (loginCfgsBean.getLogin_is_allow_skip() == 1) {
                        int iIntValue2 = prefDef_.startgameLogintimes_open_login().d().intValue();
                        if (iIntValue2 > 0) {
                            LoginSplashActivity_.intent(context).gameId(downloadTask.getCrc_link_type_val()).start();
                            prefDef_.startgameLogintimes_open_login().g(Integer.valueOf(iIntValue2 - 1));
                        }
                        prefDef_.lastShowLoginGuiedTime().g(Long.valueOf(System.currentTimeMillis()));
                    } else {
                        LoginSplashActivity_.intent(context).gameId(downloadTask.getCrc_link_type_val()).start();
                    }
                    z10 = true;
                    prefDef_.lastShowLoginGuiedTime().g(Long.valueOf(System.currentTimeMillis()));
                }
                z10 = false;
                prefDef_.lastShowLoginGuiedTime().g(Long.valueOf(System.currentTimeMillis()));
            } else {
                z10 = false;
            }
            if (z10) {
                return;
            }
        }
        if (!downloadTask.isCloudGame() && downloadTask.isOpen() && t2.i(downloadTask.getTips()) && !downloadTask.getTips().contains("网游")) {
            if (!downloadTask.isNotCheckAddShortcut()) {
                DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
                if (downloadTaskG != null && (downloadTaskG.getUrl().endsWith(".apk") || "androidobb".equals(downloadTaskG.getRomType()) || "46".equals(downloadTaskG.getRomType()))) {
                    String packageName = downloadTaskG.getPackageName();
                    if (!t2.h(packageName) && com.join.mgps.Util.l.e(context, packageName) && !j2.d(context, downloadTask.getCrc_link_type_val())) {
                        com.join.mgps.Util.h0.h0(context).I(context, downloadTask, true, from);
                        return;
                    }
                } else if (!j2.d(context, downloadTask.getCrc_link_type_val())) {
                    com.join.mgps.Util.h0.h0(context).I(context, downloadTask, true, from);
                    return;
                }
            }
            downloadTask.setNotCheckAddShortcut(false);
        }
        n4(context, downloadTask, 0, from, extBean);
    }

    public static boolean r0(List<TipBean> tipBeans) {
        try {
            Iterator<TipBean> it2 = tipBeans.iterator();
            while (it2.hasNext()) {
                if (it2.next().getId().equals("41")) {
                    return true;
                }
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x022c  */
    /* JADX WARN: Code duplicated, block: B:112:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:115:0x02d4  */
    public static void r1(final EMUApkTable emuApkTable, final Context context, Boolean atInstall) {
        DownloadTask downloadTask;
        APKUtils.a aVarN;
        if (emuApkTable == null) {
            return;
        }
        MApplication.f3169b2 = !atInstall.booleanValue();
        int i10 = Integer.parseInt(emuApkTable.getTag_id());
        DownloadTask downloadTaskC0 = q5.f.M().c0(i10);
        String str = "";
        if (downloadTaskC0 != null) {
            if (downloadTaskC0.getStatus() == 5 && downloadTaskC0.getStatus() != 9 && downloadTaskC0.getStatus() != 42) {
                String[] strArrSplit = emuApkTable.getVer().split("_");
                if (downloadTaskC0.getDown_type() == emuApkTable.getDown_type() && !F0(strArrSplit[0], strArrSplit[1], downloadTaskC0.getVer(), downloadTaskC0.getVer_name()) && !TextUtils.isEmpty(downloadTaskC0.getGameZipPath())) {
                    File file = new File(downloadTaskC0.getGameZipPath());
                    if (file.exists()) {
                        if (downloadTaskC0.getDown_type() != 2) {
                            if (atInstall.booleanValue()) {
                                com.join.android.app.common.utils.g.t0(context).z(context, file);
                                return;
                            }
                            return;
                        } else if (!com.join.android.app.common.utils.o.I(context, downloadTaskC0, null) || com.join.android.app.common.utils.o.j(emuApkTable)) {
                            com.php25.PDownload.d.a(downloadTaskC0);
                            return;
                        } else {
                            i3(downloadTaskC0, 5);
                            return;
                        }
                    }
                }
            } else if ((downloadTaskC0.getStatus() != 2 || downloadTaskC0.getStatus() != 10) && downloadTaskC0.getStatus() != 9 && downloadTaskC0.getStatus() != 42) {
                if (downloadTaskC0.getDown_type() == 2 && com.join.android.app.common.utils.o.i(emuApkTable)) {
                    com.join.android.app.common.utils.o.e(emuApkTable, downloadTaskC0);
                }
                if (t2.i(emuApkTable.getDown_url()) && !emuApkTable.getDown_url().equals(downloadTaskC0.getUrl()) && (downloadTaskC0.getStatus() == 5 || downloadTaskC0.getStatus() == 11)) {
                    com.php25.PDownload.d.b(downloadTaskC0);
                    downloadTaskC0.setVer(emuApkTable.getVer());
                    downloadTaskC0.setVer_name(emuApkTable.getVerName());
                    downloadTaskC0.setUrl(emuApkTable.getDown_url());
                    downloadTaskC0.setStatus(9);
                    downloadTaskC0.setPath("");
                    downloadTaskC0.setGameZipPath("");
                    q5.f.M().m(downloadTaskC0);
                }
                if (downloadTaskC0.getStatus() == 11 && !TextUtils.isEmpty(downloadTaskC0.getGameZipPath())) {
                    File file2 = new File(downloadTaskC0.getGameZipPath());
                    if (file2.exists()) {
                        if (((com.join.android.app.common.utils.q.x() instanceof MGMainActivity_) || (com.join.android.app.common.utils.q.x() instanceof ModGameIndexActivity_) || (com.join.android.app.common.utils.q.x() instanceof CloudGameIndexActivity_)) && (TextUtils.equals(downloadTaskC0.getPlugin_num(), String.valueOf(ConstantIntEnum.VA32.value())) || TextUtils.equals(downloadTaskC0.getPlugin_num(), String.valueOf(ConstantIntEnum.VA64.value())))) {
                            new Handler().postDelayed(new k(), 1500L);
                        }
                        if (atInstall.booleanValue()) {
                            com.join.android.app.common.utils.g.t0(context).z(context, file2);
                            return;
                        }
                        return;
                    }
                }
                com.php25.PDownload.d.c(downloadTaskC0, context);
                if (context instanceof EndGameLaunchActivity_) {
                    return;
                }
                a3.b(context).d("悟饭插件正在下载...");
                return;
            }
        }
        try {
            if ("35".equals(emuApkTable.getTag_id())) {
                try {
                    aVarN = com.join.android.app.common.utils.g.t0(context).n(context, emuApkTable.getPackage_name());
                } catch (Exception e10) {
                    e10.printStackTrace();
                    aVarN = null;
                }
                if (aVarN == null && com.papa.sim.statistic.pref.b.k(context).o() < 13) {
                    com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
                    tVar.setContentView(R.layout.fc_notice_dialog);
                    ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new v(tVar));
                    try {
                        ((Button) tVar.findViewById(R.id.dialog_button_ok)).setOnClickListener(new b0(downloadTaskC0, emuApkTable, i10, context, tVar));
                        tVar.show();
                        return;
                    } catch (Exception e11) {
                        e = e11;
                        e.printStackTrace();
                        downloadTask = new DownloadTask();
                        if (downloadTaskC0 != null) {
                            downloadTask.setId(downloadTaskC0.getId());
                        }
                        downloadTask.setStatus(0);
                        downloadTask.setPackageName(emuApkTable.getPackage_name());
                        downloadTask.setPortraitURL(emuApkTable.getLogo());
                        downloadTask.setShowName(emuApkTable.getApk_name());
                        downloadTask.setUrl(emuApkTable.getDown_url());
                        downloadTask.setTipBeans(null);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(i10);
                        String str2 = str;
                        sb2.append(str2);
                        downloadTask.setCrc_link_type_val(sb2.toString());
                        String[] strArrSplit2 = emuApkTable.getVer().split("_");
                        downloadTask.setVer(strArrSplit2[0]);
                        downloadTask.setVer_name(strArrSplit2[1]);
                        downloadTask.setRomType(i10 + str2);
                        downloadTask.setPlugin_num(i10 + str2);
                        downloadTask.setFileType(Dtype.chajian.name());
                        downloadTask.setShowSize(emuApkTable.getSize());
                        downloadTask.setDescribe(emuApkTable.getVer_info());
                        downloadTask.setDown_type(emuApkTable.getDown_type());
                        downloadTask.setProgress(0L);
                        if (downloadTaskC0 != null) {
                            N0(downloadTaskC0);
                        }
                        if (emuApkTable.getDown_type() == 2) {
                            com.join.android.app.common.utils.o.e(emuApkTable, downloadTask);
                        }
                        com.php25.PDownload.d.c(downloadTask, context);
                    }
                }
            }
            str = "";
        } catch (Exception e12) {
            e = e12;
        }
        downloadTask = new DownloadTask();
        if (downloadTaskC0 != null) {
            downloadTask.setId(downloadTaskC0.getId());
        }
        downloadTask.setStatus(0);
        downloadTask.setPackageName(emuApkTable.getPackage_name());
        downloadTask.setPortraitURL(emuApkTable.getLogo());
        downloadTask.setShowName(emuApkTable.getApk_name());
        downloadTask.setUrl(emuApkTable.getDown_url());
        downloadTask.setTipBeans(null);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(i10);
        String str3 = str;
        sb3.append(str3);
        downloadTask.setCrc_link_type_val(sb3.toString());
        try {
            String[] strArrSplit3 = emuApkTable.getVer().split("_");
            downloadTask.setVer(strArrSplit3[0]);
            downloadTask.setVer_name(strArrSplit3[1]);
        } catch (Exception e13) {
            e13.printStackTrace();
        }
        downloadTask.setRomType(i10 + str3);
        downloadTask.setPlugin_num(i10 + str3);
        downloadTask.setFileType(Dtype.chajian.name());
        downloadTask.setShowSize(emuApkTable.getSize());
        downloadTask.setDescribe(emuApkTable.getVer_info());
        downloadTask.setDown_type(emuApkTable.getDown_type());
        downloadTask.setProgress(0L);
        if (downloadTaskC0 != null) {
            N0(downloadTaskC0);
        }
        if (emuApkTable.getDown_type() == 2) {
            com.join.android.app.common.utils.o.e(emuApkTable, downloadTask);
        }
        com.php25.PDownload.d.c(downloadTask, context);
    }

    public static boolean r2(String pluginNum) {
        try {
            if (t2.h(pluginNum)) {
                return false;
            }
            try {
                return w2(Integer.parseInt(pluginNum));
            } catch (Exception e10) {
                e10.printStackTrace();
                return w2(0);
            }
        } catch (Throwable unused) {
            return w2(0);
        }
    }

    public static void r3(TextView mgListviewItemInstall, DownloadTask collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        int pay_game_amount = collectionBeanSub.getPay_game_amount();
        String crc_link_type_val = collectionBeanSub.getCrc_link_type_val();
        collectionBeanSub.getDownload_source_switch_v2();
        mgListviewItemInstall.setTextColor(-12802819);
        boolean z10 = w0(pay_game_amount, crc_link_type_val) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setEnabled(false);
            mgListviewItemInstall.setTextSize(0, mgListviewItemInstall.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            mgListviewItemInstall.setTextColor(-7763575);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (down_status == 6 && !z10) {
            mgListviewItemInstall.setText("预约");
            mgListviewItemInstall.setTextSize(2, 13.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (pay_game_amount > 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_game_amount + ""));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        }
        mgListviewItemInstall.setTextSize(2, 13.0f);
        mgListviewItemInstall.setTextColor(-12802819);
        mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    public static void r4(Context context, NetBattleStartGameDto netBattleStartGameDto, DownloadTask downloadTask) {
        int i10;
        String strM4 = M4(downloadTask.getGameZipPath());
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
        if (downloadTaskG != null) {
            downloadTask.setLock_sp(downloadTaskG.getLock_sp());
        }
        EMUApkTable eMUApkTableU = U(context, downloadTask);
        if (eMUApkTableU != null) {
            try {
                i10 = Integer.parseInt(downloadTask.getRomType());
            } catch (Exception unused) {
                i10 = 33;
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(eMUApkTableU.getPackage_name());
            startGameMeta.setActivityName(eMUApkTableU.getLaunch_name());
            startGameMeta.setRomPath(strM4);
            startGameMeta.setStartMode(7);
            startGameMeta.setGameID(crc_link_type_val);
            startGameMeta.setPorder(netBattleStartGameDto.getPorder());
            startGameMeta.setType(i10);
            startGameMeta.setRoomID(netBattleStartGameDto.getRoomID());
            startGameMeta.setServerPort(netBattleStartGameDto.getServerPort() + "");
            startGameMeta.setServerIP(netBattleStartGameDto.getServerIP());
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            startGameMeta.setP1Name(netBattleStartGameDto.getP1Name());
            startGameMeta.setP2Name(netBattleStartGameDto.getP2Name());
            startGameMeta.setOldGame(netBattleStartGameDto.getOldGame());
            startGameMeta.setClientIp(netBattleStartGameDto.getClientIp());
            Z4(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setTcptype(netBattleStartGameDto.getTcptype());
            startGameMeta.setUdpport(netBattleStartGameDto.getUdpport());
            startGameMeta.setUserIcon(netBattleStartGameDto.getUserIcon());
            startGameMeta.setUserName(netBattleStartGameDto.getUserName());
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setGametype(P2(downloadTask.getTipBeans()));
            startGameMeta.setScoreBoard(netBattleStartGameDto.isOpenBattleScore() ? 1 : 0);
            if (E(context, startGameMeta, eMUApkTableU)) {
                F2(context, startGameMeta, 1);
            }
        }
    }

    public static boolean s0(Context context, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return false;
        }
        if (TextUtils.isEmpty(downloadTask.getPlugin_num()) || !w2(Integer.parseInt(downloadTask.getPlugin_num()))) {
            Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
            boolean z10 = false;
            while (it2.hasNext()) {
                if ("23".equals(it2.next().getId())) {
                    z10 = true;
                }
            }
            if (z10) {
                if ("1".equals(MApplication.U.getDown_load_cfg_stand_alone_speed_limit().getCfg_switch_express())) {
                    return false;
                }
            } else if ("1".equals(MApplication.U.getDown_load_cfg_net_game_speed_limit().getCfg_switch_express())) {
                return false;
            }
        } else if ("1".equals(MApplication.U.getDown_load_cfg_simulator_speed_limit().getCfg_switch_express())) {
            return false;
        }
        return true;
    }

    public static void s1(final EMUApkTable emuApkTable, final Context context) {
        int i10 = Integer.parseInt(emuApkTable.getTag_id());
        DownloadTask downloadTaskC0 = q5.f.M().c0(i10);
        if (downloadTaskC0 != null) {
            if (downloadTaskC0.getStatus() == 5 && downloadTaskC0.getStatus() != 9 && downloadTaskC0.getStatus() != 42) {
                String[] strArrSplit = emuApkTable.getVer().split("_");
                if (downloadTaskC0.getDown_type() == emuApkTable.getDown_type() && !F0(strArrSplit[0], strArrSplit[1], downloadTaskC0.getVer(), downloadTaskC0.getVer_name()) && !TextUtils.isEmpty(downloadTaskC0.getGameZipPath())) {
                    File file = new File(downloadTaskC0.getGameZipPath());
                    if (file.exists()) {
                        if (downloadTaskC0.getDown_type() != 2) {
                            com.join.android.app.common.utils.g.t0(context).z(context, file);
                            return;
                        } else if (!com.join.android.app.common.utils.o.I(context, downloadTaskC0, null) || com.join.android.app.common.utils.o.j(emuApkTable)) {
                            com.php25.PDownload.d.a(downloadTaskC0);
                            return;
                        } else {
                            i3(downloadTaskC0, 5);
                            return;
                        }
                    }
                }
            } else if ((downloadTaskC0.getStatus() != 2 || downloadTaskC0.getStatus() != 10) && downloadTaskC0.getStatus() != 9 && downloadTaskC0.getStatus() != 42) {
                com.php25.PDownload.d.c(downloadTaskC0, context);
                if (context instanceof EndGameLaunchActivity_) {
                    return;
                }
                a3.b(context).d("悟饭插件正在下载...");
                return;
            }
        }
        if ("35".equals(emuApkTable.getTag_id())) {
            try {
                APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(context).n(context, emuApkTable.getPackage_name());
                if (com.papa.sim.statistic.pref.b.k(context).o() < 13 && aVarN.d() < 150) {
                    com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
                    tVar.setContentView(R.layout.fc_notice_dialog);
                    ((Button) tVar.findViewById(R.id.dialog_button_cancle)).setOnClickListener(new c0(tVar));
                    ((Button) tVar.findViewById(R.id.dialog_button_ok)).setOnClickListener(new d0(downloadTaskC0, emuApkTable, i10, context, tVar));
                    tVar.show();
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        DownloadTask downloadTask = new DownloadTask();
        if (downloadTaskC0 != null) {
            downloadTask.setId(downloadTaskC0.getId());
        }
        downloadTask.setStatus(0);
        downloadTask.setPackageName(emuApkTable.getPackage_name());
        downloadTask.setPortraitURL(emuApkTable.getLogo());
        downloadTask.setShowName(emuApkTable.getApk_name());
        downloadTask.setUrl(emuApkTable.getDown_url());
        downloadTask.setTipBeans(null);
        downloadTask.setCrc_link_type_val(i10 + "");
        try {
            String[] strArrSplit2 = emuApkTable.getVer().split("_");
            downloadTask.setVer(strArrSplit2[0]);
            downloadTask.setVer_name(strArrSplit2[1]);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        downloadTask.setRomType(i10 + "");
        downloadTask.setPlugin_num(i10 + "");
        downloadTask.setFileType(Dtype.chajian.name());
        downloadTask.setShowSize(emuApkTable.getSize());
        downloadTask.setDescribe(emuApkTable.getVer_info());
        downloadTask.setDown_type(emuApkTable.getDown_type());
        downloadTask.setProgress(0L);
        if (downloadTaskC0 != null) {
            N0(downloadTaskC0);
        }
        if (emuApkTable.getDown_type() == 2 && com.join.android.app.common.utils.o.i(emuApkTable)) {
            com.join.android.app.common.utils.o.e(emuApkTable, downloadTask);
        }
        com.php25.PDownload.d.f(downloadTask, context);
    }

    public static boolean s2() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return "harmony".equalsIgnoreCase(cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]).toString());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void s3(TextView mgListviewItemInstall, AppBean collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String game_id = collectionBeanSub.getGame_id();
        collectionBeanSub.getDownload_source_switch_v2();
        mgListviewItemInstall.setEnabled(true);
        mgListviewItemInstall.setTextColor(-12802819);
        boolean z10 = x0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            mgListviewItemInstall.setTextSize(2, 11.0f);
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setTextSize(2, 10.0f);
            mgListviewItemInstall.setTextColor(-7763575);
            mgListviewItemInstall.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (down_status == 6 && !z10) {
            mgListviewItemInstall.setText("预约");
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
        }
        mgListviewItemInstall.setTextColor(-12802819);
        mgListviewItemInstall.setTextSize(2, 12.0f);
        mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    public static void s4(Context context, NetBattleStartGameDto netBattleStartGameDto, DownloadTask downloadTask, String str) {
        int i10;
        String strM4 = M4(downloadTask.getGameZipPath());
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        EMUApkTable eMUApkTableU = U(context, downloadTask);
        if (eMUApkTableU != null) {
            try {
                i10 = Integer.parseInt(downloadTask.getRomType());
            } catch (Exception unused) {
                i10 = 33;
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(eMUApkTableU.getPackage_name());
            startGameMeta.setActivityName(eMUApkTableU.getLaunch_name());
            startGameMeta.setRomPath(strM4);
            startGameMeta.setStartMode(8);
            startGameMeta.setGameID(crc_link_type_val);
            startGameMeta.setPorder(netBattleStartGameDto.getPorder());
            startGameMeta.setType(i10);
            startGameMeta.setRoomID(netBattleStartGameDto.getRoomID());
            startGameMeta.setServerPort(netBattleStartGameDto.getServerPort() + "");
            startGameMeta.setServerIP(netBattleStartGameDto.getServerIP());
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            startGameMeta.setP1Name(netBattleStartGameDto.getP1Name());
            startGameMeta.setP2Name(netBattleStartGameDto.getP2Name());
            startGameMeta.setOldGame(netBattleStartGameDto.getOldGame());
            startGameMeta.setClientIp(netBattleStartGameDto.getClientIp());
            Z4(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setTcptype(netBattleStartGameDto.getTcptype());
            startGameMeta.setUdpport(netBattleStartGameDto.getUdpport());
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setNetState(str);
            startGameMeta.setUserIcon(netBattleStartGameDto.getUserIcon());
            startGameMeta.setUserName(netBattleStartGameDto.getUserName());
            startGameMeta.setGametype(P2(downloadTask.getTipBeans()));
            startGameMeta.setScoreBoard(netBattleStartGameDto.isOpenBattleScore() ? 1 : 0);
            if (E(context, startGameMeta, eMUApkTableU)) {
                F2(context, startGameMeta, 1);
            }
        }
    }

    public static boolean t0(Context context, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return false;
        }
        if (downloadTask.getPlugin_num() == null || !w2(Integer.parseInt(downloadTask.getPlugin_num()))) {
            Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
            boolean z10 = false;
            while (it2.hasNext()) {
                if ("23".equals(it2.next().getId())) {
                    z10 = true;
                }
            }
            if (z10) {
                if ("1".equals(MApplication.U.getDown_load_cfg_stand_alone_speed_limit().getCfg_switch_express())) {
                    return false;
                }
            } else if ("1".equals(MApplication.U.getDown_load_cfg_net_game_speed_limit().getCfg_switch_express())) {
                return false;
            }
        } else if ("1".equals(MApplication.U.getDown_load_cfg_simulator_speed_limit().getCfg_switch_express())) {
            return false;
        }
        return true;
    }

    public static int t1(Context context, String gameId) {
        if (context == null) {
            try {
                context = MApplication.n();
            } catch (Exception e10) {
                e10.printStackTrace();
                return 0;
            }
        }
        PrefDef_ prefDef_ = new PrefDef_(context);
        return Math.max(0, prefDef_.downloadSpeedUpCountAD().d().intValue() - prefDef_.downloadSpeedUpCountCurrentAD().d().intValue());
    }

    public static boolean t2(List<TipBean> tag_info) {
        if (tag_info != null && tag_info.size() > 0) {
            Iterator<TipBean> it2 = tag_info.iterator();
            while (it2.hasNext()) {
                if (TextUtils.equals(it2.next().getId(), "7")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void t3(TextView mgListviewItemInstall, CollectionBeanSub collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String game_id = collectionBeanSub.getGame_id();
        collectionBeanSub.getDownload_source_switch_v2();
        mgListviewItemInstall.setEnabled(true);
        mgListviewItemInstall.setTextColor(-12802819);
        boolean z10 = x0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            mgListviewItemInstall.setTextSize(2, 11.0f);
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setTextSize(2, 10.0f);
            mgListviewItemInstall.setTextColor(-7763575);
            mgListviewItemInstall.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (down_status == 6 && !z10) {
            mgListviewItemInstall.setText("预约");
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
        }
        mgListviewItemInstall.setTextColor(-12802819);
        mgListviewItemInstall.setTextSize(2, 12.0f);
        mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    public static void t4(final Context context, final String gameId, String romPath, String plugin_num, int mode, String serverIp, long forum_id, DownloadTask downloadTask) {
        DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
        if (downloadTaskG != null) {
            downloadTask.setLock_sp(downloadTaskG.getLock_sp());
        }
        EMUApkTable eMUApkTableU = U(context, downloadTask);
        if (eMUApkTableU != null) {
            if (!v2(eMUApkTableU)) {
                q1(eMUApkTableU, context);
                return;
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(eMUApkTableU.getPackage_name());
            startGameMeta.setActivityName(eMUApkTableU.getLaunch_name());
            startGameMeta.setRomPath(M4(romPath));
            startGameMeta.setStartMode(mode);
            startGameMeta.setServerIP(serverIp);
            startGameMeta.setGameID(gameId);
            startGameMeta.setType(Integer.parseInt(eMUApkTableU.getTag_id()));
            startGameMeta.setPlugin_area_val(forum_id);
            Z4(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setTcptype(1);
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setGametype(P2(downloadTask.getTipBeans()));
            if (E(context, startGameMeta, eMUApkTableU)) {
                E2(context, startGameMeta);
            }
        }
    }

    public static EMUApkTable u0(String tag_id) {
        try {
            HashMap map = new HashMap();
            map.put("tag_id", tag_id);
            List<EMUApkTable> listH = t6.p.o().h(map);
            if (listH == null || listH.size() <= 0) {
                return null;
            }
            Iterator<EMUApkTable> it2 = listH.iterator();
            if (it2.hasNext()) {
                return it2.next();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void u1(Context context, UpdateIntentDataBean updateIntentDataBean) {
        DownloadTask downloadTask = updateIntentDataBean.getDownloadTask();
        if (!o1(context, downloadTask) && downloadTask.getDown_status() == 5) {
            ((ChociceDownActivity_.j) ChociceDownActivity_.intent(context).a(downloadTask).b(11).c(updateIntentDataBean).flags(C.ENCODING_PCM_MU_LAW)).start();
        } else {
            UpdateLodingActivity_.intent(context).a(updateIntentDataBean).start();
        }
    }

    public static boolean u2(List<Integer> tag_info) {
        if (tag_info != null && tag_info.size() > 0) {
            Iterator<Integer> it2 = tag_info.iterator();
            while (it2.hasNext()) {
                if (it2.next().intValue() == 7) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void u3(TextView mgListviewItemInstall, GInfoBean collectionBeanSub) {
        int iIntValue = collectionBeanSub.getDown_state().intValue();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String id2 = collectionBeanSub.getId();
        mgListviewItemInstall.setEnabled(true);
        mgListviewItemInstall.setTextColor(-12802819);
        boolean z10 = x0(pay_tag_info, id2) > 0;
        if (iIntValue == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            mgListviewItemInstall.setTextSize(2, 11.0f);
            return;
        }
        if (iIntValue == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setTextSize(2, 10.0f);
            mgListviewItemInstall.setTextColor(-7763575);
            mgListviewItemInstall.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (iIntValue == 6 && !z10) {
            mgListviewItemInstall.setText("预约");
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-12802819);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
            return;
        }
        if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
        }
        mgListviewItemInstall.setTextColor(-12802819);
        mgListviewItemInstall.setTextSize(2, 12.0f);
        mgListviewItemInstall.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    public static void u4(Context context, GameStartArgs args) {
        DownloadTask downloadTask = args.getDownloadTask();
        String archivePath = args.getArchivePath();
        EMUApkTable eMUApkTableN = t6.p.o().n(downloadTask.getPlugin_num());
        if (args.getEmuApkTable() == null) {
            args.setEmuApkTable(eMUApkTableN);
        }
        if (args.getSkipAbiCheck() || l2(context, args)) {
            StartGameMeta startGameMeta = new StartGameMeta();
            Z4(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setPackageName(eMUApkTableN.getPackage_name());
            startGameMeta.setActivityName(eMUApkTableN.getLaunch_name());
            startGameMeta.setRomPath(M4(downloadTask.getGameZipPath()));
            startGameMeta.setStartMode(0);
            startGameMeta.setNetState(archivePath);
            startGameMeta.setServerIP(null);
            startGameMeta.setGameID(downloadTask.getCrc_link_type_val());
            startGameMeta.setType(Integer.parseInt(eMUApkTableN.getTag_id()));
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            startGameMeta.setGametype(P2(downloadTask.getTipBeans()));
            startGameMeta.setIntentFrom(1);
            h1.e("startGameRecorder", archivePath);
            if (E(context, startGameMeta, eMUApkTableN)) {
                E2(context, startGameMeta);
            }
        }
    }

    public static boolean v0(List<TipBean> tipBeans) {
        if (tipBeans != null) {
            Iterator<TipBean> it2 = tipBeans.iterator();
            while (it2.hasNext()) {
                if (it2.next().getId().equals("7")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Bitmap v1(Drawable drawable, int width, int height) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static boolean v2(EMUApkTable emuApkTable) {
        StringBuilder sb2;
        String str;
        File[] fileArrListFiles;
        if (emuApkTable == null) {
            return false;
        }
        if (emuApkTable.getDown_type() != 2) {
            return true;
        }
        String apkPath = emuApkTable.getApkPath();
        if (TextUtils.isEmpty(apkPath) || !new File(apkPath).exists()) {
            return false;
        }
        if (Overmind.is64Bit()) {
            sb2 = new StringBuilder();
            sb2.append(apkPath);
            str = "/arm64-v8a/";
        } else {
            sb2 = new StringBuilder();
            sb2.append(apkPath);
            str = "/so/";
        }
        sb2.append(str);
        File file = new File(sb2.toString());
        return file.exists() && (fileArrListFiles = file.listFiles(new f())) != null && fileArrListFiles.length > 0;
    }

    public static void v3(TextView mgListviewItemInstall, View rLayoutRight, AppBean collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String game_id = collectionBeanSub.getGame_id();
        collectionBeanSub.getDownload_source_switch_v2();
        rLayoutRight.setEnabled(true);
        boolean z10 = x0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            rLayoutRight.setEnabled(false);
        } else {
            if (down_status == 6 && !z10) {
                mgListviewItemInstall.setText("预约");
                return;
            }
            if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
            } else {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
            }
            mgListviewItemInstall.setTextSize(2, 13.0f);
        }
    }

    public static void v4(DownloadTask downloadTask, Context context, String filePath) {
        GameStartArgs gameStartArgs = new GameStartArgs(GameStartType.startGameRecorder);
        gameStartArgs.setDownloadTask(downloadTask);
        gameStartArgs.setArchivePath(filePath);
        u4(context, gameStartArgs);
    }

    public static int w0(int payGameAmount, String gameId) {
        if (payGameAmount <= 0 || t6.e0.o().p(gameId)) {
            return 0;
        }
        return payGameAmount;
    }

    public static void w1(DownloadTask downloadTask, FightMainTable bean) {
        if (downloadTask == null || bean == null) {
            return;
        }
        downloadTask.setDownload_source_url(bean.getDownload_source_url());
        downloadTask.setDownload_outside_url(bean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(bean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(bean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(bean.getDownload_source_switch_v2());
    }

    public static boolean w2(int romType) {
        return ConstantIntEnum.FBA.value() == romType || ConstantIntEnum.NDS.value() == romType || ConstantIntEnum.PS2.value() == romType || ConstantIntEnum.N3DS.value() == romType || ConstantIntEnum.GBA.value() == romType || ConstantIntEnum.PSP.value() == romType || ConstantIntEnum.FC.value() == romType || ConstantIntEnum.SFC.value() == romType || ConstantIntEnum.MD.value() == romType || ConstantIntEnum.PS.value() == romType || ConstantIntEnum.WSC.value() == romType || ConstantIntEnum.GBC.value() == romType || ConstantIntEnum.N64.value() == romType || ConstantIntEnum.ONS.value() == romType || ConstantIntEnum.DC.value() == romType;
    }

    public static void w3(TextView mgListviewItemInstall, View rLayoutRight, CollectionBeanSub collectionBeanSub) {
        int down_status = collectionBeanSub.getDown_status();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String game_id = collectionBeanSub.getGame_id();
        collectionBeanSub.getDownload_source_switch_v2();
        rLayoutRight.setEnabled(true);
        boolean z10 = x0(pay_tag_info, game_id) > 0;
        if (down_status == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            return;
        }
        if (down_status == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            rLayoutRight.setEnabled(false);
        } else {
            if (down_status == 6 && !z10) {
                mgListviewItemInstall.setText("预约");
                return;
            }
            if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
            } else {
                mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
            }
            mgListviewItemInstall.setTextSize(2, 13.0f);
        }
    }

    public static void w4(DownloadTask downloadTask, Context context) {
        String gameZipPath = downloadTask.getGameZipPath();
        if (gameZipPath != null && !gameZipPath.equals("") && new File(gameZipPath).exists()) {
            com.join.android.app.common.utils.g.t0(context).A(context, gameZipPath);
            return;
        }
        downloadTask.setStatus(0);
        downloadTask.setGameZipPath("");
        downloadTask.setPath("");
        downloadTask.setProgress(0L);
        if (downloadTask.getDown_status() == 5) {
            l1(context, downloadTask);
        } else {
            com.php25.PDownload.d.c(downloadTask, context);
        }
    }

    public static int x0(PayTagInfo payTagInfo, String gameId) {
        if (payTagInfo == null) {
            return 0;
        }
        if (payTagInfo.getPay_game_amount() <= 0 || !t6.e0.o().p(gameId)) {
            payTagInfo.setAmount_check(payTagInfo.getPay_game_amount());
            return payTagInfo.getAmount_check();
        }
        payTagInfo.setAmount_check(0);
        return 0;
    }

    public static void x1(DownloadTask downloadTask, WarMatchAndLocalTable bean) {
        if (downloadTask == null || bean == null) {
            return;
        }
        downloadTask.setDownload_source_url(bean.getDownload_source_url());
        downloadTask.setDownload_outside_url(bean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(bean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(bean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(bean.getDownload_source_switch_v2());
    }

    public static boolean x2(List<TipBean> tag_info) {
        if (tag_info == null || tag_info.size() <= 0) {
            return false;
        }
        Iterator<TipBean> it2 = tag_info.iterator();
        while (it2.hasNext()) {
            if ("23".equals(it2.next().getId())) {
                return true;
            }
        }
        return false;
    }

    public static void x3(TextView mgListviewItemInstall, View rLayoutRight, GInfoBean collectionBeanSub) {
        int iIntValue = collectionBeanSub.getDown_state().intValue();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String id2 = collectionBeanSub.getId();
        rLayoutRight.setEnabled(true);
        boolean z10 = x0(pay_tag_info, id2) > 0;
        if (iIntValue == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            return;
        }
        if (iIntValue == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            return;
        }
        if (iIntValue == 6 && !z10) {
            if (collectionBeanSub.getGame_book() == 1) {
                mgListviewItemInstall.setText("已预约");
                return;
            } else {
                mgListviewItemInstall.setText("预约");
                return;
            }
        }
        if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
        }
    }

    public static void x4(final Context context, final NetBattleStartGameDto netBattleStartGameDto, final DownloadTask downloadTask, int startMode) {
        int i10;
        String gameZipPath = downloadTask.getGameZipPath();
        String strSubstring = gameZipPath.substring(0, gameZipPath.lastIndexOf(o0.f49827a));
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        EMUApkTable eMUApkTableU = U(context, downloadTask);
        if (eMUApkTableU != null) {
            try {
                i10 = Integer.parseInt(downloadTask.getRomType());
            } catch (Exception unused) {
                i10 = 33;
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(eMUApkTableU.getPackage_name());
            startGameMeta.setActivityName(eMUApkTableU.getLaunch_name());
            startGameMeta.setRomPath(strSubstring);
            startGameMeta.setStartMode(startMode);
            startGameMeta.setGameID(crc_link_type_val);
            startGameMeta.setType(i10);
            startGameMeta.setRoomID(netBattleStartGameDto.getRoomID());
            startGameMeta.setServerPort(netBattleStartGameDto.getServerPort() + "");
            startGameMeta.setServerIP(netBattleStartGameDto.getServerIP());
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            startGameMeta.setPorder(netBattleStartGameDto.getPorder());
            startGameMeta.setP1Name(netBattleStartGameDto.getP1Name());
            startGameMeta.setP2Name(netBattleStartGameDto.getP2Name());
            startGameMeta.setOldGame(netBattleStartGameDto.getOldGame());
            startGameMeta.setClientIp(netBattleStartGameDto.getClientIp());
            Z4(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setTcptype(netBattleStartGameDto.getTcptype());
            startGameMeta.setUdpport(netBattleStartGameDto.getUdpport());
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setNetMode(1);
            startGameMeta.setUserIcon(netBattleStartGameDto.getUserIcon());
            startGameMeta.setUserName(netBattleStartGameDto.getUserName());
            startGameMeta.setNetPlayers(netBattleStartGameDto.getNetPlayers());
            startGameMeta.setGamePlayers(netBattleStartGameDto.getGamePlayers());
            startGameMeta.setSp(0);
            startGameMeta.setGroupId(netBattleStartGameDto.getGroupId());
            startGameMeta.setArea(netBattleStartGameDto.getArea());
            startGameMeta.setGametype(P2(downloadTask.getTipBeans()));
            if (E(context, startGameMeta, eMUApkTableU)) {
                F2(context, startGameMeta, 1);
            }
        }
    }

    public static int y0(int payGameAmount, String gameId) {
        return payGameAmount;
    }

    public static void y1(DownloadTask downloadTask, AppBean bean) {
        if (downloadTask == null || bean == null) {
            return;
        }
        downloadTask.setDownload_source_url(bean.getDownload_source_url());
        downloadTask.setDownload_outside_url(bean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(bean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(bean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(bean.getDownload_source_switch_v2());
    }

    public static boolean y2(Context context, DownloadTask downloadTask, boolean toast) {
        List<Filepath> listA = f2.a(context);
        if (listA == null || listA.size() == 0) {
            if (toast) {
                a3.b(context).d("存储空间不足，请清理空间后再下载");
            }
            return false;
        }
        String strG = com.join.mgps.pref.h.n(context).g();
        String path = downloadTask.getPath();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("filePath=");
        sb2.append(listA);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("downPath=");
        sb3.append(strG);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("path=");
        sb4.append(path);
        if (!t2.h(path)) {
            for (Filepath filepath : listA) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("filepath.getPathRoot()=");
                sb5.append(filepath.getPathRoot());
                if (path.contains(filepath.getPathRoot())) {
                    try {
                        long available = filepath.getAvailable();
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append("zip...available size is ");
                        sb6.append(available);
                        sb6.append(";least size is ");
                        sb6.append(com.join.mgps.Util.z.f50162a);
                        if (available <= com.join.mgps.Util.z.f50162a) {
                            if (toast) {
                                a3.b(context).d("存储空间不足，请清理空间后再下载");
                            }
                            return false;
                        }
                        continue;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
            return true;
        }
        for (Filepath filepath2 : listA) {
            StringBuilder sb7 = new StringBuilder();
            sb7.append("filepath.getPathHome()=");
            sb7.append(filepath2.getPathHome());
            if (strG.equals(filepath2.getPathHome())) {
                try {
                    long available2 = filepath2.getAvailable();
                    long size = downloadTask.getSize() * 2;
                    try {
                        size = Long.parseLong(downloadTask.getUnzip_size());
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    StringBuilder sb8 = new StringBuilder();
                    sb8.append("downloading...available size is ");
                    sb8.append(available2);
                    sb8.append(";least size is ");
                    sb8.append(com.join.mgps.Util.z.f50162a);
                    if (available2 <= com.join.mgps.Util.z.f50162a) {
                        if (toast) {
                            a3.b(context).d("存储空间不足，请清理空间后再下载");
                        }
                        return false;
                    }
                    if (available2 < size) {
                        a3.b(context).d("存储空间不足，请清理空间后再下载");
                        return false;
                    }
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
        }
        return true;
    }

    public static void y3(TextView mgListviewItemInstall, View rLayoutRight, GInfoBean collectionBeanSub) {
        int iIntValue = collectionBeanSub.getDown_state().intValue();
        PayTagInfo pay_tag_info = collectionBeanSub.getPay_tag_info();
        String id2 = collectionBeanSub.getId();
        rLayoutRight.setEnabled(true);
        mgListviewItemInstall.setTextColor(-1);
        boolean z10 = x0(pay_tag_info, id2) > 0;
        if (iIntValue == 3 && !z10) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_pre_download));
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-1);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_white_butn);
            return;
        }
        if (iIntValue == 2 && !z10) {
            mgListviewItemInstall.setText("即将开放");
            mgListviewItemInstall.setTextSize(0, mgListviewItemInstall.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
            mgListviewItemInstall.setTextColor(-7763575);
            rLayoutRight.setEnabled(false);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (iIntValue == 6 && !z10) {
            mgListviewItemInstall.setText("预约");
            mgListviewItemInstall.setTextSize(2, 12.0f);
            mgListviewItemInstall.setTextColor(-1);
            mgListviewItemInstall.setBackgroundResource(R.drawable.recom_white_butn);
            return;
        }
        if (pay_tag_info == null || pay_tag_info.getAmount_check() <= 0) {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.download_status_download));
        } else {
            mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, pay_tag_info.getPayGameAmount()));
        }
        mgListviewItemInstall.setTextSize(2, 13.0f);
        mgListviewItemInstall.setTextColor(-1);
        mgListviewItemInstall.setBackgroundResource(R.drawable.recom_white_butn);
    }

    public static void y4(final Context context, final String userId, final DownloadTask downloadTask, int startMode, String rankingId, int numPlayers, int miniRankTime, String roles, int rankAutoUpload) {
        int i10;
        String gameZipPath = downloadTask.getGameZipPath();
        String strSubstring = gameZipPath.substring(0, gameZipPath.lastIndexOf(o0.f49827a));
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        EMUApkTable eMUApkTableU = U(context, downloadTask);
        if (eMUApkTableU != null) {
            try {
                i10 = Integer.parseInt(downloadTask.getRomType());
            } catch (Exception unused) {
                i10 = 33;
            }
            StartGameMeta startGameMeta = new StartGameMeta();
            startGameMeta.setPackageName(eMUApkTableU.getPackage_name());
            startGameMeta.setActivityName(eMUApkTableU.getLaunch_name());
            startGameMeta.setRomPath(strSubstring);
            startGameMeta.setStartMode(startMode);
            startGameMeta.setGameID(crc_link_type_val);
            startGameMeta.setRankingID(rankingId);
            startGameMeta.setUserID(userId);
            startGameMeta.setGamePlayers(numPlayers);
            startGameMeta.setType(i10);
            startGameMeta.setPlugin_area_val(downloadTask.getPlugin_area_val());
            Z4(context, downloadTask, startGameMeta);
            startGameMeta.setToken(AccountUtil_.getInstance_(context).getToken());
            startGameMeta.setRamCheck(downloadTask.getSync_memory());
            startGameMeta.setNetMode(1);
            startGameMeta.setSp(0);
            startGameMeta.setGametype(P2(downloadTask.getTipBeans()));
            startGameMeta.setRankMiniTime(miniRankTime);
            startGameMeta.setRolesJson(roles);
            startGameMeta.setRankAutoUpload(rankAutoUpload);
            if (E(context, startGameMeta, eMUApkTableU)) {
                E2(context, startGameMeta);
            }
        }
    }

    public static void z(List<GameDetialBookTag> tipBeans, LinearLayout view, Context context) {
        if (tipBeans == null) {
            return;
        }
        try {
            view.removeAllViews();
            for (int i10 = 0; i10 < tipBeans.size(); i10++) {
                GameDetialBookTag gameDetialBookTag = tipBeans.get(i10);
                View viewInflate = LayoutInflater.from(context).inflate(R.layout.detial_tag_item_layout, (ViewGroup) null);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tipText);
                LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.itemBack);
                if (i10 == 0) {
                    linearLayout.setBackgroundResource(R.drawable.detial_tip_first);
                }
                textView.setText(gameDetialBookTag.getTitle());
                view.addView(viewInflate);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static int z0(PayTagInfo payTagInfo, String gameId) {
        if (payTagInfo != null) {
            return payTagInfo.getPay_game_amount();
        }
        return 0;
    }

    public static void z1(DownloadTask downloadTask, CollectionBeanSub bean) {
        if (downloadTask == null || bean == null) {
            return;
        }
        downloadTask.setDownload_source_url(bean.getDownload_source_url());
        downloadTask.setDownload_outside_url(bean.getDownload_outside_url());
        downloadTask.setDownload_original_switch(bean.getDownload_original_switch());
        downloadTask.setDownload_source_switch_v1(bean.getDownload_source_switch_v1());
        downloadTask.setDownload_source_switch_v2(bean.getDownload_source_switch_v2());
        downloadTask.setCpu_type(bean.getCpu_type());
    }

    private static boolean z2(Activity activity) {
        Exception e10;
        boolean zBooleanValue;
        try {
            TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes((int[]) Class.forName("com.android.internal.R$styleable").getField("Window").get(null));
            Method method = ActivityInfo.class.getMethod("isTranslucentOrFloating", TypedArray.class);
            method.setAccessible(true);
            zBooleanValue = ((Boolean) method.invoke(null, typedArrayObtainStyledAttributes)).booleanValue();
            try {
                method.setAccessible(false);
            } catch (Exception e11) {
                e10 = e11;
                e10.printStackTrace();
            }
        } catch (Exception e12) {
            e10 = e12;
            zBooleanValue = false;
        }
        return zBooleanValue;
    }

    public static void z3(TipNew showTip, View convertView) {
        try {
            TextView textView = (TextView) convertView.findViewById(R.id.moneyText);
            if (textView == null) {
                return;
            }
            if (showTip == null || showTip.getCoin() == null) {
                textView.setVisibility(4);
            } else {
                textView.setText(showTip.getCoin().getName());
                textView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void z4(Context context, String gameId) {
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData == null || accountData.getAccountType() == 2) {
            IntentUtil.getInstance().goMyAccountLoginActivity(context);
        } else {
            ((CommonService_.n0) CommonService_.P2(context).extra("paygameid", gameId)).a();
        }
    }
}
