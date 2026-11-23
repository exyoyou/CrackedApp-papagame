package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.UpdateIntentDataBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GprsNoticeDialogAlphActivity_ extends GprsNoticeDialogAlphActivity implements xc.a, zc.a, zc.b {
    public static final String APK_TABLE_EXTRA = "apkTable";
    public static final String DOWNLOAD_TASK_EXTRA = "downloadTask";
    public static final String IS_UPDATE_EXTRA = "isUpdate";
    public static final String SHOW_CONTENT_EXTRA = "showContent";
    public static final String UPDATE_INTENT_DATA_BEAN_EXTRA = "updateIntentDataBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GprsNoticeDialogAlphActivity_.this.dialog_button_cancle();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GprsNoticeDialogAlphActivity_.this.dialog_button_ok();
        }
    }

    public static class c extends org.androidannotations.api.builder.a<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53596a;

        public c(Context context) {
            super(context, (Class<?>) GprsNoticeDialogAlphActivity_.class);
        }

        public c a(EMUApkTable apkTable) {
            return (c) super.extra(GprsNoticeDialogAlphActivity_.APK_TABLE_EXTRA, apkTable);
        }

        public c b(DownloadTask downloadTask) {
            return (c) super.extra("downloadTask", downloadTask);
        }

        public c c(boolean isUpdate) {
            return (c) super.extra(GprsNoticeDialogAlphActivity_.IS_UPDATE_EXTRA, isUpdate);
        }

        public c d(String showContent) {
            return (c) super.extra(GprsNoticeDialogAlphActivity_.SHOW_CONTENT_EXTRA, showContent);
        }

        public c e(UpdateIntentDataBean updateIntentDataBean) {
            return (c) super.extra("updateIntentDataBean", updateIntentDataBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53596a;
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

        public c(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GprsNoticeDialogAlphActivity_.class);
            this.f53596a = fragment;
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
            if (extras.containsKey(SHOW_CONTENT_EXTRA)) {
                this.showContent = extras.getString(SHOW_CONTENT_EXTRA);
            }
            if (extras.containsKey(APK_TABLE_EXTRA)) {
                this.apkTable = (EMUApkTable) extras.getSerializable(APK_TABLE_EXTRA);
            }
            if (extras.containsKey(IS_UPDATE_EXTRA)) {
                this.isUpdate = extras.getBoolean(IS_UPDATE_EXTRA);
            }
            if (extras.containsKey("updateIntentDataBean")) {
                this.updateIntentDataBean = (UpdateIntentDataBean) extras.getSerializable("updateIntentDataBean");
            }
        }
    }

    public static c intent(Context context) {
        return new c(context);
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
        setContentView(R.layout.fc_notice_dialog);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.dialog_button_keep = (Button) hasViews.internalFindViewById(R.id.dialog_button_keep);
        this.tip_title = (TextView) hasViews.internalFindViewById(R.id.tip_title);
        this.dialog_content = (TextView) hasViews.internalFindViewById(R.id.dialog_content);
        this.textView = (TextView) hasViews.internalFindViewById(R.id.textView);
        this.dialog_button_ok = (Button) hasViews.internalFindViewById(R.id.dialog_button_ok);
        Button button = (Button) hasViews.internalFindViewById(R.id.dialog_button_cancle);
        this.dialog_button_cancle = button;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        Button button2 = this.dialog_button_ok;
        if (button2 != null) {
            button2.setOnClickListener(new b());
        }
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

    public static c intent(Fragment supportFragment) {
        return new c(supportFragment);
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
