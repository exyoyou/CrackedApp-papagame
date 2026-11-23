package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.SlidingTabLayoutNoViewPager;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;
import com.join.mgps.dto.ClassifyGameTagBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ClassifyGameActivity_ extends ClassifyGameActivity implements xc.a, zc.a, zc.b {
    public static final String GAME_TYPE_ID_EXTRA = "gameTypeId";
    public static final String ROM_TYPE_ID_EXTRA = "romTypeId";
    public static final String TITLE_EXTRA = "title";
    public static final String TOP_TITLE_EXTRA = "topTitle";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.showNoData();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.updateDownloadView();
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ClassifyGameActivity_.super.loadData();
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
                ClassifyGameActivity_.super.getDownloadTaskInfo();
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
            ClassifyGameActivity_.this.selectedType();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.this.setAll();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.this.title_normal_search_img();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.this.title_normal_download_cdv();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyGameActivity_.this.back_image();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SlidingTabLayoutNoViewPager f50496b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50497c;

        j(final SlidingTabLayoutNoViewPager val$table, final int val$postion) {
            this.f50496b = val$table;
            this.f50497c = val$postion;
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.updateTable(this.f50496b, this.f50497c);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ClassifyGameTagBean f50499b;

        k(final ClassifyGameTagBean val$classifyGameTagBean) {
            this.f50499b = val$classifyGameTagBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.showDataF(this.f50499b);
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.changeViewPageByTitle();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyGameActivity_.super.notifyDataSetChanged();
        }
    }

    public static class n extends org.androidannotations.api.builder.a<n> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50503a;

        public n(Context context) {
            super(context, (Class<?>) ClassifyGameActivity_.class);
        }

        public n a(int gameTypeId) {
            return (n) super.extra(ClassifyGameActivity_.GAME_TYPE_ID_EXTRA, gameTypeId);
        }

        public n b(int romTypeId) {
            return (n) super.extra(ClassifyGameActivity_.ROM_TYPE_ID_EXTRA, romTypeId);
        }

        public n c(String title) {
            return (n) super.extra("title", title);
        }

        public n d(String topTitle) {
            return (n) super.extra(ClassifyGameActivity_.TOP_TITLE_EXTRA, topTitle);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50503a;
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

        public n(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) ClassifyGameActivity_.class);
            this.f50503a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(GAME_TYPE_ID_EXTRA)) {
                this.gameTypeId = extras.getInt(GAME_TYPE_ID_EXTRA);
            }
            if (extras.containsKey(ROM_TYPE_ID_EXTRA)) {
                this.romTypeId = extras.getInt(ROM_TYPE_ID_EXTRA);
            }
            if (extras.containsKey("title")) {
                this.title = extras.getString("title");
            }
            if (extras.containsKey(TOP_TITLE_EXTRA)) {
                this.topTitle = extras.getString(TOP_TITLE_EXTRA);
            }
        }
    }

    public static n intent(Context context) {
        return new n(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void changeViewPageByTitle() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void loadData() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void notifyDataSetChanged() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_classify_game);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.loading_none = (LinearLayout) hasViews.internalFindViewById(R.id.loading_none);
        this.refreshx = (SwipeRefresh) hasViews.internalFindViewById(R.id.refreshx);
        this.appbar = (AppBarLayout) hasViews.internalFindViewById(R.id.appbar);
        this.toolbar = (Toolbar) hasViews.internalFindViewById(R.id.toolbar);
        this.table1 = (SlidingTabLayoutNoViewPager) hasViews.internalFindViewById(R.id.table1);
        this.table2 = (SlidingTabLayoutNoViewPager) hasViews.internalFindViewById(R.id.table2);
        this.table3 = (SlidingTabLayoutNoViewPager) hasViews.internalFindViewById(R.id.table3);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        this.title_normal_search_img = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.mViewpagerV4 = (FrameLayout) hasViews.internalFindViewById(R.id.mViewpagerV4);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.selectedType = (TextView) hasViews.internalFindViewById(R.id.selectedType);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setAll);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.back_image);
        TextView textView = this.selectedType;
        if (textView != null) {
            textView.setOnClickListener(new e());
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
        afterViews();
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
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void showDataF(final ClassifyGameTagBean classifyGameTagBean) {
        org.androidannotations.api.b.e("", new k(classifyGameTagBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void showNoData() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyGameActivity
    public void updateTable(final SlidingTabLayoutNoViewPager table, final int postion) {
        org.androidannotations.api.b.e("", new j(table, postion), 500L);
    }

    public static n intent(Fragment supportFragment) {
        return new n(supportFragment);
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
