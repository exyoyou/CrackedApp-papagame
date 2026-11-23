package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class PaPaBannerListActivity_ extends PaPaBannerListActivity implements xc.a, zc.a, zc.b {
    public static final String ENABLE_SEARCH_DOWNLOAD_EXTRA = "enableSearchDownload";
    public static final String IS_SINGLE_EXTRA = "isSingle";
    public static final String PARAMS_EXTRA = "params";
    public static final String TITLE_NAME_EXTRA = "titleName";
    public static final String TYPE_EXTRA = "type";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaBannerListActivity_.this.back_image();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaBannerListActivity_.this.title_normal_search_img();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaBannerListActivity_.this.title_normal_download_cdv();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaBannerListActivity_.super.updateDownloadView();
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PaPaBannerListActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class f extends org.androidannotations.api.builder.a<f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55254a;

        public f(Context context) {
            super(context, (Class<?>) PaPaBannerListActivity_.class);
        }

        public f a(boolean enableSearchDownload) {
            return (f) super.extra(PaPaBannerListActivity_.ENABLE_SEARCH_DOWNLOAD_EXTRA, enableSearchDownload);
        }

        public f b(boolean isSingle) {
            return (f) super.extra("isSingle", isSingle);
        }

        public f c(String params) {
            return (f) super.extra("params", params);
        }

        public f d(String titleName) {
            return (f) super.extra(PaPaBannerListActivity_.TITLE_NAME_EXTRA, titleName);
        }

        public f e(int type) {
            return (f) super.extra("type", type);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55254a;
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
            super(fragment.getActivity(), (Class<?>) PaPaBannerListActivity_.class);
            this.f55254a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("type")) {
                this.type = extras.getInt("type");
            }
            if (extras.containsKey(TITLE_NAME_EXTRA)) {
                this.titleName = extras.getString(TITLE_NAME_EXTRA);
            }
            if (extras.containsKey(ENABLE_SEARCH_DOWNLOAD_EXTRA)) {
                this.enableSearchDownload = extras.getBoolean(ENABLE_SEARCH_DOWNLOAD_EXTRA);
            }
            if (extras.containsKey("params")) {
                this.params = extras.getString("params");
            }
            if (extras.containsKey("isSingle")) {
                this.isSingle = extras.getBoolean("isSingle");
            }
        }
    }

    public static f intent(Context context) {
        return new f(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PaPaBannerListActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_papa_banner_list);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.searchImg = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        ImageView imageView = this.searchImg;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.PaPaBannerListActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    public static f intent(Fragment supportFragment) {
        return new f(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
