package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.EndGameDetailBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class EndGameDetailActivity_ extends EndGameDetailActivity implements xc.a, zc.a, zc.b {
    public static final String END_GAME_ID_EXTRA = "endGameId";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String IS_FROM_VIDEO_EXTRA = "isFromVideo";
    public static final String RULES_EXTRA = "rules";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameDetailActivity_.super.showLodingFailed();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameDetailActivity_.super.showMain();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51349b;

        c(final String val$message) {
            this.f51349b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameDetailActivity_.super.showTost(this.f51349b);
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                EndGameDetailActivity_.super.getEndGameConfig();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f51352b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final boolean val$isRefreshAllData) {
            super(id2, delay, serial);
            this.f51352b = val$isRefreshAllData;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                EndGameDetailActivity_.super.getData(this.f51352b);
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
            EndGameDetailActivity_.this.ivBack();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameDetailActivity_.this.ivMenu();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameDetailActivity_.this.clAuthor();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameDetailActivity_.this.clShare();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameDetailActivity_.this.setNetwork();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameDetailActivity_.this.relodingimag();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameDetailActivity_.this.btnStart();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ EndGameDetailBean f51361b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f51362c;

        m(final EndGameDetailBean val$data, final boolean val$isRefreshAllData) {
            this.f51361b = val$data;
            this.f51362c = val$isRefreshAllData;
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameDetailActivity_.super.updateUi(this.f51361b, this.f51362c);
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameDetailActivity_.super.showLoding();
        }
    }

    public static class o extends org.androidannotations.api.builder.a<o> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51365a;

        public o(Context context) {
            super(context, (Class<?>) EndGameDetailActivity_.class);
        }

        public o a(String endGameId) {
            return (o) super.extra("endGameId", endGameId);
        }

        public o b(String gameId) {
            return (o) super.extra("gameId", gameId);
        }

        public o c(boolean isFromVideo) {
            return (o) super.extra(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA, isFromVideo);
        }

        public o d(String rules) {
            return (o) super.extra("rules", rules);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51365a;
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

        public o(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) EndGameDetailActivity_.class);
            this.f51365a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("endGameId")) {
                this.endGameId = extras.getString("endGameId");
            }
            if (extras.containsKey("rules")) {
                this.rules = extras.getString("rules");
            }
            if (extras.containsKey(IS_FROM_VIDEO_EXTRA)) {
                this.isFromVideo = extras.getBoolean(IS_FROM_VIDEO_EXTRA);
            }
        }
    }

    public static o intent(Context context) {
        return new o(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameDetailActivity
    public void getData(final boolean isRefreshAllData) {
        org.androidannotations.api.a.l(new e("", 0L, "", isRefreshAllData));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameDetailActivity
    public void getEndGameConfig() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
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
        setContentView(R.layout.activity_end_game_detail);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.appbar = (AppBarLayout) hasViews.internalFindViewById(R.id.appbar);
        this.collapsingToolbarLayout = (CollapsingToolbarLayout) hasViews.internalFindViewById(R.id.collapsingToolbarLayout);
        this.nullView = hasViews.internalFindViewById(R.id.nullView);
        this.iv_book_bg = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_book_bg);
        this.videoPlayer = (StandardVideoView) hasViews.internalFindViewById(R.id.videoPlayer);
        this.tvTitle = (TextView) hasViews.internalFindViewById(R.id.tvTitle);
        this.tvIntro = (TextView) hasViews.internalFindViewById(R.id.tvIntro);
        this.ivAuthorAvatar = (SimpleDraweeView) hasViews.internalFindViewById(R.id.ivAuthorAvatar);
        this.tvAuthorName = (TextView) hasViews.internalFindViewById(R.id.tvAuthorName);
        this.tvPassRate = (TextView) hasViews.internalFindViewById(R.id.tvPassRate);
        this.tvBestScore = (TextView) hasViews.internalFindViewById(R.id.tvBestScore);
        this.tablayout = (SlidingTabLayout) hasViews.internalFindViewById(R.id.tablayout);
        this.viewpager = (ViewPager) hasViews.internalFindViewById(R.id.viewpager);
        this.llShare = (LinearLayout) hasViews.internalFindViewById(R.id.llShare);
        this.btnStart = (TextView) hasViews.internalFindViewById(R.id.btnStart);
        this.ivBack = (ImageView) hasViews.internalFindViewById(R.id.ivBack);
        this.ivMenu = (ImageView) hasViews.internalFindViewById(R.id.ivMenu);
        this.tvTopTitle = (TextView) hasViews.internalFindViewById(R.id.tvTopTitle);
        this.llTop = (LinearLayout) hasViews.internalFindViewById(R.id.llTop);
        this.clBottom = (ConstraintLayout) hasViews.internalFindViewById(R.id.clBottom);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.coordinatorLayout = (CoordinatorLayout) hasViews.internalFindViewById(R.id.coordinatorLayout);
        this.tagPass = (ImageView) hasViews.internalFindViewById(R.id.tagPass);
        this.ivGameIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.ivGameIcon);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.clAuthor);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.clShare);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.relodingimag);
        ImageView imageView = this.ivBack;
        if (imageView != null) {
            imageView.setOnClickListener(new f());
        }
        ImageView imageView2 = this.ivMenu;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new g());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new h());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new i());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new j());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new k());
        }
        TextView textView = this.btnStart;
        if (textView != null) {
            textView.setOnClickListener(new l());
        }
        afterviews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
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
    @Override // com.join.mgps.activity.EndGameDetailActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameDetailActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameDetailActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameDetailActivity
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new c(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameDetailActivity
    public void updateUi(final EndGameDetailBean data, final boolean isRefreshAllData) {
        org.androidannotations.api.b.e("", new m(data, isRefreshAllData), 0L);
    }

    public static o intent(Fragment supportFragment) {
        return new o(supportFragment);
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
