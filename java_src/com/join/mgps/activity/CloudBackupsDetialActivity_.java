package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudBackupsCanUseBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CloudBackupsDetialActivity_ extends CloudBackupsDetialActivity implements xc.a, zc.a, zc.b {
    public static final String BEAN_EXTRA = "bean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudBackupsDetialActivity_.this.recoder();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudBackupsDetialActivity_.this.deletbutn();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudBackupsDetialActivity_.this.back_image();
        }
    }

    public static class d extends org.androidannotations.api.builder.a<d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50627a;

        public d(Context context) {
            super(context, (Class<?>) CloudBackupsDetialActivity_.class);
        }

        public d a(CloudBackupsCanUseBean bean) {
            return (d) super.extra("bean", bean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50627a;
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

        public d(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CloudBackupsDetialActivity_.class);
            this.f50627a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("bean")) {
            return;
        }
        this.bean = (CloudBackupsCanUseBean) extras.getSerializable("bean");
    }

    public static d intent(Context context) {
        return new d(context);
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
        setContentView(R.layout.cloud_backups_detial_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.phoneType = (TextView) hasViews.internalFindViewById(R.id.phoneType);
        this.timeText = (TextView) hasViews.internalFindViewById(R.id.timeText);
        this.gamelistnumber = (TextView) hasViews.internalFindViewById(R.id.gamelistnumber);
        this.gameHostoryNumber = (TextView) hasViews.internalFindViewById(R.id.gameHostoryNumber);
        this.gameKeySetNumber = (TextView) hasViews.internalFindViewById(R.id.gameKeySetNumber);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.recoder);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.deletbutn);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new b());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new c());
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

    public static d intent(Fragment supportFragment) {
        return new d(supportFragment);
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
