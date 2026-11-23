package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaResponse;
import com.airbnb.lottie.LottieAnimationView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.customview.CircleDownloadProgressBar;
import com.join.mgps.customview.LightningView;
import com.join.mgps.db.tables.VideoWatchLogTable;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.JPushIntentData;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.dto.SNKGameInfoBean;
import com.join.mgps.dto.TipsInfoBean;
import com.join.mgps.dto.UninstallOnlineGameBean;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MGMainActivity_ extends MGMainActivity implements xc.a, zc.a, zc.b {
    public static final String INTENT_DATE_BEAN22_EXTRA = "intentDateBean22";
    public static final String INTENT_DATE_BEAN_EXTRA = "intentDateBean";
    public static final String J_PUSH_INTENT_DATA_EXTRA = "jPushIntentData";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver recivedShowToastReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.recivedShowToast(intent);
        }
    };
    private final IntentFilter intentFilter2_ = new IntentFilter();
    private final BroadcastReceiver getUpdateIntentReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.getUpdateIntent(intent);
        }
    };
    private final IntentFilter intentFilter3_ = new IntentFilter();
    private final BroadcastReceiver showupdateDialogReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.showupdateDialog(intent);
        }
    };
    private final IntentFilter intentFilter4_ = new IntentFilter();
    private final BroadcastReceiver backUpGameFinishReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.backUpGameFinish(intent);
        }
    };
    private final IntentFilter intentFilter5_ = new IntentFilter();
    private final BroadcastReceiver unreadnotifyReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.5

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f54377b = "gameId";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.unreadnotify((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("gameId"));
        }
    };
    private final IntentFilter intentFilter6_ = new IntentFilter();
    private final BroadcastReceiver recveidDownLiveResReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.recveidDownLiveRes(intent);
        }
    };
    private final IntentFilter intentFilter7_ = new IntentFilter();
    private final BroadcastReceiver recveidcoinfloatReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.recveidcoinfloat(intent);
        }
    };
    private final IntentFilter intentFilter8_ = new IntentFilter();
    private final BroadcastReceiver receivedInitAdVideoConfigReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.8
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.receivedInitAdVideoConfig(intent);
        }
    };
    private final IntentFilter intentFilter9_ = new IntentFilter();
    private final BroadcastReceiver downloaddelayReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.9
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.downloaddelay(intent);
        }
    };
    private final IntentFilter intentFilter10_ = new IntentFilter();
    private final BroadcastReceiver downloadPermissGetReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.10
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.downloadPermissGet(intent);
        }
    };
    private final IntentFilter intentFilter11_ = new IntentFilter();
    private final BroadcastReceiver accountChangeReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.11
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.accountChange(intent);
        }
    };
    private final IntentFilter intentFilter12_ = new IntentFilter();
    private final BroadcastReceiver afterLoginReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.12
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.afterLogin();
        }
    };
    private final IntentFilter intentFilter13_ = new IntentFilter();
    private final BroadcastReceiver emuOnResumeReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGMainActivity_.13

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f54372b = "packageName";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGMainActivity_.this.emuOnResume((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("packageName"));
        }
    };

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getArchivingCfg();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class a0 implements Runnable {
        a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.hideSplash();
        }
    }

    class a1 implements Runnable {
        a1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.refreshTabIcon();
        }
    }

    class a2 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ OnlineCouponConfigBean f54386b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54387c;

        a2(final OnlineCouponConfigBean val$data, final int val$localType) {
            this.f54386b = val$data;
            this.f54387c = val$localType;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showOnlineCouponDialog(this.f54386b, this.f54387c);
        }
    }

    class a3 extends org.androidannotations.api.a.c {
        a3(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.onresumData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getUserInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b0 implements Runnable {
        b0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showRedPoint();
        }
    }

    class b1 implements Runnable {
        b1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.serverConnectionException();
        }
    }

    class b2 implements Runnable {
        b2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.goToOnekeyLogin();
        }
    }

    class b3 extends org.androidannotations.api.a.c {
        b3(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.updateAndroidApp();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.touristLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c0 implements Runnable {
        c0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.hideRedPoint();
        }
    }

    class c1 implements Runnable {
        c1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showDownNotice();
        }
    }

    class c2 extends org.androidannotations.api.a.c {
        c2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.saveUUID();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c3 extends org.androidannotations.api.a.c {
        c3(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.setwifiStadu();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getUpdateFeature();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54401b;

        d0(final String val$content) {
            this.f54401b = val$content;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.requestWriteUUID(this.f54401b);
        }
    }

    class d1 implements Runnable {
        d1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.sendHomeDownInstallListPoint();
        }
    }

    class d2 extends org.androidannotations.api.a.c {
        d2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.initOM();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class d3 extends org.androidannotations.api.builder.a<d3> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54405a;

        public d3(Context context) {
            super(context, (Class<?>) MGMainActivity_.class);
        }

        public d3 a(IntentDateBean intentDateBean) {
            return (d3) super.extra("intentDateBean", intentDateBean);
        }

        public d3 b(IntentDateBean intentDateBean22) {
            return (d3) super.extra(MGMainActivity_.INTENT_DATE_BEAN22_EXTRA, intentDateBean22);
        }

        public d3 c(JPushIntentData jPushIntentData) {
            return (d3) super.extra(MGMainActivity_.J_PUSH_INTENT_DATA_EXTRA, jPushIntentData);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54405a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, requestCode);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, requestCode, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public d3(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MGMainActivity_.class);
            this.f54405a = fragment;
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getHomePopupAd();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54407b;

        e0(final boolean val$intentSplash) {
            this.f54407b = val$intentSplash;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.checkShowOldUserRecom(this.f54407b);
        }
    }

    class e1 implements Runnable {
        e1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.tokenFailure();
        }
    }

    class e2 extends org.androidannotations.api.a.c {
        e2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getRootUrl();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54411b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final boolean val$showSign) {
            super(id2, delay, serial);
            this.f54411b = val$showSign;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkSign(this.f54411b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f0 implements Runnable {
        f0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.checkRealName();
        }
    }

    class f1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54415c;

        f1(final DownloadTask val$downloadTask, final int val$from) {
            this.f54414b = val$downloadTask;
            this.f54415c = val$from;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.receiveStart(this.f54414b, this.f54415c);
        }
    }

    class f2 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f54417b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54418c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f2(String id2, long delay, String serial, final List val$listZip, final int val$style) {
            super(id2, delay, serial);
            this.f54417b = val$listZip;
            this.f54418c = val$style;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.initCheckSNKGame(this.f54417b, this.f54418c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.sign();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g0 implements Runnable {
        g0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.selectTableDelay();
        }
    }

    class g1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54422b;

        g1(final DownloadTask val$downloadTask) {
            this.f54422b = val$downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.receiveSuccess(this.f54422b);
        }
    }

    class g2 extends org.androidannotations.api.a.c {
        g2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.initJPushJoinDevice();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getBootPageData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f54426b;

        h0(final long val$range) {
            this.f54426b = val$range;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.startIntentOldUserRecom(this.f54426b);
        }
    }

    class h1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54428b;

        h1(final DownloadTask val$downloadTask) {
            this.f54428b = val$downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.receiveDelete(this.f54428b);
        }
    }

    class h2 extends org.androidannotations.api.a.c {
        h2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getRedPointData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupAdBean f54431b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final PopupAdBean val$adBean) {
            super(id2, delay, serial);
            this.f54431b = val$adBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.preLoad(this.f54431b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i0 implements Runnable {
        i0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.addShortCuts();
        }
    }

    class i1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54434b;

        i1(final String val$message) {
            this.f54434b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.error(this.f54434b);
        }
    }

    class i2 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54436b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i2(String id2, long delay, String serial, final boolean val$intentSplash) {
            super(id2, delay, serial);
            this.f54436b = val$intentSplash;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getData(this.f54436b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {
        j(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkSNKGame();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f54439b;

        j0(final CollectionBeanSub val$datas) {
            this.f54439b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showSharedGameDialog(this.f54439b);
        }
    }

    class j1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingAdCfgResponse.AdCfgInfo f54441b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f54442c;

        j1(final MessageCloudGamingAdCfgResponse.AdCfgInfo val$adCfgInfo, final boolean val$showSign) {
            this.f54441b = val$adCfgInfo;
            this.f54442c = val$showSign;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showCloudSign(this.f54441b, this.f54442c);
        }
    }

    class j2 extends org.androidannotations.api.a.c {
        j2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getEndGameConfig();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54445b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(String id2, long delay, String serial, final int val$style) {
            super(id2, delay, serial);
            this.f54445b = val$style;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getSNKGameInfo(this.f54445b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54447b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f54448c;

        k0(final int val$showType, final List val$tasks) {
            this.f54447b = val$showType;
            this.f54448c = val$tasks;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showInstallAppDialogActivity(this.f54447b, this.f54448c);
        }
    }

    class k1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult f54450b;

        k1(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult val$result) {
            this.f54450b = val$result;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateSignUI(this.f54450b);
        }
    }

    class k2 extends org.androidannotations.api.a.c {
        k2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getLogincfgs();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.initAdVideoConfig();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54454b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ UninstallOnlineGameBean f54455c;

        l0(final String val$gameId, final UninstallOnlineGameBean val$bean) {
            this.f54454b = val$gameId;
            this.f54455c = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.gotoInstallAppDialogV2Activity(this.f54454b, this.f54455c);
        }
    }

    class l1 implements Runnable {
        l1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showAdM();
        }
    }

    class l2 extends org.androidannotations.api.a.c {
        l2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getHaveGameList();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ VideoWatchLogTable f54459b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f54460c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final VideoWatchLogTable val$videoWatchLogTable, final boolean val$isOld) {
            super(id2, delay, serial);
            this.f54459b = val$videoWatchLogTable;
            this.f54460c = val$isOld;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.videoAdWatchLog(this.f54459b, this.f54460c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RewardBean f54462b;

        m0(final RewardBean val$rewardBean) {
            this.f54462b = val$rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.toastData(this.f54462b);
        }
    }

    class m1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupAdBean f54464b;

        m1(final PopupAdBean val$adBean) {
            this.f54464b = val$adBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showHomePopupAd(this.f54464b);
        }
    }

    class m2 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f54466b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m2(String id2, long delay, String serial, final List val$beans) {
            super(id2, delay, serial);
            this.f54466b = val$beans;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.savePurchasedList(this.f54466b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {
        n(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.handleVideoAdWatchLogRecord();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n0 implements Runnable {
        n0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.initViewS();
        }
    }

    class n1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54470b;

        n1(final int val$style) {
            this.f54470b = val$style;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.sanLocalGameIv(this.f54470b);
        }
    }

    class n2 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54472b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n2(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f54472b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getDetailData(this.f54472b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {
        o(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.afterLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54475b;

        o0(final String val$message) {
            this.f54475b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showMessage(this.f54475b);
        }
    }

    class o1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f54477b;

        o1(final List val$checkGameList) {
            this.f54477b = val$checkGameList;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showCheckData(this.f54477b);
        }
    }

    class o2 extends org.androidannotations.api.a.c {
        o2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkInstallApp();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54480b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String id2, long delay, String serial, final int val$fromAccountId) {
            super(id2, delay, serial);
            this.f54480b = val$fromAccountId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.reject(this.f54480b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p0 implements Runnable {
        p0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateHistory();
        }
    }

    class p1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54483b;

        p1(final String val$s) {
            this.f54483b = val$s;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showToast(this.f54483b);
        }
    }

    class p2 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54485b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f54486c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p2(String id2, long delay, String serial, final String val$gameId, final List val$downloadTasksNotInstall) {
            super(id2, delay, serial);
            this.f54485b = val$gameId;
            this.f54486c = val$downloadTasksNotInstall;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getUnInstallGameInfo(this.f54485b, this.f54486c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {
        q(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkClipBoard2();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54489b;

        q0(final int val$number) {
            this.f54489b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showBackupFinishDialog(this.f54489b);
        }
    }

    class q1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SNKGameInfoBean f54491b;

        q1(final SNKGameInfoBean val$resp) {
            this.f54491b = val$resp;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.setSNKGameData(this.f54491b);
        }
    }

    class q2 extends org.androidannotations.api.a.c {
        q2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.rewadCopper();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54494b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String id2, long delay, String serial, final boolean val$gotoLogin) {
            super(id2, delay, serial);
            this.f54494b = val$gotoLogin;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.preLogin(this.f54494b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f54496b;

        r0(final List val$downloadTasks) {
            this.f54496b = val$downloadTasks;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.getdownloadTaskUI(this.f54496b);
        }
    }

    class r1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.ad.d f54498b;

        r1(final com.join.mgps.ad.d val$video) {
            this.f54498b = val$video;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.delayLoadRewardAd(this.f54498b);
        }
    }

    class r2 extends org.androidannotations.api.a.c {
        r2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.init();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s extends org.androidannotations.api.a.c {
        s(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getAvailableLoginMethods();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54502b;

        s0(final String val$regeisterId) {
            this.f54502b = val$regeisterId;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.sendRegister(this.f54502b);
        }
    }

    class s1 implements Runnable {
        s1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.delayChangeAdshow();
        }
    }

    class s2 extends org.androidannotations.api.a.c {
        s2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkToken();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t extends org.androidannotations.api.a.c {
        t(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkQuark();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54507b;

        t0(final int val$downloadingNumber) {
            this.f54507b = val$downloadingNumber;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateLine(this.f54507b);
        }
    }

    class t1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54509b;

        t1(final DownloadTask val$downloadTaskN) {
            this.f54509b = val$downloadTaskN;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateStartGameTable(this.f54509b);
        }
    }

    class t2 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54511b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t2(String id2, long delay, String serial, final boolean val$hasPermiss) {
            super(id2, delay, serial);
            this.f54511b = val$hasPermiss;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.startBackups(this.f54511b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class u extends org.androidannotations.api.a.c {
        u(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.scanQuarkTask();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class u0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54514b;

        u0(final int val$number) {
            this.f54514b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateDownloadingPoint(this.f54514b);
        }
    }

    class u1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f54516b;

        u1(final View val$wihteBack) {
            this.f54516b = val$wihteBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.startAlphaBreathAnimation(this.f54516b);
        }
    }

    class u2 extends org.androidannotations.api.a.c {
        u2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.startLoadRecommendwifi();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity_.this.mg_recom_tabselectClicked();
        }
    }

    class v0 implements Runnable {
        v0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateNoOpenPoint();
        }
    }

    class v1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54521b;

        v1(final DownloadTask val$downloadTask) {
            this.f54521b = val$downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.delaydown(this.f54521b);
        }
    }

    class v2 extends org.androidannotations.api.a.c {
        v2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getdownloadTask();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity_.this.mg_category_tabselectClicked();
        }
    }

    class w0 implements Runnable {
        w0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateHidePoint();
        }
    }

    class w1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.event.w f54526b;

        w1(final com.join.mgps.event.w val$event) {
            this.f54526b = val$event;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.startGameRoom(this.f54526b);
        }
    }

    class w2 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54528b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w2(String id2, long delay, String serial, final String val$regeisterId) {
            super(id2, delay, serial);
            this.f54528b = val$regeisterId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.sendRigester(this.f54528b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity_.this.mg_chart_tabselectClicked();
        }
    }

    class x0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ VersionDto f54531b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f54532c;

        x0(final VersionDto val$versionDto, final boolean val$mandatory) {
            this.f54531b = val$versionDto;
            this.f54532c = val$mandatory;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showVersionDownLoadHint(this.f54531b, this.f54532c);
        }
    }

    class x1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaRequest f54534b;

        x1(final ArenaRequest val$request) {
            this.f54534b = val$request;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.showInputRoomPwdDialog(this.f54534b);
        }
    }

    class x2 extends org.androidannotations.api.a.c {
        x2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.checkDownloadNumber();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity_.this.mg_emulator_tabselect();
        }
    }

    class y0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TipsInfoBean f54538b;

        y0(final TipsInfoBean val$tipsInfoBean) {
            this.f54538b = val$tipsInfoBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.updateFindGameRetHot(this.f54538b);
        }
    }

    class y1 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f54540b;

        y1(final ArenaResponse val$response) {
            this.f54540b = val$response;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.handleFailure(this.f54540b);
        }
    }

    class y2 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54542b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y2(String id2, long delay, String serial, final boolean val$needPreLoad) {
            super(id2, delay, serial);
            this.f54542b = val$needPreLoad;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getVideoAdCfg(this.f54542b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity_.this.fightSelect();
        }
    }

    class z0 implements Runnable {
        z0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.startPlayVideo();
        }
    }

    class z1 implements Runnable {
        z1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity_.super.autoSendAdd();
        }
    }

    class z2 extends org.androidannotations.api.a.c {
        z2(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGMainActivity_.super.getEMUVersion();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        ((MGMainActivity) this).prefDef = new PrefDef_(this);
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        this.netConnectException = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.intentFilter1_.addAction("com.join.intent.showtoast");
        this.intentFilter2_.addAction(p5.a.K);
        this.intentFilter3_.addAction(p5.a.f96194f0);
        this.intentFilter4_.addAction(p5.a.f96231y);
        this.intentFilter5_.addAction(p5.a.f96203k);
        this.intentFilter6_.addAction(p5.a.E);
        this.intentFilter7_.addAction(p5.a.F);
        this.intentFilter8_.addAction(p5.a.f96226v0);
        this.intentFilter9_.addAction(p5.a.f96204k0);
        this.intentFilter10_.addAction(p5.a.f96206l0);
        this.intentFilter11_.addAction(p5.a.B);
        this.intentFilter12_.addAction("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        this.intentFilter13_.addAction(p5.a.f96192e0);
        registerReceiver(this.recivedShowToastReceiver_, this.intentFilter1_);
        registerReceiver(this.getUpdateIntentReceiver_, this.intentFilter2_);
        registerReceiver(this.showupdateDialogReceiver_, this.intentFilter3_);
        registerReceiver(this.backUpGameFinishReceiver_, this.intentFilter4_);
        registerReceiver(this.unreadnotifyReceiver_, this.intentFilter5_);
        registerReceiver(this.recveidDownLiveResReceiver_, this.intentFilter6_);
        registerReceiver(this.recveidcoinfloatReceiver_, this.intentFilter7_);
        registerReceiver(this.receivedInitAdVideoConfigReceiver_, this.intentFilter8_);
        registerReceiver(this.downloaddelayReceiver_, this.intentFilter9_);
        registerReceiver(this.downloadPermissGetReceiver_, this.intentFilter10_);
        registerReceiver(this.accountChangeReceiver_, this.intentFilter11_);
        registerReceiver(this.afterLoginReceiver_, this.intentFilter12_);
        registerReceiver(this.emuOnResumeReceiver_, this.intentFilter13_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentDateBean")) {
                this.intentDateBean = (IntentDateBean) extras.getSerializable("intentDateBean");
            }
            if (extras.containsKey(INTENT_DATE_BEAN22_EXTRA)) {
                this.intentDateBean22 = (IntentDateBean) extras.getSerializable(INTENT_DATE_BEAN22_EXTRA);
            }
            if (extras.containsKey(J_PUSH_INTENT_DATA_EXTRA)) {
                this.jPushIntentData = (JPushIntentData) extras.getSerializable(J_PUSH_INTENT_DATA_EXTRA);
            }
        }
    }

    public static d3 intent(Context context) {
        return new d3(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void addShortCuts() {
        org.androidannotations.api.b.e("", new i0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void afterLogin() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void autoSendAdd() {
        org.androidannotations.api.b.e("", new z1(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkClipBoard2() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkDownloadNumber() {
        org.androidannotations.api.a.l(new x2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkInstallApp() {
        org.androidannotations.api.a.l(new o2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkQuark() {
        org.androidannotations.api.a.l(new t("", 1500L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkRealName() {
        org.androidannotations.api.b.e("", new f0(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkSNKGame() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkShowOldUserRecom(final boolean intentSplash) {
        org.androidannotations.api.b.e("", new e0(intentSplash), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkSign(final boolean showSign) {
        org.androidannotations.api.a.l(new f("", 1200L, "", showSign));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void checkToken() {
        org.androidannotations.api.a.l(new s2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void delayChangeAdshow() {
        org.androidannotations.api.b.e("", new s1(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void delayLoadRewardAd(final com.join.mgps.ad.d video) {
        org.androidannotations.api.b.e("", new r1(video), 300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void delaydown(final DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new v1(downloadTask), BaseCloudFileManager.ACK_TIMEOUT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void error(final String message) {
        org.androidannotations.api.b.e("", new i1(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getArchivingCfg() {
        org.androidannotations.api.a.l(new a("", 500L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getAvailableLoginMethods() {
        org.androidannotations.api.a.l(new s("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getBootPageData() {
        org.androidannotations.api.a.l(new h("", 1500L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getData(final boolean intentSplash) {
        org.androidannotations.api.a.l(new i2("", 1000L, "", intentSplash));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getDetailData(final String gameId) {
        org.androidannotations.api.a.l(new n2("", 0L, "", gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getEMUVersion() {
        org.androidannotations.api.a.l(new z2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getEndGameConfig() {
        org.androidannotations.api.a.l(new j2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getHaveGameList() {
        org.androidannotations.api.a.l(new l2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getHomePopupAd() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getLogincfgs() {
        org.androidannotations.api.a.l(new k2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getRedPointData() {
        org.androidannotations.api.a.l(new h2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getRootUrl() {
        org.androidannotations.api.a.l(new e2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getSNKGameInfo(final int style) {
        org.androidannotations.api.a.l(new k("", 0L, "", style));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getUnInstallGameInfo(final String gameId, final List<DownloadTask> downloadTasksNotInstall) {
        org.androidannotations.api.a.l(new p2("", 0L, "", gameId, downloadTasksNotInstall));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getUpdateFeature() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getUserInfo() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getVideoAdCfg(final boolean needPreLoad) {
        org.androidannotations.api.a.l(new y2("", 0L, "", needPreLoad));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getdownloadTask() {
        org.androidannotations.api.a.l(new v2("", 1000L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void getdownloadTaskUI(final List<DownloadTask> downloadTasks) {
        org.androidannotations.api.b.e("", new r0(downloadTasks), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void goToOnekeyLogin() {
        org.androidannotations.api.b.e("", new b2(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void gotoInstallAppDialogV2Activity(final String gameId, final UninstallOnlineGameBean bean) {
        org.androidannotations.api.b.e("", new l0(gameId, bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void handleFailure(final ArenaResponse response) {
        org.androidannotations.api.b.e("", new y1(response), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void handleVideoAdWatchLogRecord() {
        org.androidannotations.api.a.l(new n("", 5000L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void hideRedPoint() {
        org.androidannotations.api.b.e("", new c0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void hideSplash() {
        org.androidannotations.api.b.e("", new a0(), 1300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void init() {
        org.androidannotations.api.a.l(new r2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void initAdVideoConfig() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void initCheckSNKGame(final List<String> listZip, final int style) {
        org.androidannotations.api.a.l(new f2("", 0L, "", listZip, style));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void initJPushJoinDevice() {
        org.androidannotations.api.a.l(new g2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void initOM() {
        org.androidannotations.api.a.l(new d2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void initViewS() {
        org.androidannotations.api.b.e("", new n0(), 500L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.activity.MGMainActivity, com.join.android.app.common.servcie.DownloadBaseActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.mg_mainlayout);
    }

    @Override // com.join.mgps.activity.MGMainActivity, com.join.android.app.common.servcie.DownloadBaseActivity, com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.recivedShowToastReceiver_);
        unregisterReceiver(this.getUpdateIntentReceiver_);
        unregisterReceiver(this.showupdateDialogReceiver_);
        unregisterReceiver(this.backUpGameFinishReceiver_);
        unregisterReceiver(this.unreadnotifyReceiver_);
        unregisterReceiver(this.recveidDownLiveResReceiver_);
        unregisterReceiver(this.recveidcoinfloatReceiver_);
        unregisterReceiver(this.receivedInitAdVideoConfigReceiver_);
        unregisterReceiver(this.downloaddelayReceiver_);
        unregisterReceiver(this.downloadPermissGetReceiver_);
        unregisterReceiver(this.accountChangeReceiver_);
        unregisterReceiver(this.afterLoginReceiver_);
        unregisterReceiver(this.emuOnResumeReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.numberInTab = (LightningView) hasViews.internalFindViewById(R.id.numberInTab);
        this.cdp_down_progress = (CircleDownloadProgressBar) hasViews.internalFindViewById(R.id.cdp_down_progress);
        this.downlodingGameIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.downlodingGameIcon);
        this.splash = (ImageView) hasViews.internalFindViewById(R.id.splash);
        this.bottom = (LinearLayout) hasViews.internalFindViewById(R.id.bottom);
        this.mg_recom_tabselect = (RelativeLayout) hasViews.internalFindViewById(R.id.mg_recom_tabselect);
        this.mg_category_tabselect = (LinearLayout) hasViews.internalFindViewById(R.id.mg_category_tabselect);
        this.mg_emulator_tabselect = (RelativeLayout) hasViews.internalFindViewById(R.id.mg_emulator_tabselect);
        this.mg_recom_text = (TextView) hasViews.internalFindViewById(R.id.mg_recom_text);
        this.mg_category_text = (TextView) hasViews.internalFindViewById(R.id.mg_category_text);
        this.mg_chart_image = (ImageView) hasViews.internalFindViewById(R.id.mg_chart_image);
        this.rl_home_tab_game = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_home_tab_game);
        this.gifIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.gifIcon);
        this.mg_chart_text = (TextView) hasViews.internalFindViewById(R.id.mg_chart_text);
        this.mg_emulator_text = (TextView) hasViews.internalFindViewById(R.id.mg_emulator_text);
        this.fightText = (TextView) hasViews.internalFindViewById(R.id.fightText);
        this.lottie_mg_emulator = (LottieAnimationView) hasViews.internalFindViewById(R.id.lottie_mg_emulator);
        this.lottie_mg_recom = (LottieAnimationView) hasViews.internalFindViewById(R.id.lottie_mg_recom);
        this.lottie_mg_chart = (LottieAnimationView) hasViews.internalFindViewById(R.id.lottie_mg_chart);
        this.lottie_mg_fight = (LottieAnimationView) hasViews.internalFindViewById(R.id.lottie_mg_fight);
        this.lottie_mg_category = (LottieAnimationView) hasViews.internalFindViewById(R.id.lottie_mg_category);
        this.red_point = (TextView) hasViews.internalFindViewById(R.id.red_point);
        this.fightSelect = (RelativeLayout) hasViews.internalFindViewById(R.id.fightSelect);
        this.mg_chart_tabselect = (RelativeLayout) hasViews.internalFindViewById(R.id.mg_chart_tabselect);
        this.unreadMessageBadge = (TextView) hasViews.internalFindViewById(R.id.unreadMessageBadge);
        this.home_tab_monkey_layout = (RelativeLayout) hasViews.internalFindViewById(R.id.home_tab_monkey_layout);
        this.home_tab_default_layout = (LinearLayout) hasViews.internalFindViewById(R.id.home_tab_default_layout);
        this.home_tab_monkey_image = (ImageView) hasViews.internalFindViewById(R.id.home_tab_monkey_image);
        this.home_tab_huojian_image = (ImageView) hasViews.internalFindViewById(R.id.home_tab_huojian_image);
        this.imageView36 = (ImageView) hasViews.internalFindViewById(R.id.imageView36);
        this.layout_others = (RelativeLayout) hasViews.internalFindViewById(R.id.layout_others);
        this.discoverNormal = (LinearLayout) hasViews.internalFindViewById(R.id.discoverNormal);
        this.discoverMessage = (ImageView) hasViews.internalFindViewById(R.id.discoverMessage);
        this.discoverHuojian = (ImageView) hasViews.internalFindViewById(R.id.discoverHuojian);
        this.notice_text = (TextView) hasViews.internalFindViewById(R.id.notice_text);
        this.dialogBack = (TextView) hasViews.internalFindViewById(R.id.dialogBack);
        this.notice_layout = (LinearLayout) hasViews.internalFindViewById(R.id.notice_layout);
        this.bigCenterRound = (TextView) hasViews.internalFindViewById(R.id.bigCenterRound);
        this.miniGameBadge = (TextView) hasViews.internalFindViewById(R.id.miniGameBadge);
        this.endGameBadge = (TextView) hasViews.internalFindViewById(R.id.endGameBadge);
        this.root = (RelativeLayout) hasViews.internalFindViewById(R.id.root);
        RelativeLayout relativeLayout = this.mg_recom_tabselect;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new v());
        }
        LinearLayout linearLayout = this.mg_category_tabselect;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new w());
        }
        RelativeLayout relativeLayout2 = this.mg_chart_tabselect;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new x());
        }
        RelativeLayout relativeLayout3 = this.mg_emulator_tabselect;
        if (relativeLayout3 != null) {
            relativeLayout3.setOnClickListener(new y());
        }
        RelativeLayout relativeLayout4 = this.fightSelect;
        if (relativeLayout4 != null) {
            relativeLayout4.setOnClickListener(new z());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void onresumData() {
        org.androidannotations.api.a.l(new a3("", 1000L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void preLoad(final PopupAdBean adBean) {
        org.androidannotations.api.a.l(new i("", 0L, "", adBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void preLogin(final boolean gotoLogin) {
        org.androidannotations.api.a.l(new r("", 0L, "", gotoLogin));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void receiveDelete(final DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new h1(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void receiveStart(final DownloadTask downloadTask, final int from) {
        org.androidannotations.api.b.e("", new f1(downloadTask, from), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void receiveSuccess(final DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new g1(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void refreshTabIcon() {
        org.androidannotations.api.b.e("", new a1(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void reject(final int fromAccountId) {
        org.androidannotations.api.a.l(new p("", 0L, "", fromAccountId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void requestWriteUUID(final String content) {
        org.androidannotations.api.b.e("", new d0(content), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void rewadCopper() {
        org.androidannotations.api.a.l(new q2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void sanLocalGameIv(final int style) {
        org.androidannotations.api.b.e("", new n1(style), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void savePurchasedList(final List<AppBean> beans) {
        org.androidannotations.api.a.l(new m2("", 0L, "", beans));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void saveUUID() {
        org.androidannotations.api.a.l(new c2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void scanQuarkTask() {
        org.androidannotations.api.a.l(new u("", BaseCloudFileManager.ACK_TIMEOUT, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void selectTableDelay() {
        org.androidannotations.api.b.e("", new g0(), 800L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void sendHomeDownInstallListPoint() {
        org.androidannotations.api.b.e("", new d1(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void sendRegister(final String regeisterId) {
        org.androidannotations.api.b.e("", new s0(regeisterId), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void sendRigester(final String regeisterId) {
        org.androidannotations.api.a.l(new w2("", 0L, "", regeisterId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void serverConnectionException() {
        org.androidannotations.api.b.e("", new b1(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void setSNKGameData(final SNKGameInfoBean resp) {
        org.androidannotations.api.b.e("", new q1(resp), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void setwifiStadu() {
        org.androidannotations.api.a.l(new c3("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showAdM() {
        org.androidannotations.api.b.e("", new l1(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showBackupFinishDialog(final int number) {
        org.androidannotations.api.b.e("", new q0(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showCheckData(final List<CollectionBeanSub> checkGameList) {
        org.androidannotations.api.b.e("", new o1(checkGameList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showCloudSign(final MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, final boolean showSign) {
        org.androidannotations.api.b.e("", new j1(adCfgInfo, showSign), 800L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showDownNotice() {
        org.androidannotations.api.b.e("", new c1(), 1500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showHomePopupAd(final PopupAdBean adBean) {
        org.androidannotations.api.b.e("", new m1(adBean), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showInputRoomPwdDialog(final ArenaRequest request) {
        org.androidannotations.api.b.e("", new x1(request), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showInstallAppDialogActivity(final int showType, final List<DownloadTask> tasks) {
        org.androidannotations.api.b.e("", new k0(showType, tasks), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new o0(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showOnlineCouponDialog(final OnlineCouponConfigBean data, final int localType) {
        org.androidannotations.api.b.e("", new a2(data, localType), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showRedPoint() {
        org.androidannotations.api.b.e("", new b0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showSharedGameDialog(final CollectionBeanSub datas) {
        org.androidannotations.api.b.e("", new j0(datas), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void showToast(final String s10) {
        org.androidannotations.api.b.e("", new p1(s10), 0L);
    }

    @Override // com.join.mgps.activity.MGMainActivity
    public void showVersionDownLoadHint(final VersionDto versionDto, final boolean mandatory) {
        org.androidannotations.api.b.e("", new x0(versionDto, mandatory), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void sign() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startAlphaBreathAnimation(final View wihteBack) {
        org.androidannotations.api.b.e("", new u1(wihteBack), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startBackups(final boolean hasPermiss) {
        org.androidannotations.api.a.l(new t2("", 2000L, "", hasPermiss));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startGameRoom(final com.join.mgps.event.w event) {
        org.androidannotations.api.b.e("", new w1(event), 200L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startIntentOldUserRecom(final long range) {
        org.androidannotations.api.b.e("", new h0(range), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startLoadRecommendwifi() {
        org.androidannotations.api.a.l(new u2("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void startPlayVideo() {
        org.androidannotations.api.b.e("", new z0(), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void toastData(final RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new m0(rewardBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void tokenFailure() {
        org.androidannotations.api.b.e("", new e1(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void touristLogin() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateAndroidApp() {
        org.androidannotations.api.a.l(new b3("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateDownloadingPoint(final int number) {
        org.androidannotations.api.b.e("", new u0(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateFindGameRetHot(final TipsInfoBean tipsInfoBean) {
        org.androidannotations.api.b.e("", new y0(tipsInfoBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateHidePoint() {
        org.androidannotations.api.b.e("", new w0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateHistory() {
        org.androidannotations.api.b.e("", new p0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateLine(final int downloadingNumber) {
        org.androidannotations.api.b.e("", new t0(downloadingNumber), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateNoOpenPoint() {
        org.androidannotations.api.b.e("", new v0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateSignUI(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult result) {
        org.androidannotations.api.b.e("", new k1(result), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void updateStartGameTable(final DownloadTask downloadTaskN) {
        org.androidannotations.api.b.e("", new t1(downloadTaskN), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainActivity
    public void videoAdWatchLog(final VideoWatchLogTable videoWatchLogTable, final boolean isOld) {
        org.androidannotations.api.a.l(new m("", 0L, "", videoWatchLogTable, isOld));
    }

    public static d3 intent(Fragment supportFragment) {
        return new d3(supportFragment);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
