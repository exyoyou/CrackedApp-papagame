package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.AutoScrollViewPager;
import com.join.mgps.dto.PaiWeiUploadFileBean;
import com.join.mgps.dto.PaiWeiUploadFileNewBean;
import com.papa91.arc.bean.PaiWeiDataBean;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GamePaiWeiActivty_ extends GamePaiWeiActivty implements xc.a, zc.a, zc.b {
    public static final String L1 = "numPlayers";
    public static final String R1 = "rankAutoUpload";

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public static final String f53228v1 = "gameId";

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private final zc.c f53229q1 = new zc.c();

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private final Map<Class<?>, Object> f53230r1 = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.s();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.K();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f53233b;

        c(final List val$adListBean) {
            this.f53233b = val$adListBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.I(this.f53233b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PaiWeiDataBean.MonthBestBean f53235b;

        d(final PaiWeiDataBean.MonthBestBean val$monthBestBean) {
            this.f53235b = val$monthBestBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.J(this.f53235b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.t();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53238b;

        f(final String val$code) {
            this.f53238b = val$code;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.M(this.f53238b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53240b;

        g(final String val$path) {
            this.f53240b = val$path;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.N(this.f53240b);
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamePaiWeiActivty_.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f53243b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f53244c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final File val$file, final String val$fname) {
            super(id2, delay, serial);
            this.f53243b = val$file;
            this.f53244c = val$fname;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamePaiWeiActivty_.super.Q(this.f53243b, this.f53244c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53246b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final String val$refresh) {
            super(id2, delay, serial);
            this.f53246b = val$refresh;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamePaiWeiActivty_.super.v(this.f53246b);
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
            GamePaiWeiActivty_.this.G();
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamePaiWeiActivty_.super.w();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53250b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final String val$playId) {
            super(id2, delay, serial);
            this.f53250b = val$playId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamePaiWeiActivty_.super.o(this.f53250b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamePaiWeiActivty_.this.C();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamePaiWeiActivty_.this.D();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamePaiWeiActivty_.this.E();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f53255b;

        q(final boolean val$isSu) {
            this.f53255b = val$isSu;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.y(this.f53255b);
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PaiWeiUploadFileNewBean f53257b;

        r(final PaiWeiUploadFileNewBean val$paiWeiUploadFileBean) {
            this.f53257b = val$paiWeiUploadFileBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.T(this.f53257b);
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PaiWeiUploadFileBean f53259b;

        s(final PaiWeiUploadFileBean val$paiWeiUploadFileBean) {
            this.f53259b = val$paiWeiUploadFileBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.S(this.f53259b);
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53261b;

        t(final String val$message) {
            this.f53261b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.O(this.f53261b);
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.L();
        }
    }

    public static class v extends org.androidannotations.api.builder.a<v> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53264a;

        public v(Context context) {
            super(context, (Class<?>) GamePaiWeiActivty_.class);
        }

        public v a(String gameId) {
            return (v) super.extra("gameId", gameId);
        }

        public v b(int numPlayers) {
            return (v) super.extra(GamePaiWeiActivty_.L1, numPlayers);
        }

        public v c(int rankAutoUpload) {
            return (v) super.extra(GamePaiWeiActivty_.R1, rankAutoUpload);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53264a;
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

        public v(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GamePaiWeiActivty_.class);
            this.f53264a = fragment;
        }
    }

    private void m0(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f53212z = AccountUtil_.getInstance_(this);
        n0();
    }

    private void n0() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.A = extras.getString("gameId");
            }
            if (extras.containsKey(L1)) {
                this.B = extras.getInt(L1);
            }
            if (extras.containsKey(R1)) {
                this.C = extras.getInt(R1);
            }
        }
    }

    public static v o0(Context context) {
        return new v(context);
    }

    public static v p0(Fragment supportFragment) {
        return new v(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void I(final List<PaiWeiDataBean.AdListBean> adListBean) {
        org.androidannotations.api.b.e("", new c(adListBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void J(final PaiWeiDataBean.MonthBestBean monthBestBean) {
        org.androidannotations.api.b.e("", new d(monthBestBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void K() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void L() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void M(final String code) {
        org.androidannotations.api.b.e("", new f(code), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void N(final String path) {
        org.androidannotations.api.b.e("", new g(path), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void O(final String message) {
        org.androidannotations.api.b.e("", new t(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void Q(final File file, final String fname) {
        org.androidannotations.api.a.l(new i("", 0L, "", file, fname));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void R() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void S(final PaiWeiUploadFileBean paiWeiUploadFileBean) {
        org.androidannotations.api.b.e("", new s(paiWeiUploadFileBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void T(final PaiWeiUploadFileNewBean paiWeiUploadFileBean) {
        org.androidannotations.api.b.e("", new r(paiWeiUploadFileBean), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f53230r1.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void o(final String playId) {
        org.androidannotations.api.a.l(new m("", 0L, "", playId));
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f53229q1);
        m0(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activty_game_paiwei);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f53182b = (LinearLayout) hasViews.internalFindViewById(R.id.select_rolo_ll);
        this.f53184c = (ImageView) hasViews.internalFindViewById(R.id.paiwei_back_iv);
        this.f53185d = (ImageView) hasViews.internalFindViewById(R.id.select_rolo_iv);
        this.f53186e = (ImageView) hasViews.internalFindViewById(R.id.paiwei_help_ib);
        this.f53187f = (Button) hasViews.internalFindViewById(R.id.paiwei_start_bt);
        this.f53189g = (TextView) hasViews.internalFindViewById(R.id.paiwei_start_time_tv);
        this.f53190h = (TextView) hasViews.internalFindViewById(R.id.paiwei_start_order_tv);
        this.f53191i = (TextView) hasViews.internalFindViewById(R.id.paiwei_start_name_tv);
        this.f53193j = (TextView) hasViews.internalFindViewById(R.id.paiwei_null_tv);
        this.f53194k = (TextView) hasViews.internalFindViewById(R.id.paiwei_info_tv2);
        this.f53195l = (TextView) hasViews.internalFindViewById(R.id.paiwei_info_tv4);
        this.f53197m = (TextView) hasViews.internalFindViewById(R.id.paiwei_cion_tv);
        this.f53198n = (TextView) hasViews.internalFindViewById(R.id.select_rolo_tx);
        this.f53199o = (ListView) hasViews.internalFindViewById(R.id.select_rolo_listview);
        this.f53200p = (ListView) hasViews.internalFindViewById(R.id.paiwei_listview);
        this.f53203q = (RelativeLayout) hasViews.internalFindViewById(R.id.info_rl);
        this.f53204r = (AutoScrollViewPager) hasViews.internalFindViewById(R.id.paiwei_ad_viewpager);
        this.f53205s = (SimpleDraweeView) hasViews.internalFindViewById(R.id.paiwei_ad_iv);
        LinearLayout linearLayout = this.f53182b;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new k());
        }
        ImageView imageView = this.f53184c;
        if (imageView != null) {
            imageView.setOnClickListener(new n());
        }
        ImageView imageView2 = this.f53186e;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new o());
        }
        Button button = this.f53187f;
        if (button != null) {
            button.setOnClickListener(new p());
        }
        p();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f53230r1.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void s() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.f53229q1.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        n0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void t() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void v(final String refresh) {
        org.androidannotations.api.a.l(new j("", 0L, "", refresh));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void w() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void y(final boolean isSu) {
        org.androidannotations.api.b.e("", new q(isSu), 0L);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.f53229q1.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f53229q1.a(this);
    }
}
