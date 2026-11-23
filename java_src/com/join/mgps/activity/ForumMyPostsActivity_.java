package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ForumMyPostsActivity_ extends ForumMyPostsActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.ForumMyPostsActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f51543b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumMyPostsActivity_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.showDialog();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51546b;

        b(final String val$message) {
            this.f51546b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.showMessage(this.f51546b);
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51548b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f51548b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumMyPostsActivity_.super.downloadGameById(this.f51548b);
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
                ForumMyPostsActivity_.super.loadSrvData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51551b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f51551b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumMyPostsActivity_.super.getForumProfileMessageData(this.f51551b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51553b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final int val$curPid) {
            super(id2, delay, serial);
            this.f51553b = val$curPid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumMyPostsActivity_.super.praisePosts(this.f51553b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumMyPostsActivity_.this.back_image();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f51556b;

        h(final DetailResultBean val$detialResultBean) {
            this.f51556b = val$detialResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.startDown(this.f51556b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f51558b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51559c;

        i(final List val$datas, final int val$page) {
            this.f51558b = val$datas;
            this.f51559c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.updateCommentData(this.f51558b, this.f51559c);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51561b;

        j(final int val$state) {
            this.f51561b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.changeLoadingState(this.f51561b);
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.stopXlistRefreshAndLoadMore();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51564b;

        l(final String val$msg) {
            this.f51564b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.showToast(this.f51564b);
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.notifyAdapter();
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.showMoreLoading();
        }
    }

    public static class o extends org.androidannotations.api.builder.a<o> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51568a;

        public o(Context context) {
            super(context, (Class<?>) ForumMyPostsActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51568a;
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

        public o(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) ForumMyPostsActivity_.class);
            this.f51568a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        this.netConnectException = resources.getString(R.string.connect_server_excption);
        this.intentFilter1_.addAction(p5.a.I);
        this.intentFilter1_.addAction(p5.a.G);
        registerReceiver(this.onPayGameSuccessReceiver_, this.intentFilter1_);
    }

    public static o intent(Context context) {
        return new o(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new j(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void downloadGameById(final String gameId) {
        org.androidannotations.api.a.l(new c("", 0L, "", gameId));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void getForumProfileMessageData(final int page) {
        org.androidannotations.api.a.l(new e("", 0L, "", page));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void loadSrvData() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void notifyAdapter() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_forum_my_post);
    }

    @Override // com.join.mgps.activity.ForumMyPostsActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onPayGameSuccessReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.layout_title = (TextView) hasViews.internalFindViewById(R.id.layout_title);
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.mPtrFrame = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.mg_forum_profile_comment_list = (XListView2) hasViews.internalFindViewById(R.id.mg_forum_profile_comment_list);
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new g());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void praisePosts(final int curPid) {
        org.androidannotations.api.a.l(new f("", 0L, "", curPid));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void showDialog() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new b(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void showMoreLoading() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new l(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void startDown(final DetailResultBean detialResultBean) {
        org.androidannotations.api.b.e("", new h(detialResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void stopXlistRefreshAndLoadMore() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void updateCommentData(final List<ForumBean.ForumPostsBean> datas, final int page) {
        org.androidannotations.api.b.e("", new i(datas, page), 0L);
    }

    public static o intent(Fragment supportFragment) {
        return new o(supportFragment);
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
