package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.MustPlayAd;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MustPlayActivity_ extends MustPlayActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.MustPlayActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f54828b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MustPlayActivity_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.showLoding();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.showLodingFailed();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f54832b;

        c(final List val$head_ad) {
            this.f54832b = val$head_ad;
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.showHeaderView(this.f54832b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f54834b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54835c;

        d(final List val$mustPlayx, final int val$pn) {
            this.f54834b = val$mustPlayx;
            this.f54835c = val$pn;
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.updateList(this.f54834b, this.f54835c);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.updateListFooter();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.noMore();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MustPlayActivity_.super.updateDownloadView();
        }
    }

    class h extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54840b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String id2, long delay, String serial, final int val$pnNowLoad) {
            super(id2, delay, serial);
            this.f54840b = val$pnNowLoad;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MustPlayActivity_.super.loadData(this.f54840b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MustPlayActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.relodingimag();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.back_image();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.mg_loading();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.setNetwork();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.onClick(view);
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.onClick(view);
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.onClick(view);
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MustPlayActivity_.this.onClick(view);
        }
    }

    public static class r extends org.androidannotations.api.builder.a<r> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54851a;

        public r(Context context) {
            super(context, (Class<?>) MustPlayActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54851a;
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

        public r(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MustPlayActivity_.class);
            this.f54851a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.intentFilter1_.addAction(p5.a.I);
        this.intentFilter1_.addAction(p5.a.G);
        registerReceiver(this.onPayGameSuccessReceiver_, this.intentFilter1_);
    }

    public static r intent(Context context) {
        return new r(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void loadData(final int pnNowLoad) {
        org.androidannotations.api.a.l(new h("", 0L, "", pnNowLoad));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void noMore() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.must_play_layout);
    }

    @Override // com.join.mgps.activity.MustPlayActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onPayGameSuccessReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.listview = (XListView2) hasViews.internalFindViewById(R.id.listview);
        this.mPtrFrame = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.relodingimag = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.searchImg = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.mg_loading);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.playLeft);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.playRight);
        ImageView imageView = this.relodingimag;
        if (imageView != null) {
            imageView.setOnClickListener(new j());
        }
        ImageView imageView2 = this.back_image;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new k());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new l());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new m());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new n());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new o());
        }
        ImageView imageView3 = this.searchImg;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new p());
        }
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new q());
        }
        afterview();
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
    @Override // com.join.mgps.activity.MustPlayActivity
    public void showHeaderView(final List<MustPlayAd> head_ad) {
        org.androidannotations.api.b.e("", new c(head_ad), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void updateList(final List<l6.c> mustPlayx, final int pn) {
        org.androidannotations.api.b.e("", new d(mustPlayx, pn), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MustPlayActivity
    public void updateListFooter() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    public static r intent(Fragment supportFragment) {
        return new r(supportFragment);
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
