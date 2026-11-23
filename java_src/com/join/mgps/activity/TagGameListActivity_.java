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
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class TagGameListActivity_ extends TagGameListActivity implements xc.a, zc.a, zc.b {
    public static final String COMPANY_NAME_EXTRA = "companyName";
    public static final String FROM_EXTRA = "from";
    public static final String IS_SINGLE_EXTRA = "isSingle";
    public static final String TAG_EXTRA = "tag";
    public static final String TAG_ID_EXTRA = "tagId";
    public static final String TAG_TYPE_EXTRA = "tagType";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.TagGameListActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f56198b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            TagGameListActivity_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f56200b;

        a(final List val$subList) {
            this.f56200b = val$subList;
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.showMain(this.f56200b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.updateListFooter();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.noMore();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f56204b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f56205c;

        d(final DownloadTask val$downloadTask, final int val$from) {
            this.f56204b = val$downloadTask;
            this.f56205c = val$from;
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.updateUI(this.f56204b, this.f56205c);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.updateDownloadView();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56208b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f56209c;

        f(final int val$switchInt, final int val$comment_count) {
            this.f56208b = val$switchInt;
            this.f56209c = val$comment_count;
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.showMessageCount(this.f56208b, this.f56209c);
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                TagGameListActivity_.super.getListData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                TagGameListActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.relodingimag();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.back_image();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.mg_loading();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.setNetwork();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.title_normal_search_img();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagGameListActivity_.this.title_normal_download_cdv();
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.showLoding();
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagGameListActivity_.super.showLodingFailed();
        }
    }

    public static class q extends org.androidannotations.api.builder.a<q> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56221a;

        public q(Context context) {
            super(context, (Class<?>) TagGameListActivity_.class);
        }

        public q a(String companyName) {
            return (q) super.extra(TagGameListActivity_.COMPANY_NAME_EXTRA, companyName);
        }

        public q b(int from) {
            return (q) super.extra("from", from);
        }

        public q c(boolean isSingle) {
            return (q) super.extra("isSingle", isSingle);
        }

        public q d(String tag) {
            return (q) super.extra(TagGameListActivity_.TAG_EXTRA, tag);
        }

        public q e(int tagId) {
            return (q) super.extra("tagId", tagId);
        }

        public q f(String tagType) {
            return (q) super.extra(TagGameListActivity_.TAG_TYPE_EXTRA, tagType);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56221a;
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
            super(fragment.getActivity(), (Class<?>) TagGameListActivity_.class);
            this.f56221a = fragment;
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
            if (extras.containsKey("from")) {
                this.from = extras.getInt("from");
            }
            if (extras.containsKey("tagId")) {
                this.tagId = extras.getInt("tagId");
            }
            if (extras.containsKey(TAG_EXTRA)) {
                this.tag = extras.getString(TAG_EXTRA);
            }
            if (extras.containsKey(TAG_TYPE_EXTRA)) {
                this.tagType = extras.getString(TAG_TYPE_EXTRA);
            }
            if (extras.containsKey(COMPANY_NAME_EXTRA)) {
                this.companyName = extras.getString(COMPANY_NAME_EXTRA);
            }
            if (extras.containsKey("isSingle")) {
                this.isSingle = extras.getBoolean("isSingle");
            }
        }
    }

    public static q intent(Context context) {
        return new q(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void getListData() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void noMore() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.category_collection_rank);
    }

    @Override // com.join.mgps.activity.TagGameListActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
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
            imageView.setOnClickListener(new i());
        }
        ImageView imageView2 = this.back_image;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new j());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new l());
        }
        ImageView imageView3 = this.searchImg;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new m());
        }
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new n());
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
    @Override // com.join.mgps.activity.TagGameListActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void showMain(final List<CollectionBeanSub> subList) {
        org.androidannotations.api.b.e("", new a(subList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void showMessageCount(final int switchInt, final int comment_count) {
        org.androidannotations.api.b.e("", new f(switchInt, comment_count), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void updateListFooter() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagGameListActivity
    public void updateUI(final DownloadTask downloadTask, final int from) {
        org.androidannotations.api.b.e("", new d(downloadTask, from), 0L);
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
