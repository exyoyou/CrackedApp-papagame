package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.ForumMyHeaderView;
import com.join.mgps.customview.XExpandableListView;
import com.join.mgps.dto.ForumData;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.Map;
import ru.noties.scrollable.ScrollableLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class ForumMyActivity_ extends ForumMyActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumMyActivity_.this.back_image();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyActivity_.super.stopXlistRefreshAndLoadMore();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumData.MyForumMain f51521b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51522c;

        c(final ForumData.MyForumMain val$data, final int val$page) {
            this.f51521b = val$data;
            this.f51522c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyActivity_.super.showMain(this.f51521b, this.f51522c);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51524b;

        d(final String val$message) {
            this.f51524b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyActivity_.super.showMessage(this.f51524b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51526b;

        e(final int val$state) {
            this.f51526b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyActivity_.super.changeLoadingState(this.f51526b);
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51528b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f51528b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumMyActivity_.super.myForumMain(this.f51528b);
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
                ForumMyActivity_.super.timeRefreshData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class h extends org.androidannotations.api.builder.a<h> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51531a;

        public h(Context context) {
            super(context, (Class<?>) ForumMyActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51531a;
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
            super(fragment.getActivity(), (Class<?>) ForumMyActivity_.class);
            this.f51531a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static h intent(Context context) {
        return new h(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyActivity
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new e(state), 0L);
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
    @Override // com.join.mgps.activity.ForumMyActivity
    public void myForumMain(final int page) {
        org.androidannotations.api.a.l(new f("", 0L, "", page));
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_forum_my);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.forum_title_center = (TextView) hasViews.internalFindViewById(R.id.forum_title_center);
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.scrollableLayout = (ScrollableLayout) hasViews.internalFindViewById(R.id.scrollableLayout);
        this.headerView = (ForumMyHeaderView) hasViews.internalFindViewById(R.id.headerView);
        this.mPtrFrame = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.expandableListView = (XExpandableListView) hasViews.internalFindViewById(R.id.expandableListView);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        afterViews();
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
    @Override // com.join.mgps.activity.ForumMyActivity
    public void showMain(final ForumData.MyForumMain data, final int page) {
        org.androidannotations.api.b.e("", new c(data, page), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new d(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyActivity
    public void stopXlistRefreshAndLoadMore() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyActivity
    public void timeRefreshData() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    public static h intent(Fragment supportFragment) {
        return new h(supportFragment);
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
