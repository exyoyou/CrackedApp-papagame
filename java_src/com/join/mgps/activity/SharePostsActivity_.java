package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class SharePostsActivity_ extends SharePostsActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharePostsActivity_.this.back_image();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharePostsActivity_.this.release();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55795b;

        c(final String val$msg) {
            this.f55795b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharePostsActivity_.super.showToast(this.f55795b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55797b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55798c;

        d(final int val$money, final int val$exp) {
            this.f55797b = val$money;
            this.f55798c = val$exp;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharePostsActivity_.super.showRewardToast(this.f55797b, this.f55798c);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55800b;

        e(final int val$type) {
            this.f55800b = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharePostsActivity_.super.showSendPromptDialog(this.f55800b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55802b;

        f(final String val$message) {
            this.f55802b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharePostsActivity_.super.showMessage(this.f55802b);
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SharePostsActivity_.super.forumPostsSubmit();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class h extends org.androidannotations.api.builder.a<h> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55805a;

        public h(Context context) {
            super(context, (Class<?>) SharePostsActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55805a;
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

        public h(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) SharePostsActivity_.class);
            this.f55805a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static h intent(Context context) {
        return new h(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SharePostsActivity
    public void forumPostsSubmit() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.share_posts_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.layout_title = (TextView) hasViews.internalFindViewById(R.id.layout_title);
        this.release = (Button) hasViews.internalFindViewById(R.id.release);
        this.posts_title = (TextView) hasViews.internalFindViewById(R.id.posts_title);
        this.posts_content = (TextView) hasViews.internalFindViewById(R.id.posts_content);
        this.posts_pic_hlist = (HListView) hasViews.internalFindViewById(R.id.posts_pic_hlist);
        this.footer_tip = (TextView) hasViews.internalFindViewById(R.id.footer_tip);
        this.helpContainer = (LinearLayout) hasViews.internalFindViewById(R.id.helpContainer);
        this.helpGrid = (GridView) hasViews.internalFindViewById(R.id.helpGrid);
        this.myRemainHelpMoney = (TextView) hasViews.internalFindViewById(R.id.myRemainHelpMoney);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        Button button = this.release;
        if (button != null) {
            button.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SharePostsActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new f(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SharePostsActivity
    public void showRewardToast(final int money, final int exp) {
        org.androidannotations.api.b.e("", new d(money, exp), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SharePostsActivity
    public void showSendPromptDialog(final int type) {
        org.androidannotations.api.b.e("", new e(type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SharePostsActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new c(msg), 0L);
    }

    public static h intent(Fragment supportFragment) {
        return new h(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
