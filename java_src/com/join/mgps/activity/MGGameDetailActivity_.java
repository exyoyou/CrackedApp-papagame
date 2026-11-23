package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.DetailResultBeanV3;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GameVoucherBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MGGameDetailActivity_ extends MGGameDetailActivity implements xc.a, zc.a, zc.b {
    public static final String EXT_BEAN_EXTRA = "extBean";
    public static final String INTENTDATE_EXTRA = "intentdate";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onpayFinishReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGGameDetailActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGGameDetailActivity_.this.onpayFinish(intent);
        }
    };
    private final IntentFilter intentFilter2_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MGGameDetailActivity_.2

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f54175b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGGameDetailActivity_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.relodingimag();
        }
    }

    class a0 implements Runnable {
        a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showInstallButn();
        }
    }

    class a1 implements View.OnClickListener {
        a1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.search_detial_back();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.setNetwork();
        }
    }

    class b0 implements Runnable {
        b0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateButn();
        }
    }

    class b1 extends org.androidannotations.api.a.c {
        b1(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.checkDownlodingNumber();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.back_image();
        }
    }

    class c0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54184b;

        c0(final int val$downloadingNumber) {
            this.f54184b = val$downloadingNumber;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateLine(this.f54184b);
        }
    }

    class c1 extends org.androidannotations.api.a.c {
        c1(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.title_bar_layout();
        }
    }

    class d0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54188b;

        d0(final int val$number) {
            this.f54188b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateDownloadingPoint(this.f54188b);
        }
    }

    class d1 extends org.androidannotations.api.a.c {
        d1(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.getGameFromList();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.backBtn();
        }
    }

    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.downloadLayout();
        }
    }

    class e1 extends org.androidannotations.api.a.c {
        e1(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.AddGameToFrom();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.title_normal_search_img();
        }
    }

    class f0 implements Runnable {
        f0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateNoOpenPoint();
        }
    }

    class f1 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54196b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f54197c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ MGGameDetailActivity.w f54198d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f1(String id2, long delay, String serial, final String val$id, final String val$game_id, final MGGameDetailActivity.w val$holder) {
            super(id2, delay, serial);
            this.f54196b = val$id;
            this.f54197c = val$game_id;
            this.f54198d = val$holder;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.DelectGame(this.f54196b, this.f54197c, this.f54198d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.title_normal_download_cdv();
        }
    }

    class g0 implements Runnable {
        g0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateDownloadView();
        }
    }

    class g1 implements View.OnClickListener {
        g1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.share();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.hideDialog();
        }
    }

    class h0 implements Runnable {
        h0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showSvipGiftDialog();
        }
    }

    class h1 implements View.OnClickListener {
        h1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.progress_layout();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.refreshVoucherData();
        }
    }

    class i0 implements Runnable {
        i0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showVipDialog();
        }
    }

    class i1 implements View.OnClickListener {
        i1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.instalButtomButn();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f54209b;

        j(final GiftPackageDataInfoBean val$bean) {
            this.f54209b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showDialog(this.f54209b);
        }
    }

    class j0 implements Runnable {
        j0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.Refresh();
        }
    }

    class j1 implements View.OnClickListener {
        j1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.downloadRLayout();
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f54213b;

        k(final GiftPackageDataOperationBean val$bean) {
            this.f54213b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showDialog(this.f54213b);
        }
    }

    class k0 implements Runnable {
        k0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateListHeadAndFoot();
        }
    }

    public static class k1 extends org.androidannotations.api.builder.a<k1> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54216a;

        public k1(Context context) {
            super(context, (Class<?>) MGGameDetailActivity_.class);
        }

        public k1 a(ExtBean extBean) {
            return (k1) super.extra("extBean", extBean);
        }

        public k1 b(IntentDateBean intentdate) {
            return (k1) super.extra("intentdate", intentdate);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54216a;
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

        public k1(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MGGameDetailActivity_.class);
            this.f54216a = fragment;
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54217b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f54218c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f54219d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f54220e;

        l(final String val$msg, final boolean val$b, final int val$position, final int val$type) {
            this.f54217b = val$msg;
            this.f54218c = val$b;
            this.f54219d = val$position;
            this.f54220e = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.resultShow(this.f54217b, this.f54218c, this.f54219d, this.f54220e);
        }
    }

    class l0 implements Runnable {
        l0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.upNomore();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentResponse f54223b;

        m(final CommentResponse val$bean) {
            this.f54223b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.resultShow2(this.f54223b);
        }
    }

    class m0 implements Runnable {
        m0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.hideI();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54226b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54227c;

        n(final int val$position, final int val$i) {
            this.f54226b = val$position;
            this.f54227c = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.checkReset(this.f54226b, this.f54227c);
        }
    }

    class n0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBean f54229b;

        n0(final GameFromPopoWinBean val$data) {
            this.f54229b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.addData(this.f54229b);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54231b;

        o(final boolean val$needRetry) {
            this.f54231b = val$needRetry;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updatePay(this.f54231b);
        }
    }

    class o0 implements Runnable {
        o0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.cleanData();
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResultMainBean f54234b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54235c;

        p(final ResultMainBean val$result, final int val$type) {
            this.f54234b = val$result;
            this.f54235c = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateTitleButn(this.f54234b, this.f54235c);
        }
    }

    class p0 implements View.OnClickListener {
        p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGGameDetailActivity_.this.detial_search_layout();
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.onPraiseFail();
        }
    }

    class q0 implements Runnable {
        q0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.initPopowindow();
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.updateAdapter();
        }
    }

    class r0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameVoucherBean f54241b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r0(String id2, long delay, String serial, final GameVoucherBean val$mBean) {
            super(id2, delay, serial);
            this.f54241b = val$mBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.getVoucher(this.f54241b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54243b;

        s(final String val$message) {
            this.f54243b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showToast(this.f54243b);
        }
    }

    class s0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f54245b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        s0(String id2, long delay, String serial, final GiftPackageDataInfoBean val$bean) {
            super(id2, delay, serial);
            this.f54245b = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.getGiftPackageOperation(this.f54245b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.intentLogin();
        }
    }

    class t0 extends org.androidannotations.api.a.c {
        t0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.getToken();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f54249b;

        u(final List val$commitDataBeans) {
            this.f54249b = val$commitDataBeans;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showMain((List<CommentBaseBean>) this.f54249b);
        }
    }

    class u0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f54251b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54252c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f54253d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        u0(String id2, long delay, String serial, final CommentBaseBean val$bean, final int val$position, final int val$type) {
            super(id2, delay, serial);
            this.f54251b = val$bean;
            this.f54252c = val$position;
            this.f54253d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.onPraiseX(this.f54251b, this.f54252c, this.f54253d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class v implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBeanV3 f54255b;

        v(final DetailResultBeanV3 val$detailResultData) {
            this.f54255b = val$detailResultData;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showMain(this.f54255b);
        }
    }

    class v0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f54257b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54258c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f54259d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        v0(String id2, long delay, String serial, final CommentBaseBean val$bean, final int val$position, final int val$type) {
            super(id2, delay, serial);
            this.f54257b = val$bean;
            this.f54258c = val$position;
            this.f54259d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.onUnPraiseX(this.f54257b, this.f54258c, this.f54259d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class w implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBeanV3 f54261b;

        w(final DetailResultBeanV3 val$detailResultData) {
            this.f54261b = val$detailResultData;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.setData(this.f54261b);
        }
    }

    class w0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54263b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w0(String id2, long delay, String serial, final int val$type) {
            super(id2, delay, serial);
            this.f54263b = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.changeGameFollow(this.f54263b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showLoding();
        }
    }

    class x0 extends org.androidannotations.api.a.c {
        x0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.getDetailData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showLodingFailed();
        }
    }

    class y0 extends org.androidannotations.api.a.c {
        y0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.getGameCommentList();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGGameDetailActivity_.super.showProgress();
        }
    }

    class z0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f54270b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        z0(String id2, long delay, String serial, final InformationCommentBean val$bean) {
            super(id2, delay, serial);
            this.f54270b = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGGameDetailActivity_.super.postPraised(this.f54270b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction("com.join,mgps.sim.sdkgamePayfinish");
        this.intentFilter2_.addAction(p5.a.I);
        this.intentFilter2_.addAction(p5.a.G);
        registerReceiver(this.onpayFinishReceiver_, this.intentFilter1_);
        registerReceiver(this.onPayGameSuccessReceiver_, this.intentFilter2_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentdate")) {
                this.intentdate = (IntentDateBean) extras.getSerializable("intentdate");
            }
            if (extras.containsKey("extBean")) {
                this.extBean = (ExtBean) extras.getSerializable("extBean");
            }
        }
    }

    public static k1 intent(Context context) {
        return new k1(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void AddGameToFrom() {
        org.androidannotations.api.a.l(new e1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void DelectGame(final String id2, final String game_id, final MGGameDetailActivity.w holder) {
        org.androidannotations.api.a.l(new f1("", 0L, "", id2, game_id, holder));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void Refresh() {
        org.androidannotations.api.b.e("", new j0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void addData(final GameFromPopoWinBean data) {
        org.androidannotations.api.b.e("", new n0(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void changeGameFollow(final int type) {
        org.androidannotations.api.a.l(new w0("", 0L, "", type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void checkDownlodingNumber() {
        org.androidannotations.api.a.l(new b1("", 0L, ""));
    }

    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void checkReset(final int position, final int i10) {
        org.androidannotations.api.b.e("", new n(position, i10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void cleanData() {
        org.androidannotations.api.b.e("", new o0(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void getDetailData() {
        org.androidannotations.api.a.l(new x0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new c1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void getGameCommentList() {
        org.androidannotations.api.a.l(new y0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void getGameFromList() {
        org.androidannotations.api.a.l(new d1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void getGiftPackageOperation(final GiftPackageDataInfoBean bean) {
        org.androidannotations.api.a.l(new s0("", 0L, "", bean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void getToken() {
        org.androidannotations.api.a.l(new t0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void getVoucher(final GameVoucherBean mBean) {
        org.androidannotations.api.a.l(new r0("", 0L, "", mBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void hideDialog() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void hideI() {
        org.androidannotations.api.b.e("", new m0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void initPopowindow() {
        org.androidannotations.api.b.e("", new q0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void intentLogin() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.mg_game_detail_layout);
    }

    @Override // com.join.mgps.activity.MGGameDetailActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onpayFinishReceiver_);
        unregisterReceiver(this.onPayGameSuccessReceiver_);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void onPraiseFail() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void onPraiseX(final CommentBaseBean bean, final int position, final int type) {
        org.androidannotations.api.a.l(new u0("", 0L, "", bean, position, type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void onUnPraiseX(final CommentBaseBean bean, final int position, final int type) {
        org.androidannotations.api.a.l(new v0("", 0L, "", bean, position, type));
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.topBarline = hasViews.internalFindViewById(R.id.topBarline);
        this.title_bar_layout = (RelativeLayout) hasViews.internalFindViewById(R.id.title_bar_layout);
        this.downloadRLayout2 = (RelativeLayout) hasViews.internalFindViewById(R.id.downloadRLayout2);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        ((MGGameDetailActivity) this).loading = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.gameDescribeInit = (TextView) hasViews.internalFindViewById(R.id.gameDescribeInit);
        this.gameListView = (ListView) hasViews.internalFindViewById(R.id.gameListView);
        this.detialDownBottom = (RelativeLayout) hasViews.internalFindViewById(R.id.detialDownBottom);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.instalButtomButn = (TextView) hasViews.internalFindViewById(R.id.instalButtomButn);
        this.progressbarLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.progressbarLayout);
        this.instalbutnLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.instalbutnLayout);
        this.butn_showdownload = (ImageView) hasViews.internalFindViewById(R.id.butn_showdownload);
        this.percent = (TextView) hasViews.internalFindViewById(R.id.percent);
        this.butnProgressBar = (ProgressBar) hasViews.internalFindViewById(R.id.butnProgressBar);
        this.downloadLayout = (LinearLayout) hasViews.internalFindViewById(R.id.downloadLayout);
        this.scroll_text = (TextView) hasViews.internalFindViewById(R.id.scroll_text);
        this.biground = (TextView) hasViews.internalFindViewById(R.id.biground);
        this.scroll_text_layout = (ScrollTextViewLayout) hasViews.internalFindViewById(R.id.scroll_text_layout);
        this.hasNewFinishedGameImage = (ImageView) hasViews.internalFindViewById(R.id.hasNewFinishedGameImage);
        this.downloadLine = (ImageView) hasViews.internalFindViewById(R.id.downloadLine);
        this.imageLoading = (ImageView) hasViews.internalFindViewById(R.id.imageLoading);
        this.search_detial_image = (ImageView) hasViews.internalFindViewById(R.id.search_detial_image);
        this.title_normal_search_img = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.linebutn = hasViews.internalFindViewById(R.id.linebutn);
        this.share = (ImageView) hasViews.internalFindViewById(R.id.share);
        this.container = (RelativeLayout) hasViews.internalFindViewById(R.id.container);
        this.backBtn = (ImageView) hasViews.internalFindViewById(R.id.backBtn);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.detial_search_layout);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.search_detial_back);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.progress_layout);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.downloadRLayout);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.setNetwork);
        LinearLayout linearLayout = this.downloadLayout;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new e0());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new p0());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new a1());
        }
        ImageView imageView = this.share;
        if (imageView != null) {
            imageView.setOnClickListener(new g1());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new h1());
        }
        TextView textView = this.instalButtomButn;
        if (textView != null) {
            textView.setOnClickListener(new i1());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new j1());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new a());
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new b());
        }
        ImageView imageView2 = this.back_image;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new c());
        }
        RelativeLayout relativeLayout = this.title_bar_layout;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new d());
        }
        ImageView imageView3 = this.backBtn;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new e());
        }
        ImageView imageView4 = this.title_normal_search_img;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new f());
        }
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new g());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void postPraised(final InformationCommentBean bean) {
        org.androidannotations.api.a.l(new z0("", 0L, "", bean));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void refreshVoucherData() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void resultShow(final String msg, final boolean b10, final int position, final int type) {
        org.androidannotations.api.b.e("", new l(msg, b10, position, type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void resultShow2(final CommentResponse bean) {
        org.androidannotations.api.b.e("", new m(bean), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void setData(final DetailResultBeanV3 detailResultData) {
        org.androidannotations.api.b.e("", new w(detailResultData), 300L);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showDialog(final GiftPackageDataInfoBean bean) {
        org.androidannotations.api.b.e("", new j(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new a0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showMain(final List<CommentBaseBean> commitDataBeans) {
        org.androidannotations.api.b.e("", new u(commitDataBeans), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showProgress() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showSvipGiftDialog() {
        org.androidannotations.api.b.e("", new h0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showToast(final String message) {
        org.androidannotations.api.b.e("", new s(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showVipDialog() {
        org.androidannotations.api.b.e("", new i0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void upNomore() {
        org.androidannotations.api.b.e("", new l0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateAdapter() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateButn() {
        org.androidannotations.api.b.e("", new b0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new g0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateDownloadingPoint(final int number) {
        org.androidannotations.api.b.e("", new d0(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateLine(final int downloadingNumber) {
        org.androidannotations.api.b.e("", new c0(downloadingNumber), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateListHeadAndFoot() {
        org.androidannotations.api.b.e("", new k0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateNoOpenPoint() {
        org.androidannotations.api.b.e("", new f0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updatePay(final boolean needRetry) {
        org.androidannotations.api.b.e("", new o(needRetry), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void updateTitleButn(final ResultMainBean result, final int type) {
        org.androidannotations.api.b.e("", new p(result, type), 0L);
    }

    public static k1 intent(Fragment supportFragment) {
        return new k1(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showDialog(final GiftPackageDataOperationBean bean) {
        org.androidannotations.api.b.e("", new k(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGGameDetailActivity
    public void showMain(final DetailResultBeanV3 detailResultData) {
        org.androidannotations.api.b.e("", new v(detailResultData), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
