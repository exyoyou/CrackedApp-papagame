package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.PullableScrollView;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.RecomCentrebean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class AccountCenterActivity_ extends AccountCenterActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver updateInfoReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.AccountCenterActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AccountCenterActivity_.this.updateInfo(context);
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.downloads();
        }
    }

    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.mMessages();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.feedback();
        }
    }

    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.paCreditCenter();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.papaMore();
        }
    }

    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.joystick();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.back_layout();
        }
    }

    public static class d0 extends org.androidannotations.api.builder.a<d0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50250a;

        public d0(Context context) {
            super(context, (Class<?>) AccountCenterActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50250a;
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

        public d0(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) AccountCenterActivity_.class);
            this.f50250a = fragment;
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.signIn();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.myVoucher();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.mBrass();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.btn_face_transfer();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.tools();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecomCentrebean f50256b;

        j(final RecomCentrebean val$recomCentrebean) {
            this.f50256b = val$recomCentrebean;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.initUpdate(this.f50256b);
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.showPabiIntent();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.tokenFailure();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.refreshViews();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50261b;

        n(final int val$number) {
            this.f50261b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.checkMessageInfoSuccess(this.f50261b);
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.notifyLoginSuccess();
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50264b;

        p(final String val$message) {
            this.f50264b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.error(this.f50264b);
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50266b;

        q(final String val$message) {
            this.f50266b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountCenterActivity_.super.showMessage(this.f50266b);
        }
    }

    class r extends org.androidannotations.api.a.c {
        r(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountCenterActivity_.super.newUpdate();
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
                AccountCenterActivity_.super.checkUserInfo();
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
                AccountCenterActivity_.super.pullMyProfileInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.accountCenterImageView();
        }
    }

    class v extends org.androidannotations.api.a.c {
        v(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountCenterActivity_.super.touristLogin();
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
            AccountCenterActivity_.this.liveLayout();
        }
    }

    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.back_image();
        }
    }

    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.mGiftBox();
        }
    }

    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountCenterActivity_.this.mPosts();
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        this.intentFilter1_.addAction(p5.a.B);
        registerReceiver(this.updateInfoReceiver_, this.intentFilter1_);
    }

    public static d0 intent(Context context) {
        return new d0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void checkMessageInfoSuccess(final int number) {
        org.androidannotations.api.b.e("", new n(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void checkUserInfo() {
        org.androidannotations.api.a.l(new s("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void error(final String message) {
        org.androidannotations.api.b.e("", new p(message), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void initUpdate(final RecomCentrebean recomCentrebean) {
        org.androidannotations.api.b.e("", new j(recomCentrebean), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void newUpdate() {
        org.androidannotations.api.a.l(new r("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void notifyLoginSuccess() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.mg_account_center);
    }

    @Override // com.join.mgps.activity.AccountCenterActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.updateInfoReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.avatar = (SimpleDraweeView) hasViews.internalFindViewById(R.id.avatar);
        this.levelBadge = (TextView) hasViews.internalFindViewById(R.id.levelBadge);
        this.nickname = (TextView) hasViews.internalFindViewById(R.id.nickname);
        this.account = (TextView) hasViews.internalFindViewById(R.id.account);
        this.tourTip = (TextView) hasViews.internalFindViewById(R.id.tourTip);
        this.vip_lay = (LinearLayout) hasViews.internalFindViewById(R.id.vip_lay);
        this.papaBrasss = (TextView) hasViews.internalFindViewById(R.id.papaBrasss);
        this.mGiftBox = (RelativeLayout) hasViews.internalFindViewById(R.id.mGiftBox);
        this.mPosts = (RelativeLayout) hasViews.internalFindViewById(R.id.mPosts);
        this.mMessages = (RelativeLayout) hasViews.internalFindViewById(R.id.mMessages);
        this.tools = (RelativeLayout) hasViews.internalFindViewById(R.id.tools);
        this.messageBadge = (TextView) hasViews.internalFindViewById(R.id.messageBadge);
        this.signBadge = (TextView) hasViews.internalFindViewById(R.id.signBadge);
        this.papaMoney = (TextView) hasViews.internalFindViewById(R.id.papaMoney);
        this.userIconBg = (ImageView) hasViews.internalFindViewById(R.id.userIconBg);
        this.pabiAd = (TextView) hasViews.internalFindViewById(R.id.pabiAd);
        this.couponNumber = (TextView) hasViews.internalFindViewById(R.id.couponNumber);
        this.signIn = (RelativeLayout) hasViews.internalFindViewById(R.id.signIn);
        this.mBrass = (RelativeLayout) hasViews.internalFindViewById(R.id.mBrass);
        this.liveLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.liveLayout);
        this.papaliveText = (TextView) hasViews.internalFindViewById(R.id.papaliveText);
        this.paCreditCenter = (RelativeLayout) hasViews.internalFindViewById(R.id.paCreditCenter);
        this.joystick = (RelativeLayout) hasViews.internalFindViewById(R.id.joystick);
        this.userLogin = (FrameLayout) hasViews.internalFindViewById(R.id.userLogin);
        this.downloads = (RelativeLayout) hasViews.internalFindViewById(R.id.downloads);
        this.feedback = (RelativeLayout) hasViews.internalFindViewById(R.id.feedback);
        this.papaMore = (RelativeLayout) hasViews.internalFindViewById(R.id.papaMore);
        this.scrollView = (PullableScrollView) hasViews.internalFindViewById(R.id.scrollView);
        this.back_layout = (RelativeLayout) hasViews.internalFindViewById(R.id.back_layout);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.myGameTip = (RelativeLayout) hasViews.internalFindViewById(R.id.myGameTip);
        this.accountCenterLine = hasViews.internalFindViewById(R.id.accountCenterLine);
        this.userisLogin = (ImageView) hasViews.internalFindViewById(R.id.userisLogin);
        this.layoutText = (LinearLayout) hasViews.internalFindViewById(R.id.layoutText);
        this.accountCenterImageView = (ImageView) hasViews.internalFindViewById(R.id.accountCenterImageView);
        this.accountCenterMsgBg = (ImageView) hasViews.internalFindViewById(R.id.accountCenterMsgBg);
        this.img_brass = (SimpleDraweeView) hasViews.internalFindViewById(R.id.img_brass);
        this.brass_title = (TextView) hasViews.internalFindViewById(R.id.brass_title);
        this.vipText = (VipView) hasViews.internalFindViewById(R.id.vipText);
        this.svipText = (VipView) hasViews.internalFindViewById(R.id.svipText);
        this.vipItem = (VipView) hasViews.internalFindViewById(R.id.vipItem);
        this.vipMessage = (TextView) hasViews.internalFindViewById(R.id.vipMessage);
        this.paVip = (RelativeLayout) hasViews.internalFindViewById(R.id.paVip);
        this.paVipIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.paVipIcon);
        this.myVoucher = (RelativeLayout) hasViews.internalFindViewById(R.id.myVoucher);
        this.img_voucher = (SimpleDraweeView) hasViews.internalFindViewById(R.id.img_voucher);
        this.img_gift = (SimpleDraweeView) hasViews.internalFindViewById(R.id.img_gift);
        this.paCreditCenterIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.paCreditCenterIcon);
        this.vip_lay_1 = (LinearLayout) hasViews.internalFindViewById(R.id.vip_lay_1);
        this.vip_lay_2 = (LinearLayout) hasViews.internalFindViewById(R.id.vip_lay_2);
        this.vip_icon_1 = (SimpleDraweeView) hasViews.internalFindViewById(R.id.vip_icon_1);
        this.vip_icon_2 = (SimpleDraweeView) hasViews.internalFindViewById(R.id.vip_icon_2);
        this.vip_1_txt = (TextView) hasViews.internalFindViewById(R.id.vip_1_txt);
        this.vip_2_txt = (TextView) hasViews.internalFindViewById(R.id.vip_2_txt);
        this.paVipAd = (TextView) hasViews.internalFindViewById(R.id.paVipAd);
        this.couponNumberTxt = (TextView) hasViews.internalFindViewById(R.id.couponNumberTxt);
        this.game_packs_txt = (TextView) hasViews.internalFindViewById(R.id.game_packs_txt);
        this.vip_lay_2_line = hasViews.internalFindViewById(R.id.vip_lay_2_line);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.face_transfer_rl);
        ImageView imageView = this.accountCenterImageView;
        if (imageView != null) {
            imageView.setOnClickListener(new u());
        }
        RelativeLayout relativeLayout = this.liveLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new w());
        }
        ImageView imageView2 = this.back_image;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new x());
        }
        RelativeLayout relativeLayout2 = this.mGiftBox;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new y());
        }
        RelativeLayout relativeLayout3 = this.mPosts;
        if (relativeLayout3 != null) {
            relativeLayout3.setOnClickListener(new z());
        }
        RelativeLayout relativeLayout4 = this.mMessages;
        if (relativeLayout4 != null) {
            relativeLayout4.setOnClickListener(new a0());
        }
        RelativeLayout relativeLayout5 = this.paCreditCenter;
        if (relativeLayout5 != null) {
            relativeLayout5.setOnClickListener(new b0());
        }
        RelativeLayout relativeLayout6 = this.joystick;
        if (relativeLayout6 != null) {
            relativeLayout6.setOnClickListener(new c0());
        }
        RelativeLayout relativeLayout7 = this.downloads;
        if (relativeLayout7 != null) {
            relativeLayout7.setOnClickListener(new a());
        }
        RelativeLayout relativeLayout8 = this.feedback;
        if (relativeLayout8 != null) {
            relativeLayout8.setOnClickListener(new b());
        }
        RelativeLayout relativeLayout9 = this.papaMore;
        if (relativeLayout9 != null) {
            relativeLayout9.setOnClickListener(new c());
        }
        RelativeLayout relativeLayout10 = this.back_layout;
        if (relativeLayout10 != null) {
            relativeLayout10.setOnClickListener(new d());
        }
        RelativeLayout relativeLayout11 = this.signIn;
        if (relativeLayout11 != null) {
            relativeLayout11.setOnClickListener(new e());
        }
        RelativeLayout relativeLayout12 = this.myVoucher;
        if (relativeLayout12 != null) {
            relativeLayout12.setOnClickListener(new f());
        }
        RelativeLayout relativeLayout13 = this.mBrass;
        if (relativeLayout13 != null) {
            relativeLayout13.setOnClickListener(new g());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new h());
        }
        RelativeLayout relativeLayout14 = this.tools;
        if (relativeLayout14 != null) {
            relativeLayout14.setOnClickListener(new i());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void pullMyProfileInfo() {
        org.androidannotations.api.a.l(new t("", 0L, ""));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void refreshViews() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new q(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void showPabiIntent() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void tokenFailure() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountCenterActivity
    public void touristLogin() {
        org.androidannotations.api.a.l(new v("", 0L, ""));
    }

    public static d0 intent(Fragment supportFragment) {
        return new d0(supportFragment);
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
