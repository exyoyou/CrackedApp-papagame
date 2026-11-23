package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CleanSpaceActivity_ extends CleanSpaceActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CleanSpaceActivity_.super.clean();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CleanSpaceActivity_.super.showLoding();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CleanSpaceActivity_.super.showLodingFailed();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CleanSpaceActivity_.super.showMain();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CleanSpaceActivity_.super.showNoData();
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f50573b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final List val$modGameIds) {
            super(id2, delay, serial);
            this.f50573b = val$modGameIds;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CleanSpaceActivity_.super.getModGameArchievePath(this.f50573b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50575b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final int val$index) {
            super(id2, delay, serial);
            this.f50575b = val$index;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CleanSpaceActivity_.super.getArchieveGameInfo(this.f50575b);
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
            CleanSpaceActivity_.this.back_image();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CleanSpaceActivity_.this.cardCleanSys();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CleanSpaceActivity_.this.tvClean();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CleanSpaceActivity_.this.relodingimag();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CleanSpaceActivity_.this.setNetwork();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CleanSpaceActivity_.super.updateData();
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CleanSpaceActivity_.super.initListData();
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50584b;

        o(final String val$path) {
            this.f50584b = val$path;
        }

        @Override // java.lang.Runnable
        public void run() {
            CleanSpaceActivity_.super.addCleanPath(this.f50584b);
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50586b;

        p(final String val$path) {
            this.f50586b = val$path;
        }

        @Override // java.lang.Runnable
        public void run() {
            CleanSpaceActivity_.super.removeCleanPath(this.f50586b);
        }
    }

    public static class q extends org.androidannotations.api.builder.a<q> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50588a;

        public q(Context context) {
            super(context, (Class<?>) CleanSpaceActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50588a;
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
            super(fragment.getActivity(), (Class<?>) CleanSpaceActivity_.class);
            this.f50588a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static q intent(Context context) {
        return new q(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CleanSpaceActivity
    public void addCleanPath(final String path) {
        org.androidannotations.api.b.e("", new o(path), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CleanSpaceActivity
    public void clean() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CleanSpaceActivity
    public void getArchieveGameInfo(final int index) {
        org.androidannotations.api.a.l(new g("", 0L, "", index));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CleanSpaceActivity
    public void getModGameArchievePath(final List<String> modGameIds) {
        org.androidannotations.api.a.l(new f("", 0L, "", modGameIds));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CleanSpaceActivity
    public void initListData() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.activity.CleanSpaceActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_clean_space);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.tvSysSpace = (TextView) hasViews.internalFindViewById(R.id.tvSysSpace);
        this.checkboxSys = (ImageView) hasViews.internalFindViewById(R.id.checkboxSys);
        this.tvTitleMyGame = (TextView) hasViews.internalFindViewById(R.id.tvTitleMyGame);
        this.rvMyGame = (RecyclerView) hasViews.internalFindViewById(R.id.rvMyGame);
        this.groupMyGame = (Group) hasViews.internalFindViewById(R.id.groupMyGame);
        this.groupContent = (Group) hasViews.internalFindViewById(R.id.groupContent);
        this.tvTitleSimulator = (TextView) hasViews.internalFindViewById(R.id.tvTitleSimulator);
        this.rvSimulator = (RecyclerView) hasViews.internalFindViewById(R.id.rvSimulator);
        this.groupSimulator = (Group) hasViews.internalFindViewById(R.id.groupSimulator);
        this.flBottom = (FrameLayout) hasViews.internalFindViewById(R.id.flBottom);
        this.tvTotalData = (TextView) hasViews.internalFindViewById(R.id.tvTotalData);
        this.tvClean = (TextView) hasViews.internalFindViewById(R.id.tvClean);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.empty_layout = (LinearLayout) hasViews.internalFindViewById(R.id.empty_layout);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.cardCleanSys);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new h());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new i());
        }
        TextView textView = this.tvClean;
        if (textView != null) {
            textView.setOnClickListener(new j());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new k());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new l());
        }
        afterviews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CleanSpaceActivity
    public void removeCleanPath(final String path) {
        org.androidannotations.api.b.e("", new p(path), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CleanSpaceActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CleanSpaceActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CleanSpaceActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CleanSpaceActivity
    public void showNoData() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CleanSpaceActivity
    public void updateData() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    public static q intent(Fragment supportFragment) {
        return new q(supportFragment);
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
