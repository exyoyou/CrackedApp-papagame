package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CommentSelfListActivityv2_ extends CommentSelfListActivityv2 implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51083b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f51084c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f51085d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final int val$commentId, final String val$gameId, final int val$type) {
            super(id2, delay, serial);
            this.f51083b = val$commentId;
            this.f51084c = val$gameId;
            this.f51085d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivityv2_.super.depraisePosts(this.f51083b, this.f51084c, this.f51085d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivityv2_.this.back_image();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51088b;

        c(final String val$msg) {
            this.f51088b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.T(this.f51088b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.notifyDataChanged();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.stopXlistRefreshAndLoadMore();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51092b;

        f(final int val$state) {
            this.f51092b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.changeLoadingState(this.f51092b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.showDialog();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51095b;

        h(final String val$message) {
            this.f51095b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.showMessage(this.f51095b);
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51097b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f51097b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivityv2_.super.getHomepageRecommendLabel(this.f51097b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51099b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f51100c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f51101d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final int val$commentId, final String val$gameId, final int val$type) {
            super(id2, delay, serial);
            this.f51099b = val$commentId;
            this.f51100c = val$gameId;
            this.f51101d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivityv2_.super.praisePosts(this.f51099b, this.f51100c, this.f51101d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class k extends org.androidannotations.api.builder.a<k> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51103a;

        public k(Context context) {
            super(context, (Class<?>) CommentSelfListActivityv2_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51103a;
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

        public k(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CommentSelfListActivityv2_.class);
            this.f51103a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
    }

    public static k intent(Context context) {
        return new k(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void T(final String msg) {
        org.androidannotations.api.b.e("", new c(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new f(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void depraisePosts(final int commentId, final String gameId, final int type) {
        org.androidannotations.api.a.l(new a("", 0L, "", commentId, gameId, type));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void getHomepageRecommendLabel(final int page) {
        org.androidannotations.api.a.l(new i("", 0L, "", page));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void notifyDataChanged() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_comment_self_list_v2);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.actionbarLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.actionbarLayout);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.forum_title_center = (TextView) hasViews.internalFindViewById(R.id.forum_title_center);
        this.layout_title = (TextView) hasViews.internalFindViewById(R.id.layout_title);
        this.listview = (XListView2) hasViews.internalFindViewById(R.id.listview);
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.mPtrFrame = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void praisePosts(final int commentId, final String gameId, final int type) {
        org.androidannotations.api.a.l(new j("", 0L, "", commentId, gameId, type));
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
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void showDialog() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new h(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void stopXlistRefreshAndLoadMore() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    public static k intent(Fragment supportFragment) {
        return new k(supportFragment);
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
