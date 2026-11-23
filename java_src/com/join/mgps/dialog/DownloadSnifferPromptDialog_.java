package com.join.mgps.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class DownloadSnifferPromptDialog_ extends DownloadSnifferPromptDialog implements xc.a, zc.a, zc.b {
    public static final String DOWNLOAD_ORIGINAL_SWITCH_EXTRA = "download_original_switch";
    public static final String DOWNLOAD_SEARCH_URL_EXTRA = "downloadSearchUrl";
    public static final String DOWNLOAD_SOURCE_URL_EXTRA = "downloadSourceUrl";
    public static final String DOWNLOAD_TASK_EXTRA = "downloadTask";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSnifferPromptDialog_.this.close();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSnifferPromptDialog_.this.outside();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSnifferPromptDialog_.this.btnDownload();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSnifferPromptDialog_.this.btnSource();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSnifferPromptDialog_.this.btnSearch();
        }
    }

    public static class f extends org.androidannotations.api.builder.a<f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f67333a;

        public f(Context context) {
            super(context, (Class<?>) DownloadSnifferPromptDialog_.class);
        }

        public f a(String downloadSearchUrl) {
            return (f) super.extra(DownloadSnifferPromptDialog_.DOWNLOAD_SEARCH_URL_EXTRA, downloadSearchUrl);
        }

        public f b(String downloadSourceUrl) {
            return (f) super.extra(DownloadSnifferPromptDialog_.DOWNLOAD_SOURCE_URL_EXTRA, downloadSourceUrl);
        }

        public f c(DownloadTask downloadTask) {
            return (f) super.extra("downloadTask", downloadTask);
        }

        public f d(String download_original_switch) {
            return (f) super.extra(DownloadSnifferPromptDialog_.DOWNLOAD_ORIGINAL_SWITCH_EXTRA, download_original_switch);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f67333a;
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
            super(fragment.getActivity(), (Class<?>) DownloadSnifferPromptDialog_.class);
            this.f67333a = fragment;
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
            if (extras.containsKey(DOWNLOAD_SOURCE_URL_EXTRA)) {
                this.downloadSourceUrl = extras.getString(DOWNLOAD_SOURCE_URL_EXTRA);
            }
            if (extras.containsKey(DOWNLOAD_SEARCH_URL_EXTRA)) {
                this.downloadSearchUrl = extras.getString(DOWNLOAD_SEARCH_URL_EXTRA);
            }
            if (extras.containsKey(DOWNLOAD_ORIGINAL_SWITCH_EXTRA)) {
                this.download_original_switch = extras.getString(DOWNLOAD_ORIGINAL_SWITCH_EXTRA);
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

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.dialog.DownloadSnifferPromptDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.dialog_sniffer_promt);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.constraintLayout = hasViews.internalFindViewById(R.id.constraintLayout);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.close);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.outside);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.btnDownload);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.btnSource);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.btnSearch);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new b());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new c());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new d());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.join.mgps.dialog.DownloadSnifferPromptDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
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
