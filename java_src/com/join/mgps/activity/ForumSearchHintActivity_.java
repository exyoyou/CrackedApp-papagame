package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadingImageView;
import com.join.mgps.customview.MarqueeTextView;
import com.join.mgps.customview.NoScrollListView;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.customview.XListView2;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ForumSearchHintActivity_ extends ForumSearchHintActivity implements xc.a, zc.a, zc.b {
    public static final String FID_EXTRA = "fid";
    public static final String KEYWORD_EXTRA = "keyword";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.netWorkException();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.stopLoadMore();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.setXListNoMore();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.showPullLoad();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.hidePullLoad();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.stopXlistRefreshAndLoadMore();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52041b;

        g(final String val$msg) {
            this.f52041b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.showToast(this.f52041b);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.notifyUi();
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumSearchHintActivity_.super.load();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {
        j(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumSearchHintActivity_.super.clearHistory();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumSearchHintActivity_.this.img_search();
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumSearchHintActivity_.super.loadSearchIndex();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {
        m(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumSearchHintActivity_.super.loadSearchHistory();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52049b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52050c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String id2, long delay, String serial, final String val$keyword, final int val$page) {
            super(id2, delay, serial);
            this.f52049b = val$keyword;
            this.f52050c = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumSearchHintActivity_.super.loadSearchQuery(this.f52049b, this.f52050c);
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
            ForumSearchHintActivity_.this.img_iconback();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumSearchHintActivity_.this.clearLayout();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumSearchHintActivity_.this.change_data();
        }
    }

    class r implements AdapterView.OnItemClickListener {
        r() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            ForumSearchHintActivity_.this.historyListView(position);
        }
    }

    class s implements TextView.OnEditorActionListener {
        s() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int actionId, KeyEvent event) {
            return ForumSearchHintActivity_.this.searchEditText(textView, actionId, event);
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.hideKeyboard();
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.updateUI();
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.serverConnectionException();
        }
    }

    public static class w extends org.androidannotations.api.builder.a<w> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f52060a;

        public w(Context context) {
            super(context, (Class<?>) ForumSearchHintActivity_.class);
        }

        public w a(int fid) {
            return (w) super.extra("fid", fid);
        }

        public w b(String keyword) {
            return (w) super.extra("keyword", keyword);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f52060a;
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
            super(fragment.getActivity(), (Class<?>) ForumSearchHintActivity_.class);
            this.f52060a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        this.netConnectExcption = resources.getString(R.string.connect_server_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("keyword")) {
                this.keyword = extras.getString("keyword");
            }
            if (extras.containsKey("fid")) {
                this.fid = extras.getInt("fid");
            }
        }
    }

    public static w intent(Context context) {
        return new w(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void clearHistory() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void hideKeyboard() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void hidePullLoad() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void load() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void loadSearchHistory() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void loadSearchIndex() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void loadSearchQuery(final String keyword, final int page) {
        org.androidannotations.api.a.l(new n("", 0L, "", keyword, page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void netWorkException() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void notifyUi() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.forum_search_hint_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.searchEditText = (EditText) hasViews.internalFindViewById(R.id.searchEditText);
        this.img_search = (ImageView) hasViews.internalFindViewById(R.id.img_search);
        this.img_iconback = (ImageView) hasViews.internalFindViewById(R.id.img_iconback);
        this.clearLayout = (LinearLayout) hasViews.internalFindViewById(R.id.clearLayout);
        this.search_list_layout = (LinearLayout) hasViews.internalFindViewById(R.id.search_list_layout);
        this.gridView = (GridView) hasViews.internalFindViewById(R.id.gridView);
        this.allSearch = (LinearLayout) hasViews.internalFindViewById(R.id.allSearch);
        this.layout1 = (RelativeLayout) hasViews.internalFindViewById(R.id.layout1);
        this.layout2 = (RelativeLayout) hasViews.internalFindViewById(R.id.layout2);
        this.layout3 = (RelativeLayout) hasViews.internalFindViewById(R.id.layout3);
        this.layout4 = (RelativeLayout) hasViews.internalFindViewById(R.id.layout4);
        this.layout5 = (RelativeLayout) hasViews.internalFindViewById(R.id.layout5);
        this.layout6 = (RelativeLayout) hasViews.internalFindViewById(R.id.layout6);
        this.tv1 = (TextView) hasViews.internalFindViewById(R.id.tv1);
        this.tv2 = (TextView) hasViews.internalFindViewById(R.id.tv2);
        this.tv3 = (TextView) hasViews.internalFindViewById(R.id.tv3);
        this.tv4 = (TextView) hasViews.internalFindViewById(R.id.tv4);
        this.tv5 = (TextView) hasViews.internalFindViewById(R.id.tv5);
        this.tv6 = (TextView) hasViews.internalFindViewById(R.id.tv6);
        this.text1 = (MarqueeTextView) hasViews.internalFindViewById(R.id.text1);
        this.text2 = (MarqueeTextView) hasViews.internalFindViewById(R.id.text2);
        this.text3 = (MarqueeTextView) hasViews.internalFindViewById(R.id.text3);
        this.text4 = (MarqueeTextView) hasViews.internalFindViewById(R.id.text4);
        this.text5 = (MarqueeTextView) hasViews.internalFindViewById(R.id.text5);
        this.text6 = (MarqueeTextView) hasViews.internalFindViewById(R.id.text6);
        this.historyListView = (NoScrollListView) hasViews.internalFindViewById(R.id.historyListView);
        this.autoListView = (XListView2) hasViews.internalFindViewById(R.id.autoListView);
        this.noHistory = (TextView) hasViews.internalFindViewById(R.id.noHistory);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.relodingimag = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.loading_view = (LoadingImageView) hasViews.internalFindViewById(R.id.loading_view);
        this.textView2 = (TextView) hasViews.internalFindViewById(R.id.textView2);
        this.setNetwork = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        this.failedMessage = (TextView) hasViews.internalFindViewById(R.id.failedMessage);
        this.setting = (TextView) hasViews.internalFindViewById(R.id.setting);
        this.lodingBackImage = (ImageView) hasViews.internalFindViewById(R.id.lodingBackImage);
        this.wrapGridView = (WrapContentGridView) hasViews.internalFindViewById(R.id.wrapGridView);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.change_data);
        ImageView imageView = this.img_search;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        ImageView imageView2 = this.img_iconback;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new o());
        }
        LinearLayout linearLayout = this.clearLayout;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new p());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new q());
        }
        NoScrollListView noScrollListView = this.historyListView;
        if (noScrollListView != null) {
            noScrollListView.setOnItemClickListener(new r());
        }
        EditText editText = this.searchEditText;
        if (editText != null) {
            editText.setOnEditorActionListener(new s());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void serverConnectionException() {
        org.androidannotations.api.b.e("", new v(), 0L);
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
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void setXListNoMore() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void showPullLoad() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new g(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void stopLoadMore() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void stopXlistRefreshAndLoadMore() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void updateUI() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    public static w intent(Fragment supportFragment) {
        return new w(supportFragment);
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
