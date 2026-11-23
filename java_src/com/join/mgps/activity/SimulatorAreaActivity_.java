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
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.SimulatorAreaDataBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class SimulatorAreaActivity_ extends SimulatorAreaActivity implements xc.a, zc.a, zc.b {
    public static final String SIMULATOR_TITLE_EXTRA = "simulatorTitle";
    public static final String SIMULATOR_TYPE_EXTRA = "simulatorType";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.SimulatorAreaActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f55984b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SimulatorAreaActivity_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorAreaActivity_.super.updateDownloadView();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f55987b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55988c;

        b(final DownloadTask val$downloadTask, final int val$from) {
            this.f55987b = val$downloadTask;
            this.f55988c = val$from;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorAreaActivity_.super.updateUI(this.f55987b, this.f55988c);
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55990b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55991c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final String val$tag, final int val$pn) {
            super(id2, delay, serial);
            this.f55990b = val$tag;
            this.f55991c = val$pn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorAreaActivity_.super.loadData(this.f55990b, this.f55991c);
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
                SimulatorAreaActivity_.super.getDownloadTaskInfo();
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
            SimulatorAreaActivity_.this.loding_faile();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorAreaActivity_.this.setNetwork();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorAreaActivity_.this.title_normal_search_img();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorAreaActivity_.this.title_normal_download_cdv();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorAreaActivity_.this.back_image();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorAreaDataBean f55999b;

        j(final SimulatorAreaDataBean val$bean) {
            this.f55999b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorAreaActivity_.super.showUi(this.f55999b);
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorAreaActivity_.super.showFailLayout();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f56002b;

        l(final boolean val$isCanMore) {
            this.f56002b = val$isCanMore;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorAreaActivity_.super.updateListFooter(this.f56002b);
        }
    }

    public static class m extends org.androidannotations.api.builder.a<m> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56004a;

        public m(Context context) {
            super(context, (Class<?>) SimulatorAreaActivity_.class);
        }

        public m a(String simulatorTitle) {
            return (m) super.extra(SimulatorAreaActivity_.SIMULATOR_TITLE_EXTRA, simulatorTitle);
        }

        public m b(int simulatorType) {
            return (m) super.extra(SimulatorAreaActivity_.SIMULATOR_TYPE_EXTRA, simulatorType);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56004a;
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

        public m(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) SimulatorAreaActivity_.class);
            this.f56004a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.I);
        this.intentFilter1_.addAction(p5.a.G);
        registerReceiver(this.onPayGameSuccessReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(SIMULATOR_TYPE_EXTRA)) {
                this.simulatorType = extras.getInt(SIMULATOR_TYPE_EXTRA);
            }
            if (extras.containsKey(SIMULATOR_TITLE_EXTRA)) {
                this.simulatorTitle = extras.getString(SIMULATOR_TITLE_EXTRA);
            }
        }
    }

    public static m intent(Context context) {
        return new m(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void loadData(final String tag, final int pn) {
        org.androidannotations.api.a.l(new c("", 0L, "", tag, pn));
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_simulator_area);
    }

    @Override // com.join.mgps.activity.SimulatorAreaActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onPayGameSuccessReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.simulator_listview = (XListView2) hasViews.internalFindViewById(R.id.simulator_listview);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.title_normal_search_img = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.back_image);
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new e());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new f());
        }
        ImageView imageView = this.title_normal_search_img;
        if (imageView != null) {
            imageView.setOnClickListener(new g());
        }
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new h());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new i());
        }
        afterviews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
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
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void showFailLayout() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void showUi(final SimulatorAreaDataBean bean) {
        org.androidannotations.api.b.e("", new j(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void updateListFooter(final boolean isCanMore) {
        org.androidannotations.api.b.e("", new l(isCanMore), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorAreaActivity
    public void updateUI(final DownloadTask downloadTask, final int from) {
        org.androidannotations.api.b.e("", new b(downloadTask, from), 0L);
    }

    public static m intent(Fragment supportFragment) {
        return new m(supportFragment);
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
