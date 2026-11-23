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
import com.join.mgps.customview.InterceptEventViewPager;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.dto.ExtBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class PaPaStandAloneV2Activity_ extends PaPaStandAloneV2Activity implements xc.a, zc.a, zc.b {
    public static final String PARENT_EXT_BEAN_EXTRA = "parentExtBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaStandAloneV2Activity_.this.title_normal_download_cdv();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaStandAloneV2Activity_.this.back_image();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaStandAloneV2Activity_.this.title_normal_search_img();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaStandAloneV2Activity_.super.updateDownloadView();
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PaPaStandAloneV2Activity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class f extends org.androidannotations.api.builder.a<f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55265a;

        public f(Context context) {
            super(context, (Class<?>) PaPaStandAloneV2Activity_.class);
        }

        public f a(ExtBean parentExtBean) {
            return (f) super.extra("parentExtBean", parentExtBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55265a;
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
            super(fragment.getActivity(), (Class<?>) PaPaStandAloneV2Activity_.class);
            this.f55265a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("parentExtBean")) {
            return;
        }
        this.parentExtBean = (ExtBean) extras.getSerializable("parentExtBean");
    }

    public static f intent(Context context) {
        return new f(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PaPaStandAloneV2Activity
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
        setContentView(R.layout.activity_papa_standalone_v2);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.viewPager = (InterceptEventViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.pageIndicator = (TabPageIndicator) hasViews.internalFindViewById(R.id.pageIndicator);
        this.title_normal_search_img = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new a());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        ImageView imageView = this.title_normal_search_img;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
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
    @Override // com.join.mgps.activity.PaPaStandAloneV2Activity
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
