package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MyGameUpdateManagerActivity_ extends MyGameUpdateManagerActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55154b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final String val$id) {
            super(id2, delay, serial);
            this.f55154b = val$id;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGameUpdateManagerActivity_.super.deletePlug(this.f55154b);
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
            MyGameUpdateManagerActivity_.this.back_image();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameUpdateManagerActivity_.super.notifyDataSetChanged();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55158b;

        d(final String val$gameId) {
            this.f55158b = val$gameId;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameUpdateManagerActivity_.super.showAddShortcutResultDialog(this.f55158b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ HashMap f55160b;

        e(final HashMap val$map) {
            this.f55160b = val$map;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameUpdateManagerActivity_.super.notifyShortcutChanged(this.f55160b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55162b;

        f(final String val$id) {
            this.f55162b = val$id;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameUpdateManagerActivity_.super.onMoreDeleteGame(this.f55162b);
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGameUpdateManagerActivity_.super.refreshShortcutState();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f55165b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String id2, long delay, String serial, final List val$downloadTasks) {
            super(id2, delay, serial);
            this.f55165b = val$downloadTasks;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGameUpdateManagerActivity_.super.refreshShortcutState(this.f55165b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55167b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final String val$id) {
            super(id2, delay, serial);
            this.f55167b = val$id;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGameUpdateManagerActivity_.super.reinstallPlug(this.f55167b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55169b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final String val$id) {
            super(id2, delay, serial);
            this.f55169b = val$id;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGameUpdateManagerActivity_.super.downloadPlug(this.f55169b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class k extends org.androidannotations.api.builder.a<k> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55171a;

        public k(Context context) {
            super(context, (Class<?>) MyGameUpdateManagerActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55171a;
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
            super(fragment.getActivity(), (Class<?>) MyGameUpdateManagerActivity_.class);
            this.f55171a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static k intent(Context context) {
        return new k(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void deletePlug(final String id2) {
        org.androidannotations.api.a.l(new a("", 0L, "", id2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void downloadPlug(final String id2) {
        org.androidannotations.api.a.l(new j("", 200L, "", id2));
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
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void notifyDataSetChanged() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void notifyShortcutChanged(final HashMap<String, Boolean> map) {
        org.androidannotations.api.b.e("", new e(map), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_plug_manager);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void onMoreDeleteGame(final String id2) {
        org.androidannotations.api.b.e("", new f(id2), 100L);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.forum_title_center = (TextView) hasViews.internalFindViewById(R.id.forum_title_center);
        this.listView = (XListView2) hasViews.internalFindViewById(R.id.listView);
        this.root = hasViews.internalFindViewById(R.id.root);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void refreshShortcutState() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void reinstallPlug(final String id2) {
        org.androidannotations.api.a.l(new i("", 0L, "", id2));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void showAddShortcutResultDialog(final String gameId) {
        org.androidannotations.api.b.e("", new d(gameId), 500L);
    }

    public static k intent(Fragment supportFragment) {
        return new k(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void refreshShortcutState(final List<DownloadTask> downloadTasks) {
        org.androidannotations.api.a.l(new h("", 0L, "", downloadTasks));
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
