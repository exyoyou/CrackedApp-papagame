package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ClassfyTypeBean;
import com.join.mgps.dto.SearchAutoDataBean;
import com.join.mgps.dto.SearchGameListBean;
import com.zhy.view.flowlayout.TagFlowLayout3;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class SearchListActivity1_ extends SearchListActivity1 implements xc.a, zc.a, zc.b {
    public static final String CURRENT_TAB_EXTRA = "currentTab";
    public static final String FROM_EXTRA = "from";
    public static final String GAME_ID_EXTRA = "game_id";
    public static final String IS_NEED_RECOMMEND_EXTRA = "isNeedRecommend";
    public static final String KEYWORD_EXTRA = "keyword";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55714b;

        a(final int val$type) {
            this.f55714b = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.showTags(this.f55714b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f55716b;

        b(final boolean val$fresh) {
            this.f55716b = val$fresh;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.hideTags(this.f55716b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55718b;

        c(final String val$msg) {
            this.f55718b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.T(this.f55718b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f55720b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55721c;

        d(final List val$searchAutoDataBeans, final String val$KEY) {
            this.f55720b = val$searchAutoDataBeans;
            this.f55721c = val$KEY;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.updateUI(this.f55720b, this.f55721c);
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55723b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f55724c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final int val$pn, final boolean val$recommend) {
            super(id2, delay, serial);
            this.f55723b = val$pn;
            this.f55724c = val$recommend;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchListActivity1_.super.getSpecialZoneInfo(this.f55723b, this.f55724c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {
        f(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchListActivity1_.super.loadingTags();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55727b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final String val$key) {
            super(id2, delay, serial);
            this.f55727b = val$key;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchListActivity1_.super.getSearchAutoData(this.f55727b);
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
            SearchListActivity1_.this.back();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1_.this.search();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1_.this.clear();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1_.this.onClickFilter();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1_.this.onClickFilterClose();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1_.this.onClickFilterConfirm();
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.initViewpagerAndTab();
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchGameListBean f55736b;

        o(final SearchGameListBean val$listBean) {
            this.f55736b = val$listBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.updateSpecialZoneInfo(this.f55736b);
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ClassfyTypeBean f55738b;

        p(final ClassfyTypeBean val$data) {
            this.f55738b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.setClassifiesData(this.f55738b);
        }
    }

    public static class q extends org.androidannotations.api.builder.a<q> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55740a;

        public q(Context context) {
            super(context, (Class<?>) SearchListActivity1_.class);
        }

        public q a(int currentTab) {
            return (q) super.extra("currentTab", currentTab);
        }

        public q b(int from) {
            return (q) super.extra("from", from);
        }

        public q c(String game_id) {
            return (q) super.extra("game_id", game_id);
        }

        public q d(boolean isNeedRecommend) {
            return (q) super.extra(SearchListActivity1_.IS_NEED_RECOMMEND_EXTRA, isNeedRecommend);
        }

        public q e(String keyword) {
            return (q) super.extra("keyword", keyword);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55740a;
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
            super(fragment.getActivity(), (Class<?>) SearchListActivity1_.class);
            this.f55740a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("currentTab")) {
                this.currentTab = extras.getInt("currentTab");
            }
            if (extras.containsKey("game_id")) {
                this.game_id = extras.getString("game_id");
            }
            if (extras.containsKey("keyword")) {
                this.keyword = extras.getString("keyword");
            }
            if (extras.containsKey(IS_NEED_RECOMMEND_EXTRA)) {
                this.isNeedRecommend = extras.getBoolean(IS_NEED_RECOMMEND_EXTRA);
            }
            if (extras.containsKey("from")) {
                this.from = extras.getInt("from");
            }
        }
    }

    public static q intent(Context context) {
        return new q(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void T(final String msg) {
        org.androidannotations.api.b.e("", new c(msg), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void getSearchAutoData(final String key) {
        org.androidannotations.api.a.l(new g("", 0L, "", key));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void getSpecialZoneInfo(final int pn, final boolean recommend) {
        org.androidannotations.api.a.l(new e("", 0L, "", pn, recommend));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void hideTags(final boolean fresh) {
        org.androidannotations.api.b.e("", new b(fresh), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void initViewpagerAndTab() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void loadingTags() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    @Override // com.join.mgps.activity.SearchListActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.search_list_activity1);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.clear = hasViews.internalFindViewById(R.id.clear);
        this.tagBackground = hasViews.internalFindViewById(R.id.tagBackground);
        this.languages = (TagFlowLayout3) hasViews.internalFindViewById(R.id.languages);
        this.classifies = (TagFlowLayout3) hasViews.internalFindViewById(R.id.classifies);
        this.input = (EditText) hasViews.internalFindViewById(R.id.input);
        this.tabLayout = (TabLayout) hasViews.internalFindViewById(R.id.tabLayout);
        this.viewPager = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.autoListView = (ListView) hasViews.internalFindViewById(R.id.autoListView);
        this.iv_filter = (ImageView) hasViews.internalFindViewById(R.id.iv_filter);
        this.ll_filter = (LinearLayout) hasViews.internalFindViewById(R.id.ll_filter);
        this.back = (ImageView) hasViews.internalFindViewById(R.id.back);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.search);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.tv_filter_close);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.tv_filter_confirm);
        ImageView imageView = this.back;
        if (imageView != null) {
            imageView.setOnClickListener(new h());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new i());
        }
        View view = this.clear;
        if (view != null) {
            view.setOnClickListener(new j());
        }
        ImageView imageView2 = this.iv_filter;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new k());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new l());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new m());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void setClassifiesData(final ClassfyTypeBean data) {
        org.androidannotations.api.b.e("", new p(data), 0L);
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
    @Override // com.join.mgps.activity.SearchListActivity1
    public void showTags(final int type) {
        org.androidannotations.api.b.e("", new a(type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void updateSpecialZoneInfo(final SearchGameListBean listBean) {
        org.androidannotations.api.b.e("", new o(listBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void updateUI(final List<SearchAutoDataBean> searchAutoDataBeans, final String KEY) {
        org.androidannotations.api.b.e("", new d(searchAutoDataBeans, KEY), 0L);
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
