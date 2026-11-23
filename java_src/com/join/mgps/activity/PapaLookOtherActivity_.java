package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.CollectionDataBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class PapaLookOtherActivity_ extends PapaLookOtherActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.showLoding();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.showLodingFailed();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.showMain();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.updateDownloadView();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55270b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55271c;

        e(final int val$switchInt, final int val$comment_count) {
            this.f55270b = val$switchInt;
            this.f55271c = val$comment_count;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.showMessageCount(this.f55270b, this.f55271c);
        }
    }

    class f extends org.androidannotations.api.a.c {
        f(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaLookOtherActivity_.super.getLookOther();
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
                PapaLookOtherActivity_.super.getDownloadTaskInfo();
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
            PapaLookOtherActivity_.this.back_image();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaLookOtherActivity_.this.relodingimag();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaLookOtherActivity_.this.setNetwork();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaLookOtherActivity_.this.title_normal_search_img();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaLookOtherActivity_.this.title_normal_download_cdv();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaLookOtherActivity_.this.comment();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55281b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CollectionDataBean f55282c;

        n(final int val$index, final CollectionDataBean val$collectionDataBeanFirsts) {
            this.f55281b = val$index;
            this.f55282c = val$collectionDataBeanFirsts;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.setLinkType(this.f55281b, this.f55282c);
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.serverConnectionException();
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaLookOtherActivity_.super.netWorkException();
        }
    }

    public static class q extends org.androidannotations.api.builder.a<q> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55286a;

        public q(Context context) {
            super(context, (Class<?>) PapaLookOtherActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55286a;
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
            super(fragment.getActivity(), (Class<?>) PapaLookOtherActivity_.class);
            this.f55286a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        this.netConnectExcption = resources.getString(R.string.connect_server_excption);
    }

    public static q intent(Context context) {
        return new q(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void getLookOther() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void netWorkException() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.papeverday_new_activity_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.fragment = (FrameLayout) hasViews.internalFindViewById(R.id.fragment);
        this.searchImg = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        this.commentParent = (RelativeLayout) hasViews.internalFindViewById(R.id.commentParent);
        this.comment = (ImageView) hasViews.internalFindViewById(R.id.comment);
        this.roundMessage = (TextView) hasViews.internalFindViewById(R.id.roundMessage);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new h());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new i());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new j());
        }
        ImageView imageView = this.searchImg;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new l());
        }
        ImageView imageView2 = this.comment;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new m());
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void serverConnectionException() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void setLinkType(final int index, final CollectionDataBean collectionDataBeanFirsts) {
        org.androidannotations.api.b.e("", new n(index, collectionDataBeanFirsts), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void showMessageCount(final int switchInt, final int comment_count) {
        org.androidannotations.api.b.e("", new e(switchInt, comment_count), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaLookOtherActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new d(), 0L);
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
