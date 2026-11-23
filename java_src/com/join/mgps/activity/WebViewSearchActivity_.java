package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class WebViewSearchActivity_ extends WebViewSearchActivity implements xc.a, zc.a, zc.b {
    public static final String DOWNLOAD_TASK_EXTRA = "downloadTask";
    public static final String URL_EXTRA = "url";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.refreshUi();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.closeTip();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.showResult();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56417b;

        d(final int val$downloadingNumber) {
            this.f56417b = val$downloadingNumber;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.updateLine(this.f56417b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56419b;

        e(final int val$number) {
            this.f56419b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.updateDownloadingPoint(this.f56419b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.updateNoOpenPoint();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.updateHidePoint();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f56423b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f56424c;

        h(final DownloadTask val$downloadTask, final int val$from) {
            this.f56423b = val$downloadTask;
            this.f56424c = val$from;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.receiveStart(this.f56423b, this.f56424c);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f56426b;

        i(final DownloadTask val$downloadTask) {
            this.f56426b = val$downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.receiveSuccess(this.f56426b);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f56428b;

        j(final DownloadTask val$downloadTask) {
            this.f56428b = val$downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.receiveDelete(this.f56428b);
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.prev();
        }
    }

    class l extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56431b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String id2, long delay, String serial, final String val$html) {
            super(id2, delay, serial);
            this.f56431b = val$html;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                WebViewSearchActivity_.super.acquirePackageFromBaiduByHtml(this.f56431b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56433b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final String val$url) {
            super(id2, delay, serial);
            this.f56433b = val$url;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                WebViewSearchActivity_.super.acquirePackageFromBaidu(this.f56433b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56435b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String id2, long delay, String serial, final String val$html) {
            super(id2, delay, serial);
            this.f56435b = val$html;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                WebViewSearchActivity_.super.acquirePackageByHtml(this.f56435b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56437b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final String val$url) {
            super(id2, delay, serial);
            this.f56437b = val$url;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                WebViewSearchActivity_.super.acquirePackageFromSpecifyDomain(this.f56437b);
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
                WebViewSearchActivity_.super.checkDownlodingNumber();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {
        q(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                WebViewSearchActivity_.super.getdownloadTask();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.next();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.refresh();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.layoutFail();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.sniffer();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity_.this.close();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.showLoading();
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.showLoadingFailed();
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewSearchActivity_.super.showContent();
        }
    }

    public static class z extends org.androidannotations.api.builder.a<z> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56449a;

        public z(Context context) {
            super(context, (Class<?>) WebViewSearchActivity_.class);
        }

        public z a(DownloadTask downloadTask) {
            return (z) super.extra("downloadTask", downloadTask);
        }

        public z b(String url) {
            return (z) super.extra("url", url);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56449a;
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

        public z(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) WebViewSearchActivity_.class);
            this.f56449a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("url")) {
                this.url = extras.getString("url");
            }
            if (extras.containsKey("downloadTask")) {
                this.downloadTask = (DownloadTask) extras.getSerializable("downloadTask");
            }
        }
    }

    public static z intent(Context context) {
        return new z(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void acquirePackageByHtml(final String html) {
        org.androidannotations.api.a.l(new n("", 0L, "", html));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void acquirePackageFromBaidu(final String url) {
        org.androidannotations.api.a.l(new m("", 0L, "", url));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void acquirePackageFromBaiduByHtml(final String html) {
        org.androidannotations.api.a.l(new l("", 0L, "", html));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void acquirePackageFromSpecifyDomain(final String url) {
        org.androidannotations.api.a.l(new o("", 0L, "", url));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void checkDownlodingNumber() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void closeTip() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void getdownloadTask() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
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
        setContentView(R.layout.activity_web_view_search);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.bottomSheetLayout = (BottomSheetLayout) hasViews.internalFindViewById(R.id.bottomSheetLayout);
        this.close = hasViews.internalFindViewById(R.id.close);
        this.inputUrl = (TextView) hasViews.internalFindViewById(R.id.inputUrl);
        this.downloadCenter = hasViews.internalFindViewById(R.id.downloadCenter);
        this.web = (LJWebView) hasViews.internalFindViewById(R.id.web);
        this.layoutFail = hasViews.internalFindViewById(R.id.layoutFail);
        this.layoutLoading = hasViews.internalFindViewById(R.id.layoutLoading);
        this.prev = hasViews.internalFindViewById(R.id.prev);
        this.next = hasViews.internalFindViewById(R.id.next);
        this.prevImg = (ImageView) hasViews.internalFindViewById(R.id.prevImg);
        this.nextImg = (ImageView) hasViews.internalFindViewById(R.id.nextImg);
        this.refresh = hasViews.internalFindViewById(R.id.refresh);
        this.sniffer = hasViews.internalFindViewById(R.id.sniffer);
        this.tipSniffing = (TextView) hasViews.internalFindViewById(R.id.tipSniffing);
        View view = this.prev;
        if (view != null) {
            view.setOnClickListener(new k());
        }
        View view2 = this.next;
        if (view2 != null) {
            view2.setOnClickListener(new r());
        }
        View view3 = this.refresh;
        if (view3 != null) {
            view3.setOnClickListener(new s());
        }
        View view4 = this.layoutFail;
        if (view4 != null) {
            view4.setOnClickListener(new t());
        }
        View view5 = this.sniffer;
        if (view5 != null) {
            view5.setOnClickListener(new u());
        }
        View view6 = this.close;
        if (view6 != null) {
            view6.setOnClickListener(new v());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void receiveDelete(final DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new j(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void receiveStart(final DownloadTask downloadTask, final int from) {
        org.androidannotations.api.b.e("", new h(downloadTask, from), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void receiveSuccess(final DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new i(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void refreshUi() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // com.join.mgps.activity.WebViewSearchActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void showContent() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void showLoading() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void showLoadingFailed() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void showResult() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void updateDownloadingPoint(final int number) {
        org.androidannotations.api.b.e("", new e(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void updateHidePoint() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void updateLine(final int downloadingNumber) {
        org.androidannotations.api.b.e("", new d(downloadingNumber), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.WebViewSearchActivity
    public void updateNoOpenPoint() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    public static z intent(Fragment supportFragment) {
        return new z(supportFragment);
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
