package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CollectionModuleFourActivity_ extends CollectionModuleFourActivity implements xc.a, zc.a, zc.b {
    public static final String COLLECTION_ID_EXTRA = "collection_id";
    public static final String EXT_BEAN_EXTRA = "extBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.CollectionModuleFourActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f50774b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CollectionModuleFourActivity_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.showLodingFailed();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f50777b;

        b(final List val$subList) {
            this.f50777b = val$subList;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.showMain(this.f50777b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.updateListFooter();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.noMore();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f50781b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50782c;

        e(final DownloadTask val$downloadTask, final int val$from) {
            this.f50781b = val$downloadTask;
            this.f50782c = val$from;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.updateUI(this.f50781b, this.f50782c);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.updateDownloadView();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50785b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50786c;

        g(final int val$switchInt, final int val$comment_count) {
            this.f50785b = val$switchInt;
            this.f50786c = val$comment_count;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.showMessageCount(this.f50785b, this.f50786c);
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionModuleFourActivity_.super.getListData();
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
                CollectionModuleFourActivity_.super.getDownloadTaskInfo();
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
            CollectionModuleFourActivity_.this.relodingimag();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.back_image();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.mg_loading();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.setNetwork();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.title_normal_search_img();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.title_normal_download_cdv();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourActivity_.this.comment();
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourActivity_.super.showLoding();
        }
    }

    public static class r extends org.androidannotations.api.builder.a<r> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50798a;

        public r(Context context) {
            super(context, (Class<?>) CollectionModuleFourActivity_.class);
        }

        public r a(String collection_id) {
            return (r) super.extra("collection_id", collection_id);
        }

        public r b(ExtBean extBean) {
            return (r) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50798a;
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
            super(fragment.getActivity(), (Class<?>) CollectionModuleFourActivity_.class);
            this.f50798a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        this.netConnectExcption = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.I);
        this.intentFilter1_.addAction(p5.a.G);
        registerReceiver(this.onPayGameSuccessReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("collection_id")) {
                this.collection_id = extras.getString("collection_id");
            }
            if (extras.containsKey("extBean")) {
                this.extBean = (ExtBean) extras.getSerializable("extBean");
            }
        }
    }

    public static r intent(Context context) {
        return new r(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void getListData() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void noMore() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.category_collection_rank);
    }

    @Override // com.join.mgps.activity.CollectionModuleFourActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onPayGameSuccessReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.mPtrFrame = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.rankListView = (XListView2) hasViews.internalFindViewById(R.id.rankListView);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.relodingimag = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.searchImg = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        this.commentParent = (RelativeLayout) hasViews.internalFindViewById(R.id.commentParent);
        this.comment = (ImageView) hasViews.internalFindViewById(R.id.comment);
        this.roundMessage = (TextView) hasViews.internalFindViewById(R.id.roundMessage);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.mg_loading);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
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
        ImageView imageView3 = this.searchImg;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new n());
        }
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new o());
        }
        ImageView imageView4 = this.comment;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new p());
        }
        afterViews();
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

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void showMain(final List<CollectionBeanSub> subList) {
        org.androidannotations.api.b.e("", new b(subList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void showMessageCount(final int switchInt, final int comment_count) {
        org.androidannotations.api.b.e("", new g(switchInt, comment_count), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void updateListFooter() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleFourActivity
    public void updateUI(final DownloadTask downloadTask, final int from) {
        org.androidannotations.api.b.e("", new e(downloadTask, from), 0L);
    }

    public static r intent(Fragment supportFragment) {
        return new r(supportFragment);
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
