package com.join.mgps.activity.arena;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DetailResultBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class NewArenaDownloadActivity_ extends NewArenaDownloadActivity implements xc.a, zc.a, zc.b {
    public static final String O = "gameId";
    public static final String P = "hasPlug";
    public static final String Q = "hasRom";
    public static final String R = "from";
    private final zc.c M = new zc.c();
    private final Map<Class<?>, Object> N = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.n();
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f56692b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final DetailResultBean val$detialResultBean) {
            super(id2, delay, serial);
            this.f56692b = val$detialResultBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                NewArenaDownloadActivity_.super.d(this.f56692b);
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
                NewArenaDownloadActivity_.super.g();
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
            NewArenaDownloadActivity_.this.b();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NewArenaDownloadActivity_.this.k();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NewArenaDownloadActivity_.this.m();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NewArenaDownloadActivity_.this.l();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.e();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.f();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.p();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.i();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.o();
        }
    }

    public static class m extends org.androidannotations.api.builder.a<m> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56704a;

        public m(Context context) {
            super(context, (Class<?>) NewArenaDownloadActivity_.class);
        }

        public m a(String from) {
            return (m) super.extra("from", from);
        }

        public m b(String gameId) {
            return (m) super.extra("gameId", gameId);
        }

        public m c(boolean hasPlug) {
            return (m) super.extra(NewArenaDownloadActivity_.P, hasPlug);
        }

        public m d(boolean hasRom) {
            return (m) super.extra(NewArenaDownloadActivity_.Q, hasRom);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56704a;
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

        public m(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) NewArenaDownloadActivity_.class);
            this.f56704a = fragment;
        }
    }

    public static m A(Context context) {
        return new m(context);
    }

    public static m B(Fragment supportFragment) {
        return new m(supportFragment);
    }

    private void y(Bundle savedInstanceState) {
        zc.c.b(this);
        z();
    }

    private void z() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.f56665b = extras.getString("gameId");
            }
            if (extras.containsKey(P)) {
                this.f56666c = extras.getBoolean(P);
            }
            if (extras.containsKey(Q)) {
                this.f56667d = extras.getBoolean(Q);
            }
            if (extras.containsKey("from")) {
                this.f56668e = extras.getString("from");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void d(final DetailResultBean detialResultBean) {
        org.androidannotations.api.a.l(new b("", 0L, "", detialResultBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void e() {
        org.androidannotations.api.b.e("", new h(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void f() {
        org.androidannotations.api.b.e("", new i(), 800L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void g() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.N.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void i() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void n() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void o() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.M);
        y(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.dialog_arena_download_game_plugin);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f56671h = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_game_icon);
        this.f56672i = (TextView) hasViews.internalFindViewById(R.id.tv_game_name);
        this.f56673j = (TextView) hasViews.internalFindViewById(R.id.moneyText);
        this.f56674k = (ProgressBar) hasViews.internalFindViewById(R.id.gameProgressBar);
        this.f56675l = (TextView) hasViews.internalFindViewById(R.id.tv_game_size);
        this.f56676m = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_plugin_icon);
        this.f56677n = (TextView) hasViews.internalFindViewById(R.id.tv_plugin_name);
        this.f56678o = (ProgressBar) hasViews.internalFindViewById(R.id.plugProgressBar);
        this.f56679p = (TextView) hasViews.internalFindViewById(R.id.tv_plugin_size);
        this.f56680q = (Button) hasViews.internalFindViewById(R.id.btnGoGame);
        this.f56681r = (LinearLayout) hasViews.internalFindViewById(R.id.loading_lay);
        this.f56682s = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f56683t = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.f56684u = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        this.f56685v = hasViews.internalFindViewById(R.id.iv_close);
        this.f56686w = (LinearLayout) hasViews.internalFindViewById(R.id.ll_content);
        this.f56687x = (LinearLayout) hasViews.internalFindViewById(R.id.ll_plugin);
        this.f56688y = (LinearLayout) hasViews.internalFindViewById(R.id.ll_game);
        this.f56689z = (TextView) hasViews.internalFindViewById(R.id.tv_info);
        Button button = this.f56680q;
        if (button != null) {
            button.setOnClickListener(new d());
        }
        View view = this.f56685v;
        if (view != null) {
            view.setOnClickListener(new e());
        }
        Button button2 = this.f56684u;
        if (button2 != null) {
            button2.setOnClickListener(new f());
        }
        ImageView imageView = this.f56683t;
        if (imageView != null) {
            imageView.setOnClickListener(new g());
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void p() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.N.put(key, value);
    }

    @Override // android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.M.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        z();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.M.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.M.a(this);
    }
}
