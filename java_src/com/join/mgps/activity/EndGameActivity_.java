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
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.EndGameListBean;
import com.join.mgps.dto.EndGameNameListBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class EndGameActivity_ extends EndGameActivity implements xc.a, zc.a, zc.b {
    public static final String EXT_EXTRA = "ext";
    public static final String GAME_ID_EXTRA = "gameId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameActivity_.super.nomoreType();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f51317b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51318c;

        b(final List val$data, final int val$page) {
            this.f51317b = val$data;
            this.f51318c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameActivity_.super.updateUi(this.f51317b, this.f51318c);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ EndGameListBean f51320b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51321c;

        c(final EndGameListBean val$data, final int val$page) {
            this.f51320b = val$data;
            this.f51321c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameActivity_.super.updateTypeUI(this.f51320b, this.f51321c);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameActivity_.super.showLoding();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameActivity_.super.showLodingFailed();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameActivity_.super.showMain();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51326b;

        g(final String val$message) {
            this.f51326b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameActivity_.super.showTost(this.f51326b);
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                EndGameActivity_.super.getEndGameConfig();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51329b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f51329b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                EndGameActivity_.super.getGameNameData(this.f51329b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51331b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f51331b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                EndGameActivity_.super.getGameTypeData(this.f51331b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameActivity_.this.back_image();
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                EndGameActivity_.super.getAd();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameActivity_.this.ivExpand();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameActivity_.this.shadowMask();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameActivity_.this.relodingimag();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameActivity_.this.setNetwork();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EndGameActivity_.this.createEndGame();
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameActivity_.super.updateCreateEndGameVisibility();
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameActivity_.super.resetFirstFragmentAd();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameActivity_.super.nomore();
        }
    }

    public static class u extends org.androidannotations.api.builder.a<u> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51343a;

        public u(Context context) {
            super(context, (Class<?>) EndGameActivity_.class);
        }

        public u a(String ext) {
            return (u) super.extra("ext", ext);
        }

        public u b(String gameId) {
            return (u) super.extra("gameId", gameId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51343a;
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

        public u(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) EndGameActivity_.class);
            this.f51343a = fragment;
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
            if (extras.containsKey("ext")) {
                this.ext = extras.getString("ext");
            }
        }
    }

    public static u intent(Context context) {
        return new u(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void getAd() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void getEndGameConfig() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void getGameNameData(final int page) {
        org.androidannotations.api.a.l(new i("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void getGameTypeData(final int page) {
        org.androidannotations.api.a.l(new j("", 0L, "", page));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void nomore() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void nomoreType() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_end_game);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.createEndGame = (TextView) hasViews.internalFindViewById(R.id.createEndGame);
        this.statubar = hasViews.internalFindViewById(R.id.statubar);
        this.viewpager = (ViewPager2) hasViews.internalFindViewById(R.id.viewpager);
        this.shadowMask = hasViews.internalFindViewById(R.id.shadowMask);
        this.clGameSelect = (ConstraintLayout) hasViews.internalFindViewById(R.id.clGameSelect);
        this.rvGameSelect = (RecyclerView) hasViews.internalFindViewById(R.id.rvGameSelect);
        this.ivExpand = (ImageView) hasViews.internalFindViewById(R.id.ivExpand);
        this.rvGameSelectTag = (RecyclerView) hasViews.internalFindViewById(R.id.rvGameSelectTag);
        this.vpGameList = (ViewPager2) hasViews.internalFindViewById(R.id.vpGameList);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        ImageView imageView = this.ivExpand;
        if (imageView != null) {
            imageView.setOnClickListener(new m());
        }
        View view = this.shadowMask;
        if (view != null) {
            view.setOnClickListener(new n());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new o());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new p());
        }
        TextView textView = this.createEndGame;
        if (textView != null) {
            textView.setOnClickListener(new q());
        }
        afterviews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void resetFirstFragmentAd() {
        org.androidannotations.api.b.e("", new s(), 0L);
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
    @Override // com.join.mgps.activity.EndGameActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new g(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void updateCreateEndGameVisibility() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void updateTypeUI(final EndGameListBean data, final int page) {
        org.androidannotations.api.b.e("", new c(data, page), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.EndGameActivity
    public void updateUi(final List<EndGameNameListBean> data, final int page) {
        org.androidannotations.api.b.e("", new b(data, page), 0L);
    }

    public static u intent(Fragment supportFragment) {
        return new u(supportFragment);
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
