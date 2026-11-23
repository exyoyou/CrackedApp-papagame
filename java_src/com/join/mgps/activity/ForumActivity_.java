package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumGroupHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.dto.ForumData;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.Map;
import ru.noties.scrollable.ScrollableLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class ForumActivity_ extends ForumActivity implements xc.a, zc.a, zc.b {
    public static final String FID_EXTRA = "fid";
    public static final String FROM_EXTRA = "from";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.playVideoDelay();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.hideSendBtn();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.refreshFrg();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.showDialog();
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumActivity_.super.getForumGroupIndex();
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
                ForumActivity_.super.joinGroup();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumActivity_.super.exitGroup();
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
            ForumActivity_.this.sreach_image();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumActivity_.this.back_image();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumActivity_.this.rlOrderBy();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumActivity_.this.btnSendPosts();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumActivity_.this.forum_post();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f51442b;

        m(final boolean val$isJoined) {
            this.f51442b = val$isJoined;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.changeJoinState(this.f51442b);
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumData.ForumGroupIndex f51444b;

        n(final ForumData.ForumGroupIndex val$data) {
            this.f51444b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.showForumGroupIndex(this.f51444b);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51446b;

        o(final String val$msg) {
            this.f51446b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.T(this.f51446b);
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51448b;

        p(final int val$state) {
            this.f51448b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumActivity_.super.changeLoadingState(this.f51448b);
        }
    }

    public static class q extends org.androidannotations.api.builder.a<q> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51450a;

        public q(Context context) {
            super(context, (Class<?>) ForumActivity_.class);
        }

        public q a(int fid) {
            return (q) super.extra("fid", fid);
        }

        public q b(String from) {
            return (q) super.extra("from", from);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51450a;
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
            super(fragment.getActivity(), (Class<?>) ForumActivity_.class);
            this.f51450a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("fid")) {
                this.fid = extras.getInt("fid");
            }
            if (extras.containsKey("from")) {
                this.from = extras.getString("from");
            }
        }
    }

    public static q intent(Context context) {
        return new q(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void T(final String msg) {
        org.androidannotations.api.b.e("", new o(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void changeJoinState(final boolean isJoined) {
        org.androidannotations.api.b.e("", new m(isJoined), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new p(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void exitGroup() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void getForumGroupIndex() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void hideSendBtn() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void joinGroup() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.mg_forum_group_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.forum_title_center = (TextView) hasViews.internalFindViewById(R.id.forum_title_center);
        this.sreach_image = (ImageView) hasViews.internalFindViewById(R.id.sreach_image);
        this.forum_post = (Button) hasViews.internalFindViewById(R.id.forum_post);
        this.bottom = hasViews.internalFindViewById(R.id.bottom);
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.scrollableLayout = (ScrollableLayout) hasViews.internalFindViewById(R.id.scrollableLayout);
        this.headerView = (ForumGroupHeaderView) hasViews.internalFindViewById(R.id.headerView);
        this.tabsLayout = (SlidingTabLayout4) hasViews.internalFindViewById(R.id.tabsLayout);
        this.viewPager = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.rlOrderBy = (RelativeLayout) hasViews.internalFindViewById(R.id.rlOrderBy);
        this.mPtrFrame = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.btnSendPosts);
        ImageView imageView = this.sreach_image;
        if (imageView != null) {
            imageView.setOnClickListener(new h());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new i());
        }
        RelativeLayout relativeLayout = this.rlOrderBy;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new j());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new k());
        }
        Button button = this.forum_post;
        if (button != null) {
            button.setOnClickListener(new l());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void playVideoDelay() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void refreshFrg() {
        org.androidannotations.api.b.e("", new c(), 0L);
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
    @Override // com.join.mgps.activity.ForumActivity
    public void showDialog() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumActivity
    public void showForumGroupIndex(final ForumData.ForumGroupIndex data) {
        org.androidannotations.api.b.e("", new n(data), 0L);
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
