package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameSearchFavoriteActivity_ extends GameSearchFavoriteActivity implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f53291y = "type";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final zc.c f53292w = new zc.c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Map<Class<?>, Object> f53293x = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameSearchFavoriteActivity_.this.d();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameSearchFavoriteActivity_.this.j();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameSearchFavoriteActivity_.this.k();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f53297b;

        d(final List val$datas) {
            this.f53297b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameSearchFavoriteActivity_.super.o(this.f53297b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameSearchFavoriteActivity_.super.m();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameSearchFavoriteActivity_.super.l();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameSearchFavoriteActivity_.super.h();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53302b;

        h(final String val$info) {
            this.f53302b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameSearchFavoriteActivity_.super.n(this.f53302b);
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameSearchFavoriteActivity_.super.e();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.a<j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53305a;

        public j(Context context) {
            super(context, (Class<?>) GameSearchFavoriteActivity_.class);
        }

        public j a(int type) {
            return (j) super.extra("type", type);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53305a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameSearchFavoriteActivity_.class);
            this.f53305a = fragment;
        }
    }

    private void v(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f53279m = AccountUtil_.getInstance_(this);
        w();
    }

    private void w() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("type")) {
            return;
        }
        this.f53268b = extras.getInt("type");
    }

    public static j x(Context context) {
        return new j(context);
    }

    public static j y(Fragment supportFragment) {
        return new j(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void e() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f53293x.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void h() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void l() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void m() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void n(final String info) {
        org.androidannotations.api.b.e("", new h(info), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameSearchFavoriteActivity
    public void o(final List<CollectionBeanSub> datas) {
        org.androidannotations.api.b.e("", new d(datas), 0L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f53292w);
        v(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_game_search_favorite);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f53269c = (EditText) hasViews.internalFindViewById(R.id.et_search);
        this.f53270d = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_normal);
        this.f53271e = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_search);
        this.f53272f = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.f53273g = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.f53274h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f53275i = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f53276j = (XListView2) hasViews.internalFindViewById(R.id.mListView);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f53272f;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new c());
        }
        c();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f53293x.put(key, value);
    }

    @Override // android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.f53292w.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        w();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.f53292w.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f53292w.a(this);
    }
}
