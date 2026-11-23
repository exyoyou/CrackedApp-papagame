package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameDownInfo;
import com.join.mgps.dto.UpdateIntentDataBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ChociceDownActivity_ extends ChociceDownActivity implements xc.a, zc.a, zc.b {
    public static final String DOWNLOAD_TASK_EXTRA = "downloadTask";
    public static final String FROM_EXTRA = "from";
    public static final String UPDATE_INTENT_DATA_BEAN_EXTRA = "updateIntentDataBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChociceDownActivity_.this.closeImage();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChociceDownActivity_.this.closeImage1();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChociceDownActivity_.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChociceDownActivity_.this.downFrom11();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChociceDownActivity_.this.downFrom21();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ChociceDownActivity_.super.showLoding();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ChociceDownActivity_.super.showLodingFailed();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameDownInfo f50469b;

        h(final GameDownInfo val$downInfo) {
            this.f50469b = val$downInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            ChociceDownActivity_.super.showMain(this.f50469b);
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ChociceDownActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.a<j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50472a;

        public j(Context context) {
            super(context, (Class<?>) ChociceDownActivity_.class);
        }

        public j a(DownloadTask downloadTask) {
            return (j) super.extra("downloadTask", downloadTask);
        }

        public j b(int from) {
            return (j) super.extra("from", from);
        }

        public j c(UpdateIntentDataBean updateIntentDataBean) {
            return (j) super.extra("updateIntentDataBean", updateIntentDataBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50472a;
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
            super(fragment.getActivity(), (Class<?>) ChociceDownActivity_.class);
            this.f50472a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("downloadTask")) {
                this.downloadTask = (DownloadTask) extras.getSerializable("downloadTask");
            }
            if (extras.containsKey("updateIntentDataBean")) {
                this.updateIntentDataBean = (UpdateIntentDataBean) extras.getSerializable("updateIntentDataBean");
            }
            if (extras.containsKey("from")) {
                this.from = extras.getInt("from");
            }
        }
    }

    public static j intent(Context context) {
        return new j(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ChociceDownActivity
    public void getData() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
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
        setContentView(R.layout.choice_down_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title = (TextView) hasViews.internalFindViewById(R.id.title);
        this.describ = (TextView) hasViews.internalFindViewById(R.id.describ);
        this.closeImage = (ImageView) hasViews.internalFindViewById(R.id.closeImage);
        this.downFrom1 = (TextView) hasViews.internalFindViewById(R.id.downFrom1);
        this.downFrom2 = (TextView) hasViews.internalFindViewById(R.id.downFrom2);
        this.downFrom11 = (TextView) hasViews.internalFindViewById(R.id.downFrom11);
        this.downFrom21 = (TextView) hasViews.internalFindViewById(R.id.downFrom21);
        this.downFrom3 = (TextView) hasViews.internalFindViewById(R.id.downFrom3);
        this.main = (RelativeLayout) hasViews.internalFindViewById(R.id.main);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.relodingimag = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.mPtrFrame = (RelativeLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.layoutq = (RelativeLayout) hasViews.internalFindViewById(R.id.layoutq);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.closeImage1);
        ImageView imageView = this.closeImage;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        ImageView imageView2 = this.relodingimag;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new c());
        }
        TextView textView = this.downFrom11;
        if (textView != null) {
            textView.setOnClickListener(new d());
        }
        TextView textView2 = this.downFrom21;
        if (textView2 != null) {
            textView2.setOnClickListener(new e());
        }
        afterviews();
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

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ChociceDownActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ChociceDownActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ChociceDownActivity
    public void showMain(final GameDownInfo downInfo) {
        org.androidannotations.api.b.e("", new h(downInfo), 0L);
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
