package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.ExtBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ClassifyAndRankActivity_ extends ClassifyAndRankActivity implements xc.a, zc.a, zc.b {
    public static final String CURRENT_INDEX_EXTRA = "currentIndex";
    public static final String INTENT_FROM_EXTRA = "intentFrom";
    public static final String IS_FORM_NEW_RANK_EXTRA = "isFormNewRank";
    public static final String PARENT_EXT_BEAN_EXTRA = "parentExtBean";
    public static final String TITLE_EXTRA = "title";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyAndRankActivity_.this.title_normal_search_img();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyAndRankActivity_.this.title_normal_download_cdv();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyAndRankActivity_.this.back_image();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyAndRankActivity_.super.updateDownloadView();
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ClassifyAndRankActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class f extends org.androidannotations.api.builder.a<f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50478a;

        public f(Context context) {
            super(context, (Class<?>) ClassifyAndRankActivity_.class);
        }

        public f a(int currentIndex) {
            return (f) super.extra(ClassifyAndRankActivity_.CURRENT_INDEX_EXTRA, currentIndex);
        }

        public f b(int intentFrom) {
            return (f) super.extra("intentFrom", intentFrom);
        }

        public f c(boolean isFormNewRank) {
            return (f) super.extra(ClassifyAndRankActivity_.IS_FORM_NEW_RANK_EXTRA, isFormNewRank);
        }

        public f d(ExtBean parentExtBean) {
            return (f) super.extra("parentExtBean", parentExtBean);
        }

        public f e(String title) {
            return (f) super.extra("title", title);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50478a;
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
            super(fragment.getActivity(), (Class<?>) ClassifyAndRankActivity_.class);
            this.f50478a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentFrom")) {
                this.intentFrom = extras.getInt("intentFrom");
            }
            if (extras.containsKey(CURRENT_INDEX_EXTRA)) {
                this.currentIndex = extras.getInt(CURRENT_INDEX_EXTRA);
            }
            if (extras.containsKey(IS_FORM_NEW_RANK_EXTRA)) {
                this.isFormNewRank = extras.getBoolean(IS_FORM_NEW_RANK_EXTRA);
            }
            if (extras.containsKey("parentExtBean")) {
                this.parentExtBean = (ExtBean) extras.getSerializable("parentExtBean");
            }
            if (extras.containsKey("title")) {
                this.title = extras.getString("title");
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
    @Override // com.join.mgps.activity.ClassifyAndRankActivity
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
        setContentView(R.layout.classify_and_rank_activity_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.fragment = (RelativeLayout) hasViews.internalFindViewById(R.id.fragment);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.title_normal_search_img = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        ImageView imageView = this.title_normal_search_img;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new b());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new c());
        }
        afterviews();
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
    @Override // com.join.mgps.activity.ClassifyAndRankActivity
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
