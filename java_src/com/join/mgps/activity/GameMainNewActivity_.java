package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.ArenaResponse;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameMainV3DataBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameMainNewActivity_ extends GameMainNewActivity implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    public static final String f53148c2 = "gameId";

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    public static final String f53149d2 = "from";

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    private final zc.c f53150a2 = new zc.c();

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private final Map<Class<?>, Object> f53151b2 = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.V();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.N();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.O();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameMainV3DataBean f53155b;

        d(final GameMainV3DataBean val$gameMaindataImg) {
            this.f53155b = val$gameMaindataImg;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.P(this.f53155b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.J();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.R();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.l();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f53160b;

        h(final ArenaResponse val$response) {
            this.f53160b = val$response;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.I(this.f53160b);
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainNewActivity_.super.A();
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
                GameMainNewActivity_.super.z();
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
            GameMainNewActivity_.this.m();
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainNewActivity_.super.y();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53166b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final String val$pids) {
            super(id2, delay, serial);
            this.f53166b = val$pids;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainNewActivity_.super.E(this.f53166b);
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
                GameMainNewActivity_.super.B();
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
                GameMainNewActivity_.super.D();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {
        p(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainNewActivity_.super.F();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.T();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.t();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.o();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.p();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.n();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.r();
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainNewActivity_.this.v();
        }
    }

    class x implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameMainV3DataBean f53178b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f53179c;

        x(final GameMainV3DataBean val$dataBean, final boolean val$isGetData) {
            this.f53178b = val$dataBean;
            this.f53179c = val$isGetData;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainNewActivity_.super.Y(this.f53178b, this.f53179c);
        }
    }

    public static class y extends org.androidannotations.api.builder.a<y> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53181a;

        public y(Context context) {
            super(context, (Class<?>) GameMainNewActivity_.class);
        }

        public y a(String from) {
            return (y) super.extra("from", from);
        }

        public y b(String gameId) {
            return (y) super.extra("gameId", gameId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53181a;
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

        public y(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameMainNewActivity_.class);
            this.f53181a = fragment;
        }
    }

    private void p0(Bundle savedInstanceState) {
        this.f53124p1 = new PrefDef_(this);
        zc.c.b(this);
        getWindow().setFlags(1024, 1024);
        q0();
        requestWindowFeature(1);
    }

    private void q0() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.D = extras.getString("gameId");
            }
            if (extras.containsKey("from")) {
                this.E = extras.getString("from");
            }
        }
    }

    public static y r0(Context context) {
        return new y(context);
    }

    public static y s0(Fragment supportFragment) {
        return new y(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void A() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void B() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void D() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void E(final String pids) {
        org.androidannotations.api.a.l(new m("", 0L, "", pids));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void F() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void I(final ArenaResponse response) {
        org.androidannotations.api.b.e("", new h(response), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void J() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void N() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void O() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void P(final GameMainV3DataBean gameMaindataImg) {
        org.androidannotations.api.b.e("", new d(gameMaindataImg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void R() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void V() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void Y(final GameMainV3DataBean dataBean, final boolean isGetData) {
        org.androidannotations.api.b.e("", new x(dataBean, isGetData), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f53151b2.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void l() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f53150a2);
        p0(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_game_main_new);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f53104b = hasViews.internalFindViewById(R.id.ll_loading);
        this.f53106c = (TextView) hasViews.internalFindViewById(R.id.gameMainNewNameTx);
        this.f53107d = (TextView) hasViews.internalFindViewById(R.id.gameMainNewFightTx);
        this.f53108e = (TextView) hasViews.internalFindViewById(R.id.gameMainNewPlayTimeFrontTx);
        this.f53109f = (TextView) hasViews.internalFindViewById(R.id.gameMainNewPlayTimeTx);
        this.f53111g = (TextView) hasViews.internalFindViewById(R.id.gameMainNewStartTimeFrontTx);
        this.f53112h = (TextView) hasViews.internalFindViewById(R.id.gameMainNewStartTimeTx);
        this.f53113i = (RecyclerView) hasViews.internalFindViewById(R.id.memberFunRc);
        this.f53115j = (RelativeLayout) hasViews.internalFindViewById(R.id.gameMainNewFightRl);
        this.f53116k = (TextView) hasViews.internalFindViewById(R.id.toBuyTx);
        this.f53117l = (TextView) hasViews.internalFindViewById(R.id.gameMainNewVipTitleTx);
        this.f53119m = (TextView) hasViews.internalFindViewById(R.id.gameMainNewVipSubTitleTx);
        this.f53120n = (TextView) hasViews.internalFindViewById(R.id.gameMainNewMoreTx);
        this.f53121o = (TextView) hasViews.internalFindViewById(R.id.gameMainNewCommunityOneTx);
        this.f53122p = hasViews.internalFindViewById(R.id.line1);
        this.f53125q = (TextView) hasViews.internalFindViewById(R.id.gameMainNewCommunityTwoTx);
        this.f53127r = hasViews.internalFindViewById(R.id.line2);
        this.f53129s = (RecyclerView) hasViews.internalFindViewById(R.id.gameMainNewRv);
        this.f53130t = (GridView) hasViews.internalFindViewById(R.id.gameMainNewLeftGv);
        this.f53131u = (SimpleDraweeView) hasViews.internalFindViewById(R.id.gameMainNewBgIv);
        this.f53132v = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv3);
        this.f53134w = (RelativeLayout) hasViews.internalFindViewById(R.id.leftRl);
        this.f53135x = (LinearLayout) hasViews.internalFindViewById(R.id.rightLl);
        this.f53136y = (RelativeLayout) hasViews.internalFindViewById(R.id.discussNoContentRl);
        this.f53137z = (RelativeLayout) hasViews.internalFindViewById(R.id.discussContentRl);
        this.A = (SimpleDraweeView) hasViews.internalFindViewById(R.id.sm_reply_img);
        this.B = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_reply_text);
        this.C = (LinearLayout) hasViews.internalFindViewById(R.id.hit_temp_ll);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.gameMainNewBackIv);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.gameMainNewStartGameRl);
        RelativeLayout relativeLayout = this.f53136y;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new k());
        }
        TextView textView = this.f53116k;
        if (textView != null) {
            textView.setOnClickListener(new q());
        }
        TextView textView2 = this.f53120n;
        if (textView2 != null) {
            textView2.setOnClickListener(new r());
        }
        TextView textView3 = this.f53121o;
        if (textView3 != null) {
            textView3.setOnClickListener(new s());
        }
        TextView textView4 = this.f53125q;
        if (textView4 != null) {
            textView4.setOnClickListener(new t());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new u());
        }
        RelativeLayout relativeLayout2 = this.f53115j;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new v());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new w());
        }
        j();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f53151b2.put(key, value);
    }

    @Override // android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.f53150a2.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void y() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainNewActivity
    public void z() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.f53150a2.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f53150a2.a(this);
    }
}
