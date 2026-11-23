package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionModuleSevenBean;
import com.join.mgps.dto.ExtBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CollectionModuleSevenActivity_ extends CollectionModuleSevenActivity implements xc.a, zc.a, zc.b {
    public static final String PARENT_EXT_BEAN_EXTRA = "parentExtBean";
    public static final String TEMPLATE_ID_EXTRA = "templateId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionModuleSevenActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSevenActivity_.this.back_image();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSevenActivity_.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleSevenActivity_.this.setNetwork();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50804b;

        e(final String val$message) {
            this.f50804b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSevenActivity_.super.showMessage(this.f50804b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionModuleSevenBean f50806b;

        f(final CollectionModuleSevenBean val$data) {
            this.f50806b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSevenActivity_.super.updateData(this.f50806b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSevenActivity_.super.autoPlay();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSevenActivity_.super.showLoding();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSevenActivity_.super.showLodingFailed();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleSevenActivity_.super.showMain();
        }
    }

    public static class k extends org.androidannotations.api.builder.a<k> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50812a;

        public k(Context context) {
            super(context, (Class<?>) CollectionModuleSevenActivity_.class);
        }

        public k a(ExtBean parentExtBean) {
            return (k) super.extra("parentExtBean", parentExtBean);
        }

        public k b(String templateId) {
            return (k) super.extra("templateId", templateId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50812a;
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

        public k(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CollectionModuleSevenActivity_.class);
            this.f50812a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("templateId")) {
                this.templateId = extras.getString("templateId");
            }
            if (extras.containsKey("parentExtBean")) {
                this.parentExtBean = (ExtBean) extras.getSerializable("parentExtBean");
            }
        }
    }

    public static k intent(Context context) {
        return new k(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSevenActivity
    public void autoPlay() {
        org.androidannotations.api.b.e("", new g(), 500L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSevenActivity
    public void getData() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_collection_module_seven);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.breakListView = (RecyclerView) hasViews.internalFindViewById(R.id.breakListView);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.relodingimag = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        ImageView imageView2 = this.relodingimag;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new c());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new d());
        }
        afterviews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.CollectionModuleSevenActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSevenActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSevenActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSevenActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new e(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleSevenActivity
    public void updateData(final CollectionModuleSevenBean data) {
        org.androidannotations.api.b.e("", new f(data), 0L);
    }

    public static k intent(Fragment supportFragment) {
        return new k(supportFragment);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
