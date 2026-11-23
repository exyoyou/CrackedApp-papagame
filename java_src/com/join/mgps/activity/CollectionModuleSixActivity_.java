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
public final class CollectionModuleSixActivity_ extends CollectionModuleSixActivity implements xc.a, zc.a, zc.b {
    public static final String COLLECTION_ID_EXTRA = "collection_id";
    public static final String EXT_BEAN_EXTRA = "extBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.CollectionModuleSixActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f50818b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CollectionModuleSixActivity_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.downLayout();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.comment();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.showLoding();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.showLodingFailed();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f50824b;

        e(final List val$collectionBeanSubList) {
            this.f50824b = val$collectionBeanSubList;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.showMain(this.f50824b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.updateListFooter();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.noMore();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.serverConnectionException();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.netWorkException();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.updateDownloadView();
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50831b;

        k(final int val$number) {
            this.f50831b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.updateDownloadingPoint(this.f50831b);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50833b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50834c;

        l(final int val$switchInt, final int val$comment_count) {
            this.f50833b = val$switchInt;
            this.f50834c = val$comment_count;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSixActivity_.super.showMessageCount(this.f50833b, this.f50834c);
        }
    }

    class m extends org.androidannotations.api.a.c {
        m(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionModuleSixActivity_.super.getBreakData();
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
                CollectionModuleSixActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.loding_faile();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.relodingimag();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.setNetwork();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.back_image();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.back_image_rl();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.title_normal_search_img();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.title_normal_search_img_rl();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSixActivity_.this.title_normal_download_cdv();
        }
    }

    public static class w extends org.androidannotations.api.builder.a<w> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50846a;

        public w(Context context) {
            super(context, (Class<?>) CollectionModuleSixActivity_.class);
        }

        public w a(String collection_id) {
            return (w) super.extra("collection_id", collection_id);
        }

        public w b(ExtBean extBean) {
            return (w) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50846a;
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

        public w(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CollectionModuleSixActivity_.class);
            this.f50846a = fragment;
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

    public static w intent(Context context) {
        return new w(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void getBreakData() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void netWorkException() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void noMore() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_collection_module_six);
    }

    @Override // com.join.mgps.activity.CollectionModuleSixActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onPayGameSuccessReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.mPtrFrame = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.breakListView = (XListView2) hasViews.internalFindViewById(R.id.breakListView);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.relodingimag = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.back_image_rl = (ImageView) hasViews.internalFindViewById(R.id.back_image_rl);
        this.module_six_rl = (RelativeLayout) hasViews.internalFindViewById(R.id.module_six_rl);
        this.moduleSixTitleRl = (RelativeLayout) hasViews.internalFindViewById(R.id.moduleSixTitleRl);
        this.title_bar_layout = (RelativeLayout) hasViews.internalFindViewById(R.id.title_bar_layout);
        this.searchImg = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.searchImg2 = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img_rl);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        this.downloadView2 = (RelativeLayout) hasViews.internalFindViewById(R.id.downLayout);
        this.biground = (TextView) hasViews.internalFindViewById(R.id.biground);
        this.imageLoading = (ImageView) hasViews.internalFindViewById(R.id.imageLoading);
        this.downloadLine = (ImageView) hasViews.internalFindViewById(R.id.downloadLine);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.comment);
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new o());
        }
        ImageView imageView = this.relodingimag;
        if (imageView != null) {
            imageView.setOnClickListener(new p());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new q());
        }
        ImageView imageView2 = this.back_image;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new r());
        }
        ImageView imageView3 = this.back_image_rl;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new s());
        }
        ImageView imageView4 = this.searchImg;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new t());
        }
        ImageView imageView5 = this.searchImg2;
        if (imageView5 != null) {
            imageView5.setOnClickListener(new u());
        }
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new v());
        }
        RelativeLayout relativeLayout = this.downloadView2;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new a());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void serverConnectionException() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void showMain(final List<CollectionBeanSub> collectionBeanSubList) {
        org.androidannotations.api.b.e("", new e(collectionBeanSubList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void showMessageCount(final int switchInt, final int comment_count) {
        org.androidannotations.api.b.e("", new l(switchInt, comment_count), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void updateDownloadingPoint(final int number) {
        org.androidannotations.api.b.e("", new k(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSixActivity
    public void updateListFooter() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    public static w intent(Fragment supportFragment) {
        return new w(supportFragment);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
