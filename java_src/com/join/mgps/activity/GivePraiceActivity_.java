package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.ForumProfileMessageBean;
import com.join.mgps.dto.GivePriaceBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GivePraiceActivity_ extends GivePraiceActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.showLoding();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.hideLoadingView();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.showLodingFailed();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.setNoMore();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.showToast();
        }
    }

    class f extends org.androidannotations.api.a.c {
        f(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GivePraiceActivity_.super.getValueComment();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GivePraiceActivity_.super.getCommunityValue();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GivePraiceActivity_.this.setNetwork();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.Refresh();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f53581b;

        j(final List val$listData) {
            this.f53581b = val$listData;
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.cleanNotifyData(this.f53581b);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f53583b;

        k(final List val$listData2) {
            this.f53583b = val$listData2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.cleanNotifyData2(this.f53583b);
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.updateListHeadAndFoot();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.ShowTitle();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53587b;

        n(final int val$i) {
            this.f53587b = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.showNoData(this.f53587b);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f53589b;

        o(final List val$list) {
            this.f53589b = val$list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.adapterNotifyData(this.f53589b);
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f53591b;

        p(final List val$list) {
            this.f53591b = val$list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.adapterNotifyData2(this.f53591b);
        }
    }

    public static class q extends org.androidannotations.api.builder.a<q> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53593a;

        public q(Context context) {
            super(context, (Class<?>) GivePraiceActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53593a;
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

        public q(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GivePraiceActivity_.class);
            this.f53593a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static q intent(Context context) {
        return new q(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void Refresh() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void ShowTitle() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void adapterNotifyData(final List<ForumProfileMessageBean> list) {
        org.androidannotations.api.b.e("", new o(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void adapterNotifyData2(final List<GivePriaceBean.MessagesBean.DataBean> list) {
        org.androidannotations.api.b.e("", new p(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void cleanNotifyData(final List<ForumProfileMessageBean> listData) {
        org.androidannotations.api.b.e("", new j(listData), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void cleanNotifyData2(final List<GivePriaceBean.MessagesBean.DataBean> listData2) {
        org.androidannotations.api.b.e("", new k(listData2), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void getCommunityValue() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void getValueComment() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void hideLoadingView() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_give_price);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.ll_finsh = (LinearLayout) hasViews.internalFindViewById(R.id.ll_finsh);
        this.myswip = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.myswip);
        this.listview = (XListView2) hasViews.internalFindViewById(R.id.listview);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.iv_nome = (LinearLayout) hasViews.internalFindViewById(R.id.iv_nome);
        this.ll_title = (LinearLayout) hasViews.internalFindViewById(R.id.ll_title);
        Button button = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        this.setNetwork = button;
        if (button != null) {
            button.setOnClickListener(new h());
        }
        AfterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void setNoMore() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void showNoData(final int i10) {
        org.androidannotations.api.b.e("", new n(i10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void showToast() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void updateListHeadAndFoot() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    public static q intent(Fragment supportFragment) {
        return new q(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
