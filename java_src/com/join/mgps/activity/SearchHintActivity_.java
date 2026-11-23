package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.search.SearchIndexData;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.dto.SScrollingTxtBeanV2;
import com.join.mgps.dto.SearchAutoDataBean;
import com.join.mgps.pref.PrefDef_;
import com.youth.banner.Banner;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class SearchHintActivity_ extends SearchHintActivity implements xc.a, zc.a, zc.b {
    public static final String FROM_EXTRA = "from";
    public static final String INTERVAL_EXTRA = "interval";
    public static final String KEYWORDS_EXTRA = "keywords";
    public static final String KEYWORD_EXTRA = "keyword";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver recviedBespeakReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.SearchHintActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SearchHintActivity_.this.recviedBespeak(intent);
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.showHint();
        }
    }

    class a0 implements Runnable {
        a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.updateUi();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.showHistory();
        }
    }

    public static class b0 extends org.androidannotations.api.builder.a<b0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55608a;

        public b0(Context context) {
            super(context, (Class<?>) SearchHintActivity_.class);
        }

        public b0 a(int from) {
            return (b0) super.extra("from", from);
        }

        public b0 b(int interval) {
            return (b0) super.extra("interval", interval);
        }

        public b0 c(String keyword) {
            return (b0) super.extra("keyword", keyword);
        }

        public b0 d(ArrayList<SScrollingTxtBeanV2> keywords) {
            return (b0) super.extra(SearchHintActivity_.KEYWORDS_EXTRA, keywords);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55608a;
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

        public b0(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) SearchHintActivity_.class);
            this.f55608a = fragment;
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.showRecommend();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55610b;

        d(final int val$style) {
            this.f55610b = val$style;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.changeSearchBarLayout(this.f55610b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchIndexData f55612b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f55613c;

        e(final SearchIndexData val$bean, final boolean val$isFromNet) {
            this.f55612b = val$bean;
            this.f55613c = val$isFromNet;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.updateHint(this.f55612b, this.f55613c);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.notifyAdapter();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55616b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55617c;

        g(final String val$gameId, final int val$game_book) {
            this.f55616b = val$gameId;
            this.f55617c = val$game_book;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.updateBespeak(this.f55616b, this.f55617c);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f55619b;

        h(final List val$autoBeanList) {
            this.f55619b = val$autoBeanList;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.updateHistoryList(this.f55619b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f55621b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55622c;

        i(final List val$searchAutoDataBeans, final int val$i) {
            this.f55621b = val$searchAutoDataBeans;
            this.f55622c = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.updateUI(this.f55621b, this.f55622c);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.serverConnectionException();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.netWorkException();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55626b;

        l(final int val$state) {
            this.f55626b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.changeLoadingState(this.f55626b);
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55628b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f55628b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.sendGameCount(this.f55628b);
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
                SearchHintActivity_.super.loadingDB();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {
        o(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.getHint();
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
                SearchHintActivity_.super.clearHistory();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55633b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String id2, long delay, String serial, final String val$keyword) {
            super(id2, delay, serial);
            this.f55633b = val$keyword;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.getAutoSearchList(this.f55633b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55635b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55636c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String id2, long delay, String serial, final String val$key, final int val$type) {
            super(id2, delay, serial);
            this.f55635b = val$key;
            this.f55636c = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.getSearchAutoData(this.f55635b, this.f55636c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s extends org.androidannotations.api.a.c {
        s(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.getHistoryFromDb();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity_.this.searchClear();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity_.this.img_search();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity_.this.tv_search();
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity_.this.img_iconback();
        }
    }

    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity_.this.clearHistoryx();
        }
    }

    class y implements TextView.OnEditorActionListener {
        y() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int actionId, KeyEvent event) {
            return SearchHintActivity_.this.searchEditText(textView, actionId, event);
        }
    }

    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.showKeyBorad();
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        this.netConnectExcption = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.intentFilter1_.addAction("com.broadcast.bespeak.sussess");
        registerReceiver(this.recviedBespeakReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("keyword")) {
                this.keyword = extras.getString("keyword");
            }
            if (extras.containsKey("from")) {
                this.from = extras.getInt("from");
            }
            if (extras.containsKey(KEYWORDS_EXTRA)) {
                this.keywords = (ArrayList) extras.getSerializable(KEYWORDS_EXTRA);
            }
            if (extras.containsKey("interval")) {
                this.interval = extras.getInt("interval");
            }
        }
    }

    public static b0 intent(Context context) {
        return new b0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new l(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void changeSearchBarLayout(final int style) {
        org.androidannotations.api.b.e("", new d(style), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void clearHistory() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void getAutoSearchList(final String keyword) {
        org.androidannotations.api.a.l(new q("", 0L, "", keyword));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void getHint() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void getHistoryFromDb() {
        org.androidannotations.api.a.l(new s("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void getSearchAutoData(final String key, final int type) {
        org.androidannotations.api.a.l(new r("", 0L, "", key, type));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void loadingDB() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void netWorkException() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void notifyAdapter() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.search_hint_activity);
    }

    @Override // com.join.mgps.activity.SearchHintActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.recviedBespeakReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.requestLayout = hasViews.internalFindViewById(R.id.requestLayout);
        this.vf = (ViewPager2) hasViews.internalFindViewById(R.id.vf);
        this.searchEditText = (EditText) hasViews.internalFindViewById(R.id.searchEditText);
        this.img_search = (ImageView) hasViews.internalFindViewById(R.id.img_search);
        this.searchClear = (ImageView) hasViews.internalFindViewById(R.id.searchClear);
        this.ivClearHistory = (ImageView) hasViews.internalFindViewById(R.id.clearHistoryx);
        this.img_iconback = (ImageView) hasViews.internalFindViewById(R.id.img_iconback);
        this.clearLayout = (LinearLayout) hasViews.internalFindViewById(R.id.clearLayout);
        this.recommend = hasViews.internalFindViewById(R.id.recommend);
        this.llRecent = hasViews.internalFindViewById(R.id.llRecent);
        this.f55553ad = (SimpleDraweeView) hasViews.internalFindViewById(R.id.f35452ad);
        this.banner = (Banner) hasViews.internalFindViewById(R.id.banner);
        this.viewPager = (ViewPager2) hasViews.internalFindViewById(R.id.viewPager);
        this.tabLayout = (TabLayout) hasViews.internalFindViewById(R.id.tabLayout);
        this.historyFlow = (FlowLayout) hasViews.internalFindViewById(R.id.historyFlow);
        this.guessLickFlow = (FlowLayout) hasViews.internalFindViewById(R.id.guessLickFlow);
        this.guessliketext = hasViews.internalFindViewById(R.id.guessliketext);
        this.search_bar_layout = hasViews.internalFindViewById(R.id.search_bar_layout);
        this.lLayout_search = (RelativeLayout) hasViews.internalFindViewById(R.id.lLayout_search);
        this.tv_search = (TextView) hasViews.internalFindViewById(R.id.tv_search);
        this.autoListView = (ListView) hasViews.internalFindViewById(R.id.autoListView);
        this.statubar = hasViews.internalFindViewById(R.id.statubar);
        ImageView imageView = this.searchClear;
        if (imageView != null) {
            imageView.setOnClickListener(new t());
        }
        ImageView imageView2 = this.img_search;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new u());
        }
        TextView textView = this.tv_search;
        if (textView != null) {
            textView.setOnClickListener(new v());
        }
        ImageView imageView3 = this.img_iconback;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new w());
        }
        ImageView imageView4 = this.ivClearHistory;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new x());
        }
        EditText editText = this.searchEditText;
        if (editText != null) {
            editText.setOnEditorActionListener(new y());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void sendGameCount(final String gameId) {
        org.androidannotations.api.a.l(new m("", 0L, "", gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void serverConnectionException() {
        org.androidannotations.api.b.e("", new j(), 0L);
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
    @Override // com.join.mgps.activity.SearchHintActivity
    public void showHint() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void showHistory() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void showKeyBorad() {
        org.androidannotations.api.b.e("", new z(), 300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void showRecommend() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void updateBespeak(final String gameId, final int game_book) {
        org.androidannotations.api.b.e("", new g(gameId, game_book), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void updateHint(final SearchIndexData bean, final boolean isFromNet) {
        org.androidannotations.api.b.e("", new e(bean, isFromNet), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void updateHistoryList(final List<SearchAutoDataBean> autoBeanList) {
        org.androidannotations.api.b.e("", new h(autoBeanList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void updateUI(final List<SearchAutoDataBean> searchAutoDataBeans, final int i10) {
        org.androidannotations.api.b.e("", new i(searchAutoDataBeans, i10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void updateUi() {
        org.androidannotations.api.b.e("", new a0(), 0L);
    }

    public static b0 intent(Fragment supportFragment) {
        return new b0(supportFragment);
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
