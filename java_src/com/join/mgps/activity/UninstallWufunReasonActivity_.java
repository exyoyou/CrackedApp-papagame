package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.UninstallAppReasonBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class UninstallWufunReasonActivity_ extends UninstallWufunReasonActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunReasonActivity_.this.outside();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunReasonActivity_.this.ivClose();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UninstallWufunReasonActivity_.this.btnSubmit();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UninstallAppReasonBean f56312b;

        d(final UninstallAppReasonBean val$data) {
            this.f56312b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunReasonActivity_.super.updateUI(this.f56312b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56314b;

        e(final String val$msg) {
            this.f56314b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunReasonActivity_.super.showToast(this.f56314b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UninstallWufunReasonActivity_.super.uninstallWufun();
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UninstallWufunReasonActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56318b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String id2, long delay, String serial, final String val$content) {
            super(id2, delay, serial);
            this.f56318b = val$content;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UninstallWufunReasonActivity_.super.submit(this.f56318b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class i extends org.androidannotations.api.builder.a<i> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56320a;

        public i(Context context) {
            super(context, (Class<?>) UninstallWufunReasonActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56320a;
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

        public i(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) UninstallWufunReasonActivity_.class);
            this.f56320a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static i intent(Context context) {
        return new i(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunReasonActivity
    public void getData() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.activity.UninstallWufunReasonActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_uninstall_wufun_reason);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.rvReportType = (RecyclerView) hasViews.internalFindViewById(R.id.rvReportType);
        this.etDesc = (EditText) hasViews.internalFindViewById(R.id.etDesc);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.outside);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.ivClose);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.btnSubmit);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new b());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new c());
        }
        afterviews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.join.mgps.activity.UninstallWufunReasonActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunReasonActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new e(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunReasonActivity
    public void submit(final String content) {
        org.androidannotations.api.a.l(new h("", 0L, "", content));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunReasonActivity
    public void uninstallWufun() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.UninstallWufunReasonActivity
    public void updateUI(final UninstallAppReasonBean data) {
        org.androidannotations.api.b.e("", new d(data), 0L);
    }

    public static i intent(Fragment supportFragment) {
        return new i(supportFragment);
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
