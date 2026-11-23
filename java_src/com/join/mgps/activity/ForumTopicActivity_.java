package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.ExtBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ForumTopicActivity_ extends ForumTopicActivity implements xc.a, zc.a, zc.b {
    public static final String EXT_BEAN_EXTRA = "extBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52076b;

        a(final String val$message) {
            this.f52076b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.showMessage(this.f52076b);
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52078b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f52078b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumTopicActivity_.super.loadForumPostsData(this.f52078b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52080b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final int val$pid) {
            super(id2, delay, serial);
            this.f52080b = val$pid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumTopicActivity_.super.praisePosts(this.f52080b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumTopicActivity_.this.back_image();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52083b;

        e(final String val$msg) {
            this.f52083b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.showToast(this.f52083b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.stopXlistRefreshAndLoadMore();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52086b;

        g(final int val$state) {
            this.f52086b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.changeLoadingState(this.f52086b);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.refreshTitle();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.notifyAdapter();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AbsListView f52090b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52091c;

        j(final AbsListView val$view, final int val$scrollState) {
            this.f52090b = val$view;
            this.f52091c = val$scrollState;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.videoScrollStateChanged(this.f52090b, this.f52091c);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AbsListView f52093b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52094c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f52095d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f52096e;

        k(final AbsListView val$view, final int val$firstVisibleItem, final int val$visibleItemCount, final int val$totalItemCount) {
            this.f52093b = val$view;
            this.f52094c = val$firstVisibleItem;
            this.f52095d = val$visibleItemCount;
            this.f52096e = val$totalItemCount;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.videoScroll(this.f52093b, this.f52094c, this.f52095d, this.f52096e);
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.showDialog();
        }
    }

    public static class m extends org.androidannotations.api.builder.a<m> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f52099a;

        public m(Context context) {
            super(context, (Class<?>) ForumTopicActivity_.class);
        }

        public m a(ExtBean extBean) {
            return (m) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f52099a;
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

        public m(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) ForumTopicActivity_.class);
            this.f52099a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("extBean")) {
            return;
        }
        this.extBean = (ExtBean) extras.getSerializable("extBean");
    }

    public static m intent(Context context) {
        return new m(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new g(state), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void loadForumPostsData(final int page) {
        org.androidannotations.api.a.l(new b("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void notifyAdapter() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.mg_forum_forum_topic_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.actionbarLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.actionbarLayout);
        this.layout_title = (TextView) hasViews.internalFindViewById(R.id.layout_title);
        this.bottom = hasViews.internalFindViewById(R.id.bottom);
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.listView = (XListView) hasViews.internalFindViewById(R.id.listView);
        this.videoContainer = (FrameLayout) hasViews.internalFindViewById(R.id.videoContainer);
        this.videoLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.videoLayout);
        this.video = (MyVideoView) hasViews.internalFindViewById(R.id.video);
        this.cover = (SimpleDraweeView) hasViews.internalFindViewById(R.id.cover);
        this.play = (ImageView) hasViews.internalFindViewById(R.id.play);
        this.loadingLayout = (LinearLayout) hasViews.internalFindViewById(R.id.loadingLayout);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new d());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void praisePosts(final int pid) {
        org.androidannotations.api.a.l(new c("", 0L, "", pid));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void refreshTitle() {
        org.androidannotations.api.b.e("", new h(), 0L);
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
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void showDialog() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new a(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new e(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void stopXlistRefreshAndLoadMore() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void videoScroll(final AbsListView view, final int firstVisibleItem, final int visibleItemCount, final int totalItemCount) {
        org.androidannotations.api.b.e("", new k(view, firstVisibleItem, visibleItemCount, totalItemCount), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void videoScrollStateChanged(final AbsListView view, final int scrollState) {
        org.androidannotations.api.b.e("", new j(view, scrollState), 0L);
    }

    public static m intent(Fragment supportFragment) {
        return new m(supportFragment);
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
