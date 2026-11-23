package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudBackupsCanUseBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CloudRecodingActivity_ extends CloudRecodingActivity implements xc.a, zc.a, zc.b {
    public static final String BEAN_EXTRA = "bean";
    public static final String ISRECODER_EXTRA = "isrecoder";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudRecodingActivity_.super.startRecoder();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class b extends org.androidannotations.api.builder.a<b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50737a;

        public b(Context context) {
            super(context, (Class<?>) CloudRecodingActivity_.class);
        }

        public b a(CloudBackupsCanUseBean bean) {
            return (b) super.extra("bean", bean);
        }

        public b b(boolean isrecoder) {
            return (b) super.extra(CloudRecodingActivity_.ISRECODER_EXTRA, isrecoder);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50737a;
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

        public b(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CloudRecodingActivity_.class);
            this.f50737a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(ISRECODER_EXTRA)) {
                this.isrecoder = extras.getBoolean(ISRECODER_EXTRA);
            }
            if (extras.containsKey("bean")) {
                this.bean = (CloudBackupsCanUseBean) extras.getSerializable("bean");
            }
        }
    }

    public static b intent(Context context) {
        return new b(context);
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
        setContentView(R.layout.cloud_recoding_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.recoverinfo = (TextView) hasViews.internalFindViewById(R.id.recoverinfo);
        this.gameHistory = (LinearLayout) hasViews.internalFindViewById(R.id.gameHistory);
        this.gameList = (LinearLayout) hasViews.internalFindViewById(R.id.gameList);
        this.gamekey = (LinearLayout) hasViews.internalFindViewById(R.id.gamekey);
        this.gameHistoryinfo = (TextView) hasViews.internalFindViewById(R.id.gameHistoryinfo);
        this.gameListInfo = (TextView) hasViews.internalFindViewById(R.id.gameListInfo);
        this.gamekeyinfo = (TextView) hasViews.internalFindViewById(R.id.gamekeyinfo);
        this.gameHistoryFinishImage = (ImageView) hasViews.internalFindViewById(R.id.gameHistoryFinishImage);
        this.gameListFinish = (ImageView) hasViews.internalFindViewById(R.id.gameListFinish);
        this.gamekeyFinish = (ImageView) hasViews.internalFindViewById(R.id.gamekeyFinish);
        this.gameHistoryLoding = (ProgressBar) hasViews.internalFindViewById(R.id.gameHistoryLoding);
        this.gameListloding = (ProgressBar) hasViews.internalFindViewById(R.id.gameListloding);
        this.gamekeyLoding = (ProgressBar) hasViews.internalFindViewById(R.id.gamekeyLoding);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudRecodingActivity
    public void startRecoder() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    public static b intent(Fragment supportFragment) {
        return new b(supportFragment);
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
