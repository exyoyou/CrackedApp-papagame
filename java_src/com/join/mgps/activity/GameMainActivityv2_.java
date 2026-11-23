package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ViewPagerWithADs;
import com.join.mgps.dto.GameMainDataBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameMainActivityv2_ extends GameMainActivityv2 implements xc.a, zc.a, zc.b {
    public static final String G = "gameId";
    private final zc.c E = new zc.c();
    private final Map<Class<?>, Object> F = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameMainDataBean f53088b;

        a(final GameMainDataBean val$dataBean) {
            this.f53088b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivityv2_.super.r(this.f53088b);
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivityv2_.super.f();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53091b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final int val$silenceSwitch) {
            super(id2, delay, serial);
            this.f53091b = val$silenceSwitch;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivityv2_.super.o(this.f53091b);
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
                GameMainActivityv2_.super.e();
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
            GameMainActivityv2_.this.g();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.c();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.m();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.d();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.l();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.i();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.k();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.n();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivityv2_.this.h();
        }
    }

    public static class n extends org.androidannotations.api.builder.a<n> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53103a;

        public n(Context context) {
            super(context, (Class<?>) GameMainActivityv2_.class);
        }

        public n a(String gameId) {
            return (n) super.extra("gameId", gameId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53103a;
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

        public n(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameMainActivityv2_.class);
            this.f53103a = fragment;
        }
    }

    private void w(Bundle savedInstanceState) {
        this.f53078v = new PrefDef_(this);
        zc.c.b(this);
        x();
    }

    private void x() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("gameId")) {
            return;
        }
        this.f53077u = extras.getString("gameId");
    }

    public static n y(Context context) {
        return new n(context);
    }

    public static n z(Fragment supportFragment) {
        return new n(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivityv2
    public void e() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivityv2
    public void f() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.F.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivityv2
    public void o(final int silenceSwitch) {
        org.androidannotations.api.a.l(new c("", 0L, "", silenceSwitch));
    }

    @Override // com.join.mgps.activity.GameMainActivityv2, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.E);
        w(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_game_mainv2);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f53058b = (TextView) hasViews.internalFindViewById(R.id.titleText);
        this.f53059c = (ImageView) hasViews.internalFindViewById(R.id.iv_back);
        this.f53060d = (ImageView) hasViews.internalFindViewById(R.id.iv_switch_netfight);
        this.f53061e = (ImageView) hasViews.internalFindViewById(R.id.iv_list);
        this.f53062f = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_book_bg2);
        this.f53063g = (TextView) hasViews.internalFindViewById(R.id.tv_gamename);
        this.f53064h = (TextView) hasViews.internalFindViewById(R.id.archiveMessage);
        this.f53065i = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_gameicon);
        this.f53066j = (SimpleDraweeView) hasViews.internalFindViewById(R.id.achieveImage);
        this.f53067k = (LinearLayout) hasViews.internalFindViewById(R.id.tipsLayout);
        this.f53068l = (LinearLayout) hasViews.internalFindViewById(R.id.ll_netfight_parent);
        this.f53069m = (LinearLayout) hasViews.internalFindViewById(R.id.adContainer);
        this.f53070n = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_archive);
        this.f53071o = (RelativeLayout) hasViews.internalFindViewById(R.id.joiinSwitchLayout);
        this.f53072p = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_localfight);
        this.f53073q = (ViewPagerWithADs) hasViews.internalFindViewById(R.id.viewPagerAdLayout);
        this.f53074r = (LinearLayout) hasViews.internalFindViewById(R.id.forumPostlayout);
        this.f53075s = (ViewFlipper) hasViews.internalFindViewById(R.id.adviewFliper);
        this.f53076t = (TextView) hasViews.internalFindViewById(R.id.tv_netfight);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.btnFastGame);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.rl_top);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.forum_post);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.rl_video);
        ImageView imageView = this.f53059c;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new f());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new g());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new h());
        }
        RelativeLayout relativeLayout = this.f53072p;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new i());
        }
        LinearLayout linearLayout = this.f53068l;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new j());
        }
        RelativeLayout relativeLayout2 = this.f53070n;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new k());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new l());
        }
        ImageView imageView2 = this.f53060d;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new m());
        }
        b();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.F.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivityv2
    public void r(final GameMainDataBean dataBean) {
        org.androidannotations.api.b.e("", new a(dataBean), 0L);
    }

    @Override // android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.E.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        x();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.E.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.E.a(this);
    }
}
