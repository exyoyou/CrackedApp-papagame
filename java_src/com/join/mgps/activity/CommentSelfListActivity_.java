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
import android.widget.RelativeLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.FavoritesCenterData;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CommentSelfListActivity_ extends CommentSelfListActivity implements xc.a, zc.a, zc.b {
    public static final String UID_EXTRA = "uid";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver updateInfoReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.CommentSelfListActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommentSelfListActivity_.this.updateInfo(context);
        }
    };
    private final BroadcastReceiver loginOutReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.CommentSelfListActivity_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommentSelfListActivity_.this.loginOut(intent);
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.stopXlistRefreshAndLoadMore();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51049b;

        b(final int val$state) {
            this.f51049b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.changeLoadingState(this.f51049b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.showDialog();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51052b;

        d(final String val$message) {
            this.f51052b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.showMessage(this.f51052b);
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51055b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f51055b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivity_.super.getHomepageRecommendLabel(this.f51055b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51057b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f51058c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f51059d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final int val$commentId, final String val$gameId, final int val$type) {
            super(id2, delay, serial);
            this.f51057b = val$commentId;
            this.f51058c = val$gameId;
            this.f51059d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivity_.super.praisePosts(this.f51057b, this.f51058c, this.f51059d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51061b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f51062c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f51063d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String id2, long delay, String serial, final int val$commentId, final String val$gameId, final int val$type) {
            super(id2, delay, serial);
            this.f51061b = val$commentId;
            this.f51062c = val$gameId;
            this.f51063d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivity_.super.depraisePosts(this.f51061b, this.f51062c, this.f51063d);
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
            CommentSelfListActivity_.this.setting2();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.this.setting3();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.this.back();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.this.back_image();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FavoritesCenterData f51069b;

        m(final FavoritesCenterData val$data) {
            this.f51069b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.updateUi(this.f51069b);
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51071b;

        n(final String val$msg) {
            this.f51071b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.T(this.f51071b);
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.notifyDataChanged();
        }
    }

    public static class p extends org.androidannotations.api.builder.a<p> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51074a;

        public p(Context context) {
            super(context, (Class<?>) CommentSelfListActivity_.class);
        }

        public p a(int uid) {
            return (p) super.extra("uid", uid);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51074a;
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

        public p(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CommentSelfListActivity_.class);
            this.f51074a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.f96217r);
        registerReceiver(this.updateInfoReceiver_, this.intentFilter1_);
        registerReceiver(this.loginOutReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("uid")) {
            return;
        }
        this.uid = extras.getInt("uid");
    }

    public static p intent(Context context) {
        return new p(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void T(final String msg) {
        org.androidannotations.api.b.e("", new n(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new b(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void depraisePosts(final int commentId, final String gameId, final int type) {
        org.androidannotations.api.a.l(new h("", 0L, "", commentId, gameId, type));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void getData() {
        org.androidannotations.api.a.l(new e("", 100L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void getHomepageRecommendLabel(final int page) {
        org.androidannotations.api.a.l(new f("", 0L, "", page));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void notifyDataChanged() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_comment_self_list);
    }

    @Override // com.join.mgps.activity.CommentSelfListActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.updateInfoReceiver_);
        unregisterReceiver(this.loginOutReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.actionbarLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.actionbarLayout);
        this.newTitle = (RelativeLayout) hasViews.internalFindViewById(R.id.newTitle);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.back = (ImageView) hasViews.internalFindViewById(R.id.back);
        this.setting2 = hasViews.internalFindViewById(R.id.setting2);
        this.setting3 = hasViews.internalFindViewById(R.id.setting3);
        this.listview = (XListView2) hasViews.internalFindViewById(R.id.listview);
        this.titleStatubar = hasViews.internalFindViewById(R.id.titleStatubar);
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        View view = this.setting2;
        if (view != null) {
            view.setOnClickListener(new i());
        }
        View view2 = this.setting3;
        if (view2 != null) {
            view2.setOnClickListener(new j());
        }
        ImageView imageView = this.back;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        ImageView imageView2 = this.back_image;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new l());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void praisePosts(final int commentId, final String gameId, final int type) {
        org.androidannotations.api.a.l(new g("", 0L, "", commentId, gameId, type));
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
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void showDialog() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new d(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void stopXlistRefreshAndLoadMore() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void updateUi(final FavoritesCenterData data) {
        org.androidannotations.api.b.e("", new m(data), 0L);
    }

    public static p intent(Fragment supportFragment) {
        return new p(supportFragment);
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
