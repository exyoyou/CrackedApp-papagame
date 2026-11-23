package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
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
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ForumProfileFavoritesActivity_ extends ForumProfileFavoritesActivity implements xc.a, zc.a, zc.b {
    public static final String EXT_BEAN_EXTRA = "extBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.ForumProfileFavoritesActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f51852b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumProfileFavoritesActivity_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51854b;

        a(final String val$msg) {
            this.f51854b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.showToast(this.f51854b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.showMoreLoading();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AbsListView f51857b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51858c;

        c(final AbsListView val$view, final int val$scrollState) {
            this.f51857b = val$view;
            this.f51858c = val$scrollState;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.videoScrollStateChanged(this.f51857b, this.f51858c);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AbsListView f51860b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51861c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f51862d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f51863e;

        d(final AbsListView val$view, final int val$firstVisibleItem, final int val$visibleItemCount, final int val$totalItemCount) {
            this.f51860b = val$view;
            this.f51861c = val$firstVisibleItem;
            this.f51862d = val$visibleItemCount;
            this.f51863e = val$totalItemCount;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.videoScroll(this.f51860b, this.f51861c, this.f51862d, this.f51863e);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.showDialog();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51866b;

        f(final String val$message) {
            this.f51866b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.showMessage(this.f51866b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f51868b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51869c;

        g(final DownloadTask val$downloadTask, final int val$from) {
            this.f51868b = val$downloadTask;
            this.f51869c = val$from;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.updateUI(this.f51868b, this.f51869c);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.updateDownloadView();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f51872b;

        i(final DetailResultBean val$detialResultBean) {
            this.f51872b = val$detialResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.startDown(this.f51872b);
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51874b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f51875c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final int val$type, final String val$gameId) {
            super(id2, delay, serial);
            this.f51874b = val$type;
            this.f51875c = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.changeGameFollow(this.f51874b, this.f51875c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k extends org.androidannotations.api.a.c {
        k(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.loadDBData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.loadDBForumWelcomePostsData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51879b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f51879b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.loadForumPostsData(this.f51879b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51881b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String id2, long delay, String serial, final int val$curPid) {
            super(id2, delay, serial);
            this.f51881b = val$curPid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.praisePosts(this.f51881b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f51883b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51884c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final Context val$context, final int val$pid) {
            super(id2, delay, serial);
            this.f51883b = val$context;
            this.f51884c = val$pid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.deletePosts(this.f51883b, this.f51884c);
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
                ForumProfileFavoritesActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51887b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f51887b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileFavoritesActivity_.super.downloadGameById(this.f51887b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileFavoritesActivity_.this.back_image();
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResultMainBean f51890b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51891c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f51892d;

        s(final ResultMainBean val$result, final int val$type, final String val$gameId) {
            this.f51890b = val$result;
            this.f51891c = val$type;
            this.f51892d = val$gameId;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.updateUnFollowResult(this.f51890b, this.f51891c, this.f51892d);
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f51894b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51895c;

        t(final List val$postsList, final int val$page) {
            this.f51894b = val$postsList;
            this.f51895c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.processPostsInfo(this.f51894b, this.f51895c);
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51897b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f51898c;

        u(final int val$pid, final boolean val$success) {
            this.f51897b = val$pid;
            this.f51898c = val$success;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.notifyDeletePost(this.f51897b, this.f51898c);
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.stopXlistRefreshAndLoadMore();
        }
    }

    class w implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51901b;

        w(final int val$state) {
            this.f51901b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.changeLoadingState(this.f51901b);
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.notifyAdapter();
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileFavoritesActivity_.super.setXListNoMore();
        }
    }

    public static class z extends org.androidannotations.api.builder.a<z> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51905a;

        public z(Context context) {
            super(context, (Class<?>) ForumProfileFavoritesActivity_.class);
        }

        public z a(ExtBean extBean) {
            return (z) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51905a;
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

        public z(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) ForumProfileFavoritesActivity_.class);
            this.f51905a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.I);
        this.intentFilter1_.addAction(p5.a.G);
        registerReceiver(this.onPayGameSuccessReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("extBean")) {
            return;
        }
        this.extBean = (ExtBean) extras.getSerializable("extBean");
    }

    public static z intent(Context context) {
        return new z(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void changeGameFollow(final int type, final String gameId) {
        org.androidannotations.api.a.l(new j("", 0L, "", type, gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new w(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void deletePosts(final Context context, final int pid) {
        org.androidannotations.api.a.l(new o("", 0L, "", context, pid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void downloadGameById(final String gameId) {
        org.androidannotations.api.a.l(new q("", 0L, "", gameId));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void loadDBData() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void loadDBForumWelcomePostsData() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void loadForumPostsData(final int page) {
        org.androidannotations.api.a.l(new m("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void notifyAdapter() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void notifyDeletePost(final int pid, final boolean success) {
        org.androidannotations.api.b.e("", new u(pid, success), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.mg_forum_profile_favorites_activity);
    }

    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onPayGameSuccessReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.actionbarLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.actionbarLayout);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.layout_title = (TextView) hasViews.internalFindViewById(R.id.layout_title);
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.forum_posts_list = (XListView2) hasViews.internalFindViewById(R.id.forum_posts_list);
        this.mPtrFrame = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.videoContainer = (FrameLayout) hasViews.internalFindViewById(R.id.videoContainer);
        this.videoLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.videoLayout);
        this.video = (MyVideoView) hasViews.internalFindViewById(R.id.video);
        this.cover = (SimpleDraweeView) hasViews.internalFindViewById(R.id.cover);
        this.play = (ImageView) hasViews.internalFindViewById(R.id.play);
        this.loadingLayout = (LinearLayout) hasViews.internalFindViewById(R.id.loadingLayout);
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new r());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void praisePosts(final int curPid) {
        org.androidannotations.api.a.l(new n("", 0L, "", curPid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void processPostsInfo(final List<ForumData.ForumUserFavoritesData> postsList, final int page) {
        org.androidannotations.api.b.e("", new t(postsList, page), 0L);
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
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void setXListNoMore() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void showDialog() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new f(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void showMoreLoading() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new a(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void startDown(final DetailResultBean detialResultBean) {
        org.androidannotations.api.b.e("", new i(detialResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void stopXlistRefreshAndLoadMore() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void updateUI(final DownloadTask downloadTask, final int from) {
        org.androidannotations.api.b.e("", new g(downloadTask, from), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void updateUnFollowResult(final ResultMainBean result, final int type, final String gameId) {
        org.androidannotations.api.b.e("", new s(result, type, gameId), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void videoScroll(final AbsListView view, final int firstVisibleItem, final int visibleItemCount, final int totalItemCount) {
        org.androidannotations.api.b.e("", new d(view, firstVisibleItem, visibleItemCount, totalItemCount), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileFavoritesActivity
    public void videoScrollStateChanged(final AbsListView view, final int scrollState) {
        org.androidannotations.api.b.e("", new c(view, scrollState), 0L);
    }

    public static z intent(Fragment supportFragment) {
        return new z(supportFragment);
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
