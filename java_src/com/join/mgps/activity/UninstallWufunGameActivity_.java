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
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.UninstallGuessLikeBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class UninstallWufunGameActivity_ extends UninstallWufunGameActivity implements xc.a, zc.a, zc.b {
    public static final String GAME_ID_EXTRA = "gameId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver apkInstalRecverReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.UninstallWufunGameActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UninstallWufunGameActivity_.this.apkInstalRecver(intent);
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunGameActivity_.this.tvDeleteGameOnly();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f56285b;

        b(final boolean val$isVisible) {
            this.f56285b = val$isVisible;
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunGameActivity_.super.setBtn(this.f56285b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunGameActivity_.super.resetBtn();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunGameActivity_.super.resetBtn2();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UninstallGuessLikeBean f56289b;

        e(final UninstallGuessLikeBean val$data) {
            this.f56289b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunGameActivity_.super.updateData(this.f56289b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunGameActivity_.super.showMain();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunGameActivity_.super.showLoding();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunGameActivity_.super.showLodingFailed();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56294b;

        i(final String val$msg) {
            this.f56294b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunGameActivity_.super.showToast(this.f56294b);
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f56296b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final List val$modGameIds) {
            super(id2, delay, serial);
            this.f56296b = val$modGameIds;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UninstallWufunGameActivity_.super.getModGameArchievePath(this.f56296b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k extends org.androidannotations.api.a.c {
        k(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UninstallWufunGameActivity_.super.getGuessLikeData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunGameActivity_.this.setNetwork();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunGameActivity_.this.relodingimag();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunGameActivity_.this.back_image();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunGameActivity_.this.toComment();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunGameActivity_.this.game1();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunGameActivity_.this.game2();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunGameActivity_.this.game3();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunGameActivity_.this.tvDeleteAll();
        }
    }

    public static class t extends org.androidannotations.api.builder.a<t> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56307a;

        public t(Context context) {
            super(context, (Class<?>) UninstallWufunGameActivity_.class);
        }

        public t a(String gameId) {
            return (t) super.extra("gameId", gameId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56307a;
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

        public t(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) UninstallWufunGameActivity_.class);
            this.f56307a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.f96211o);
        registerReceiver(this.apkInstalRecverReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("gameId")) {
            return;
        }
        this.gameId = extras.getString("gameId");
    }

    public static t intent(Context context) {
        return new t(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunGameActivity
    public void getGuessLikeData() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunGameActivity
    public void getModGameArchievePath(final List<String> modGameIds) {
        org.androidannotations.api.a.l(new j("", 0L, "", modGameIds));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_uninstall_wufun_game);
    }

    @Override // com.join.mgps.activity.UninstallWufunGameActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.apkInstalRecverReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.statubar = hasViews.internalFindViewById(R.id.statubar);
        this.headview = (RelativeLayout) hasViews.internalFindViewById(R.id.headview);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.cardDelete = (FrameLayout) hasViews.internalFindViewById(R.id.cardDelete);
        this.toComment = (FrameLayout) hasViews.internalFindViewById(R.id.toComment);
        this.gameIcon1 = (SimpleDraweeView) hasViews.internalFindViewById(R.id.gameIcon1);
        this.gameName1 = (TextView) hasViews.internalFindViewById(R.id.gameName1);
        this.gameDesc1 = (TextView) hasViews.internalFindViewById(R.id.gameDesc1);
        this.gameStatus1 = (TextView) hasViews.internalFindViewById(R.id.gameStatus1);
        this.checkbox1 = (ImageView) hasViews.internalFindViewById(R.id.checkbox1);
        this.game1 = (ConstraintLayout) hasViews.internalFindViewById(R.id.game1);
        this.gameIcon2 = (SimpleDraweeView) hasViews.internalFindViewById(R.id.gameIcon2);
        this.gameName2 = (TextView) hasViews.internalFindViewById(R.id.gameName2);
        this.gameStatus2 = (TextView) hasViews.internalFindViewById(R.id.gameStatus2);
        this.checkbox2 = (ImageView) hasViews.internalFindViewById(R.id.checkbox2);
        this.game2 = (ConstraintLayout) hasViews.internalFindViewById(R.id.game2);
        this.gameIcon3 = (SimpleDraweeView) hasViews.internalFindViewById(R.id.gameIcon3);
        this.gameName3 = (TextView) hasViews.internalFindViewById(R.id.gameName3);
        this.gameStatus3 = (TextView) hasViews.internalFindViewById(R.id.gameStatus3);
        this.checkbox3 = (ImageView) hasViews.internalFindViewById(R.id.checkbox3);
        this.game3 = (ConstraintLayout) hasViews.internalFindViewById(R.id.game3);
        this.tvDeleteAll = (TextView) hasViews.internalFindViewById(R.id.tvDeleteAll);
        this.tvDeleteGameOnly = (TextView) hasViews.internalFindViewById(R.id.tvDeleteGameOnly);
        this.cardRecom = (CardView) hasViews.internalFindViewById(R.id.cardRecom);
        this.flRecom = (FrameLayout) hasViews.internalFindViewById(R.id.flRecom);
        this.rvRecom = (RecyclerView) hasViews.internalFindViewById(R.id.rvRecom);
        this.loding_layout = hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = hasViews.internalFindViewById(R.id.loding_faile);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new l());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new m());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new n());
        }
        FrameLayout frameLayout = this.toComment;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new o());
        }
        ConstraintLayout constraintLayout = this.game1;
        if (constraintLayout != null) {
            constraintLayout.setOnClickListener(new p());
        }
        ConstraintLayout constraintLayout2 = this.game2;
        if (constraintLayout2 != null) {
            constraintLayout2.setOnClickListener(new q());
        }
        ConstraintLayout constraintLayout3 = this.game3;
        if (constraintLayout3 != null) {
            constraintLayout3.setOnClickListener(new r());
        }
        TextView textView = this.tvDeleteAll;
        if (textView != null) {
            textView.setOnClickListener(new s());
        }
        TextView textView2 = this.tvDeleteGameOnly;
        if (textView2 != null) {
            textView2.setOnClickListener(new a());
        }
        afterviews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunGameActivity
    public void resetBtn() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunGameActivity
    public void resetBtn2() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunGameActivity
    public void setBtn(final boolean isVisible) {
        org.androidannotations.api.b.e("", new b(isVisible), 0L);
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
    @Override // com.join.mgps.activity.UninstallWufunGameActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunGameActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunGameActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunGameActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new i(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunGameActivity
    public void updateData(final UninstallGuessLikeBean data) {
        org.androidannotations.api.b.e("", new e(data), 0L);
    }

    public static t intent(Fragment supportFragment) {
        return new t(supportFragment);
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
