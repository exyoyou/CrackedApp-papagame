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
import com.join.mgps.dto.DownloadUrlBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class DownloadChoiceUrlDialog_ extends DownloadChoiceUrlDialog implements xc.a, zc.a, zc.b {
    public static final String DOWNLOAD_TASK_EXTRA = "downloadTask";
    public static final String DOWNLOAD_URL_BEANS_EXTRA = "downloadUrlBeans";
    public static final String IS_LOCAL_SHOW_EXTRA = "isLocalShow";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class a extends org.androidannotations.api.builder.a<a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f67290a;

        public a(Context context) {
            super(context, (Class<?>) DownloadChoiceUrlDialog_.class);
        }

        public a a(DownloadTask downloadTask) {
            return (a) super.extra("downloadTask", downloadTask);
        }

        public a b(ArrayList<DownloadUrlBean> downloadUrlBeans) {
            return (a) super.extra(DownloadChoiceUrlDialog_.DOWNLOAD_URL_BEANS_EXTRA, downloadUrlBeans);
        }

        public a c(boolean isLocalShow) {
            return (a) super.extra(DownloadChoiceUrlDialog_.IS_LOCAL_SHOW_EXTRA, isLocalShow);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f67290a;
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

        public a(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) DownloadChoiceUrlDialog_.class);
            this.f67290a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        injectExtras_();
        zc.c.b(this);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(DOWNLOAD_URL_BEANS_EXTRA)) {
                this.downloadUrlBeans = (ArrayList) extras.getSerializable(DOWNLOAD_URL_BEANS_EXTRA);
            }
            if (extras.containsKey("downloadTask")) {
                this.downloadTask = (DownloadTask) extras.getSerializable("downloadTask");
            }
            if (extras.containsKey(IS_LOCAL_SHOW_EXTRA)) {
                this.isLocalShow = extras.getBoolean(IS_LOCAL_SHOW_EXTRA);
            }
        }
    }

    public static a intent(Context context) {
        return new a(context);
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
        setContentView(R.layout.download_choice_url_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        afterview();
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

    public static a intent(Fragment supportFragment) {
        return new a(supportFragment);
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
