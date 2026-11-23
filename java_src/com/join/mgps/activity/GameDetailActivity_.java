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
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumResponseGame;
import com.join.mgps.dto.GameListItemBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameDetailActivity_ extends GameDetailActivity implements xc.a, zc.a, zc.b {
    public static final String PARENT_EXT_BEAN_EXTRA = "parentExtBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.setHeadView();
        }
    }

    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.iv_share();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.ShowNoData();
        }
    }

    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.smv_icon();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.setTv_btn();
        }
    }

    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.tv_name();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52415b;

        d(final int val$i) {
            this.f52415b = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.setLookUi(this.f52415b);
        }
    }

    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.tv_time();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.Refresh();
        }
    }

    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.setNetwork();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.updateListHeadAndFoot();
        }
    }

    class f0 implements View.OnClickListener {
        f0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.tv_btn();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumResponseGame f52422b;

        g(final ForumResponseGame val$data) {
            this.f52422b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.upNomore(this.f52422b);
        }
    }

    public static class g0 extends org.androidannotations.api.builder.a<g0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f52424a;

        public g0(Context context) {
            super(context, (Class<?>) GameDetailActivity_.class);
        }

        public g0 a(ExtBean parentExtBean) {
            return (g0) super.extra("parentExtBean", parentExtBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f52424a;
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

        public g0(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameDetailActivity_.class);
            this.f52424a = fragment;
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.upNomore2();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52426b;

        i(final int val$i) {
            this.f52426b = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.delectUi(this.f52426b);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.setRlModify();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.relodingimag();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f52430b;

        l(final List val$collectionBeanSubs) {
            this.f52430b = val$collectionBeanSubs;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.GetCopyData(this.f52430b);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumResponseGame f52432b;

        m(final ForumResponseGame val$data) {
            this.f52432b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.NoDataValue(this.f52432b);
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.cleanData();
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52435b;

        o(final String val$msg) {
            this.f52435b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.showToastSystem(this.f52435b);
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52437b;

        p(final int val$i) {
            this.f52437b = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.DelectLocaleGame(this.f52437b);
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.showLoding();
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.hideLoadingView();
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52441b;

        s(final String val$str) {
            this.f52441b = val$str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.Toast(this.f52441b);
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.showLodingFailed();
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameDetailActivity.k f52444b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f52445c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f52446d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ GameListItemBean f52447e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f52448f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f52449g;

        u(final GameDetailActivity.k val$myHolder, final String val$text_content, final String val$gameid, final GameListItemBean val$searchDataBean, final int val$type, final int val$position) {
            this.f52444b = val$myHolder;
            this.f52445c = val$text_content;
            this.f52446d = val$gameid;
            this.f52447e = val$searchDataBean;
            this.f52448f = val$type;
            this.f52449g = val$position;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetailActivity_.super.showPopupWindow(this.f52444b, this.f52445c, this.f52446d, this.f52447e, this.f52448f, this.f52449g);
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.changeModle();
        }
    }

    class w extends org.androidannotations.api.a.c {
        w(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetailActivity_.super.GetData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class x extends org.androidannotations.api.a.c {
        x(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetailActivity_.super.setLookState();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class y extends org.androidannotations.api.a.c {
        y(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetailActivity_.super.UpdateData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetailActivity_.this.iv_back();
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("parentExtBean")) {
            return;
        }
        this.parentExtBean = (ExtBean) extras.getSerializable("parentExtBean");
    }

    public static g0 intent(Context context) {
        return new g0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void DelectLocaleGame(final int i10) {
        org.androidannotations.api.b.e("", new p(i10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void GetCopyData(final List<GameListItemBean> collectionBeanSubs) {
        org.androidannotations.api.b.e("", new l(collectionBeanSubs), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void GetData() {
        org.androidannotations.api.a.l(new w("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void NoDataValue(final ForumResponseGame data) {
        org.androidannotations.api.b.e("", new m(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void Refresh() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void ShowNoData() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void Toast(final String str) {
        org.androidannotations.api.b.e("", new s(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void UpdateData() {
        org.androidannotations.api.a.l(new y("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void cleanData() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void delectUi(final int i10) {
        org.androidannotations.api.b.e("", new i(i10), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void hideLoadingView() {
        org.androidannotations.api.b.e("", new r(), 0L);
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
        setContentView(R.layout.activity_game_detail);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.iv_nome = (LinearLayout) hasViews.internalFindViewById(R.id.iv_nome);
        this.xrecycleview = (XRecyclerView) hasViews.internalFindViewById(R.id.xrecycleview);
        this.myswip = (LinearLayout) hasViews.internalFindViewById(R.id.myswip);
        this.listview = (XListView2) hasViews.internalFindViewById(R.id.listview);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.setNetwork = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        this.iv_back = (RelativeLayout) hasViews.internalFindViewById(R.id.iv_back);
        this.smv_icon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.smv_icon);
        this.tv_name = (TextView) hasViews.internalFindViewById(R.id.tv_name);
        this.tv_time = (TextView) hasViews.internalFindViewById(R.id.tv_time);
        this.tv_btn = (TextView) hasViews.internalFindViewById(R.id.tv_btn);
        this.iv_share = (ImageView) hasViews.internalFindViewById(R.id.iv_share);
        this.tv_game_title2 = (TextView) hasViews.internalFindViewById(R.id.tv_game_title2);
        this.tv_modify2 = (TextView) hasViews.internalFindViewById(R.id.tv_modify2);
        this.ll_gameform_title2 = (LinearLayout) hasViews.internalFindViewById(R.id.ll_gameform_title2);
        this.topBack = (SimpleDraweeView) hasViews.internalFindViewById(R.id.topBack);
        this.main = (LinearLayout) hasViews.internalFindViewById(R.id.main);
        this.rl_back_title = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_back_title);
        this.relodingimag = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.title = (TextView) hasViews.internalFindViewById(R.id.title);
        this.changeModle = (TextView) hasViews.internalFindViewById(R.id.changeModle);
        this.textView2 = (TextView) hasViews.internalFindViewById(R.id.textView2);
        this.failedMessage = (TextView) hasViews.internalFindViewById(R.id.failedMessage);
        ImageView imageView = this.relodingimag;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        TextView textView = this.changeModle;
        if (textView != null) {
            textView.setOnClickListener(new v());
        }
        RelativeLayout relativeLayout = this.iv_back;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new z());
        }
        ImageView imageView2 = this.iv_share;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new a0());
        }
        SimpleDraweeView simpleDraweeView = this.smv_icon;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new b0());
        }
        TextView textView2 = this.tv_name;
        if (textView2 != null) {
            textView2.setOnClickListener(new c0());
        }
        TextView textView3 = this.tv_time;
        if (textView3 != null) {
            textView3.setOnClickListener(new d0());
        }
        Button button = this.setNetwork;
        if (button != null) {
            button.setOnClickListener(new e0());
        }
        TextView textView4 = this.tv_btn;
        if (textView4 != null) {
            textView4.setOnClickListener(new f0());
        }
        AfterView();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void setHeadView() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void setLookState() {
        org.androidannotations.api.a.l(new x("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void setLookUi(final int i10) {
        org.androidannotations.api.b.e("", new d(i10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void setRlModify() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void setTv_btn() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void showPopupWindow(final GameDetailActivity.k myHolder, final String text_content, final String gameid, final GameListItemBean searchDataBean, final int type, final int position) {
        org.androidannotations.api.b.e("", new u(myHolder, text_content, gameid, searchDataBean, type, position), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void showToastSystem(final String msg) {
        org.androidannotations.api.b.e("", new o(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void upNomore(final ForumResponseGame data) {
        org.androidannotations.api.b.e("", new g(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void upNomore2() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameDetailActivity
    public void updateListHeadAndFoot() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    public static g0 intent(Fragment supportFragment) {
        return new g0(supportFragment);
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
