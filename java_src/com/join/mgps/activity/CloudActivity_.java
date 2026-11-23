package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudUploadInfo;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CloudActivity_ extends CloudActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudActivity_.this.select_txt();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudActivity_.this.sub();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50609b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50610c;

        c(final int val$i, final int val$count) {
            this.f50609b = val$i;
            this.f50610c = val$count;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudActivity_.super.showUploadDialogNum(this.f50609b, this.f50610c);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50612b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50613c;

        d(final int val$count, final int val$all) {
            this.f50612b = val$count;
            this.f50613c = val$all;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudActivity_.super.showUploadDialogStop(this.f50612b, this.f50613c);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudActivity_.super.showUploadDialogSuccess();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudActivity_.super.updateBtn();
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudActivity_.super.zip();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudActivity_.super.uploadSuccess();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f50619b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CloudUploadInfo f50620c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ File f50621d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final Context val$context, final CloudUploadInfo val$cloudUploadInfo, final File val$file) {
            super(id2, delay, serial);
            this.f50619b = val$context;
            this.f50620c = val$cloudUploadInfo;
            this.f50621d = val$file;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudActivity_.super.syncUpLoadInfo(this.f50619b, this.f50620c, this.f50621d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.a<j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50623a;

        public j(Context context) {
            super(context, (Class<?>) CloudActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50623a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CloudActivity_.class);
            this.f50623a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static j intent(Context context) {
        return new j(context);
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
        setContentView(R.layout.cloud);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.listview = (ListView) hasViews.internalFindViewById(R.id.listview);
        this.sub = (Button) hasViews.internalFindViewById(R.id.sub);
        TextView textView = (TextView) hasViews.internalFindViewById(R.id.select_txt);
        this.select_txt = textView;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        Button button = this.sub;
        if (button != null) {
            button.setOnClickListener(new b());
        }
        afterView();
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
    @Override // com.join.mgps.activity.CloudActivity
    public void showUploadDialogNum(final int i10, final int count) {
        org.androidannotations.api.b.e("", new c(i10, count), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudActivity
    public void showUploadDialogStop(final int count, final int all) {
        org.androidannotations.api.b.e("", new d(count, all), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudActivity
    public void showUploadDialogSuccess() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // com.join.mgps.activity.CloudActivity
    public void syncUpLoadInfo(final Context context, final CloudUploadInfo cloudUploadInfo, final File file) {
        org.androidannotations.api.a.l(new i("", 0L, "", context, cloudUploadInfo, file));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudActivity
    public void updateBtn() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudActivity
    public void uploadSuccess() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudActivity
    public void zip() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    public static j intent(Fragment supportFragment) {
        return new j(supportFragment);
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
