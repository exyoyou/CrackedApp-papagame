package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.PapayResultData;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class PAPayCenterActivity_ extends PAPayCenterActivity implements xc.a, zc.a, zc.b {
    public static final String INTENT_FROM_EXTRA = "intentFrom";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PAPayCenterActivity_.this.aboutPabi();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PAPayCenterActivity_.this.back_image();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PAPayCenterActivity_.super.updateListFooter();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PAPayCenterActivity_.super.noMore();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PAPayCenterActivity_.super.dialogDismiss();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PapayResultData f55242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55243c;

        f(final PapayResultData val$data, final int val$pn) {
            this.f55242b = val$data;
            this.f55243c = val$pn;
        }

        @Override // java.lang.Runnable
        public void run() {
            PAPayCenterActivity_.super.updateList(this.f55242b, this.f55243c);
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f55245b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55246c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final UserInfo val$accountBean, final int val$pn) {
            super(id2, delay, serial);
            this.f55245b = val$accountBean;
            this.f55246c = val$pn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PAPayCenterActivity_.super.loadPayHistory(this.f55245b, this.f55246c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class h extends org.androidannotations.api.builder.a<h> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55248a;

        public h(Context context) {
            super(context, (Class<?>) PAPayCenterActivity_.class);
        }

        public h a(int intentFrom) {
            return (h) super.extra("intentFrom", intentFrom);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55248a;
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

        public h(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) PAPayCenterActivity_.class);
            this.f55248a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("intentFrom")) {
            return;
        }
        this.intentFrom = extras.getInt("intentFrom");
    }

    public static h intent(Context context) {
        return new h(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PAPayCenterActivity
    public void dialogDismiss() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PAPayCenterActivity
    public void loadPayHistory(final UserInfo accountBean, final int pn) {
        org.androidannotations.api.a.l(new g("", 0L, "", accountBean, pn));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PAPayCenterActivity
    public void noMore() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.papapay_center_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.xListView = (XListView) hasViews.internalFindViewById(R.id.xListView);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.aboutPabi = (TextView) hasViews.internalFindViewById(R.id.aboutPabi);
        this.nodata = (LinearLayout) hasViews.internalFindViewById(R.id.nodata);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        TextView textView = this.aboutPabi;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PAPayCenterActivity
    public void updateList(final PapayResultData data, final int pn) {
        org.androidannotations.api.b.e("", new f(data, pn), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PAPayCenterActivity
    public void updateListFooter() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    public static h intent(Fragment supportFragment) {
        return new h(supportFragment);
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
