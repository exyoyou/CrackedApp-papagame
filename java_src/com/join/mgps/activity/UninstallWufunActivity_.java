package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ArchievePathMultiBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.UninstallGuessLikeBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class UninstallWufunActivity_ extends UninstallWufunActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunActivity_.super.showGameIcon();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UninstallGuessLikeBean f56252b;

        b(final UninstallGuessLikeBean val$data) {
            this.f56252b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunActivity_.super.updateData(this.f56252b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunActivity_.super.showMain();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunActivity_.super.showLoding();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunActivity_.super.showLodingFailed();
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f56257b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final List val$modGameIds) {
            super(id2, delay, serial);
            this.f56257b = val$modGameIds;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UninstallWufunActivity_.super.getModGameArchievePath(this.f56257b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56259b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final int val$index) {
            super(id2, delay, serial);
            this.f56259b = val$index;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UninstallWufunActivity_.super.getArchieveGameInfo(this.f56259b);
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
                UninstallWufunActivity_.super.getGuessLikeData();
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
            UninstallWufunActivity_.this.setNetwork();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunActivity_.this.relodingimag();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunActivity_.this.tvClean();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunActivity_.this.tvFinish();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunActivity_.this.back_image();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunActivity_.this.tvUninstall();
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunActivity_.super.refresh();
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunActivity_.super.getDownloadTask();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResponseModel f56270b;

        q(final ResponseModel val$main) {
            this.f56270b = val$main;
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunActivity_.super.updateDatas(this.f56270b);
        }
    }

    public static class r extends org.androidannotations.api.builder.a<r> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56272a;

        public r(Context context) {
            super(context, (Class<?>) UninstallWufunActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56272a;
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
            super(fragment.getActivity(), (Class<?>) UninstallWufunActivity_.class);
            this.f56272a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static r intent(Context context) {
        return new r(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunActivity
    public void getArchieveGameInfo(final int index) {
        org.androidannotations.api.a.l(new g("", 0L, "", index));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunActivity
    public void getDownloadTask() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunActivity
    public void getGuessLikeData() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunActivity
    public void getModGameArchievePath(final List<String> modGameIds) {
        org.androidannotations.api.a.l(new f("", 0L, "", modGameIds));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_uninstall_wufun);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.statubar = hasViews.internalFindViewById(R.id.statubar);
        this.headview = (RelativeLayout) hasViews.internalFindViewById(R.id.headview);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.cardClean = (CardView) hasViews.internalFindViewById(R.id.cardClean);
        this.tvCleanSpace = (TextView) hasViews.internalFindViewById(R.id.tvCleanSpace);
        this.tvClean = (TextView) hasViews.internalFindViewById(R.id.tvClean);
        this.llLocalArchiveGame = (LinearLayout) hasViews.internalFindViewById(R.id.llLocalArchiveGame);
        this.tvTotalGamePkgSize = (TextView) hasViews.internalFindViewById(R.id.tvTotalGamePkgSize);
        this.tvTotalDataSize = (TextView) hasViews.internalFindViewById(R.id.tvTotalDataSize);
        this.cardRecom = (CardView) hasViews.internalFindViewById(R.id.cardRecom);
        this.flRecom = (FrameLayout) hasViews.internalFindViewById(R.id.flRecom);
        this.loding_layout = hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = hasViews.internalFindViewById(R.id.loding_faile);
        this.tvGameTag = (TextView) hasViews.internalFindViewById(R.id.tvGameTag);
        this.rvRecom = (RecyclerView) hasViews.internalFindViewById(R.id.rvRecom);
        this.tvFinish = (TextView) hasViews.internalFindViewById(R.id.tvFinish);
        this.tvUninstall = (TextView) hasViews.internalFindViewById(R.id.tvUninstall);
        this.tvNoArchieveGame = (TextView) hasViews.internalFindViewById(R.id.tvNoArchieveGame);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new i());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new j());
        }
        TextView textView = this.tvClean;
        if (textView != null) {
            textView.setOnClickListener(new k());
        }
        TextView textView2 = this.tvFinish;
        if (textView2 != null) {
            textView2.setOnClickListener(new l());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new m());
        }
        TextView textView3 = this.tvUninstall;
        if (textView3 != null) {
            textView3.setOnClickListener(new n());
        }
        afterviews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunActivity
    public void refresh() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunActivity
    public void showGameIcon() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunActivity
    public void updateData(final UninstallGuessLikeBean data) {
        org.androidannotations.api.b.e("", new b(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunActivity
    public void updateDatas(final ResponseModel<ArchievePathMultiBean> main) {
        org.androidannotations.api.b.e("", new q(main), 0L);
    }

    public static r intent(Fragment supportFragment) {
        return new r(supportFragment);
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
