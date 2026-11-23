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
import com.join.mgps.customview.XListView2;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MyGamePlugManagerActivity_ extends MyGamePlugManagerActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePlugManagerActivity_.this.back_image();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePlugManagerActivity_.super.notifyDataSetChanged();
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55144b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final String val$id) {
            super(id2, delay, serial);
            this.f55144b = val$id;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePlugManagerActivity_.super.reinstallPlug(this.f55144b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55146b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final String val$id) {
            super(id2, delay, serial);
            this.f55146b = val$id;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePlugManagerActivity_.super.downloadPlug(this.f55146b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55148b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final String val$id) {
            super(id2, delay, serial);
            this.f55148b = val$id;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePlugManagerActivity_.super.deletePlug(this.f55148b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class f extends org.androidannotations.api.builder.a<f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55150a;

        public f(Context context) {
            super(context, (Class<?>) MyGamePlugManagerActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55150a;
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

        public f(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MyGamePlugManagerActivity_.class);
            this.f55150a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        ((MyGamePlugManagerActivity) this).prefDef_ = new PrefDef_(this);
        zc.c.b(this);
    }

    public static f intent(Context context) {
        return new f(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGamePlugManagerActivity
    public void deletePlug(final String id2) {
        org.androidannotations.api.a.l(new e("", 0L, "", id2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGamePlugManagerActivity
    public void downloadPlug(final String id2) {
        org.androidannotations.api.a.l(new d("", 0L, "", id2));
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
    @Override // com.join.mgps.activity.MyGamePlugManagerActivity
    public void notifyDataSetChanged() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_plug_manager);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.forum_title_center = (TextView) hasViews.internalFindViewById(R.id.forum_title_center);
        this.listView = (XListView2) hasViews.internalFindViewById(R.id.listView);
        this.root = hasViews.internalFindViewById(R.id.root);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGamePlugManagerActivity
    public void reinstallPlug(final String id2) {
        org.androidannotations.api.a.l(new c("", 0L, "", id2));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    public static f intent(Fragment supportFragment) {
        return new f(supportFragment);
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
