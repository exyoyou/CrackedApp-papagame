package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class DeveloperActivity_ extends DeveloperActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.onRewardLoad();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.onRewardShow();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.onFCLoad();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.onFCShow();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.btnTTTools();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.btnVideo();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.installA();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.installB();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.testHtml();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.btnQuarkShare();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.hideApp();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.btnCollectionSeven();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.install();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.mustpaly();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.btRegin();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.launch();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.doNotify();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.downFinish();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.deleteFile();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeveloperActivity_.this.startApp();
        }
    }

    public static class u extends org.androidannotations.api.builder.a<u> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51208a;

        public u(Context context) {
            super(context, (Class<?>) DeveloperActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51208a;
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

        public u(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) DeveloperActivity_.class);
            this.f51208a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static u intent(Context context) {
        return new u(context);
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
        setContentView(R.layout.activity_developer);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.et_apk_path = (EditText) hasViews.internalFindViewById(R.id.et_apk_path);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.hideApp);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.install);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.mustpaly);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.btRegin);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.launch);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.btn_notify);
        View viewInternalFindViewById7 = hasViews.internalFindViewById(R.id.btn_download_finish);
        View viewInternalFindViewById8 = hasViews.internalFindViewById(R.id.btn_delete_file);
        View viewInternalFindViewById9 = hasViews.internalFindViewById(R.id.start_app);
        View viewInternalFindViewById10 = hasViews.internalFindViewById(R.id.btnRewardLoad);
        View viewInternalFindViewById11 = hasViews.internalFindViewById(R.id.btnRewardShow);
        View viewInternalFindViewById12 = hasViews.internalFindViewById(R.id.btnFCLoad);
        View viewInternalFindViewById13 = hasViews.internalFindViewById(R.id.btnFCShow);
        View viewInternalFindViewById14 = hasViews.internalFindViewById(R.id.btnTTTools);
        View viewInternalFindViewById15 = hasViews.internalFindViewById(R.id.btnVideo);
        View viewInternalFindViewById16 = hasViews.internalFindViewById(R.id.btn_install_a);
        View viewInternalFindViewById17 = hasViews.internalFindViewById(R.id.btn_install_b);
        View viewInternalFindViewById18 = hasViews.internalFindViewById(R.id.btnTestHtml);
        View viewInternalFindViewById19 = hasViews.internalFindViewById(R.id.btnQuarkShare);
        View viewInternalFindViewById20 = hasViews.internalFindViewById(R.id.btnCollectionSeven);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new m());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new n());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new o());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new p());
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new q());
        }
        if (viewInternalFindViewById7 != null) {
            viewInternalFindViewById7.setOnClickListener(new r());
        }
        if (viewInternalFindViewById8 != null) {
            viewInternalFindViewById8.setOnClickListener(new s());
        }
        if (viewInternalFindViewById9 != null) {
            viewInternalFindViewById9.setOnClickListener(new t());
        }
        if (viewInternalFindViewById10 != null) {
            viewInternalFindViewById10.setOnClickListener(new a());
        }
        if (viewInternalFindViewById11 != null) {
            viewInternalFindViewById11.setOnClickListener(new b());
        }
        if (viewInternalFindViewById12 != null) {
            viewInternalFindViewById12.setOnClickListener(new c());
        }
        if (viewInternalFindViewById13 != null) {
            viewInternalFindViewById13.setOnClickListener(new d());
        }
        if (viewInternalFindViewById14 != null) {
            viewInternalFindViewById14.setOnClickListener(new e());
        }
        if (viewInternalFindViewById15 != null) {
            viewInternalFindViewById15.setOnClickListener(new f());
        }
        if (viewInternalFindViewById16 != null) {
            viewInternalFindViewById16.setOnClickListener(new g());
        }
        if (viewInternalFindViewById17 != null) {
            viewInternalFindViewById17.setOnClickListener(new h());
        }
        if (viewInternalFindViewById18 != null) {
            viewInternalFindViewById18.setOnClickListener(new i());
        }
        if (viewInternalFindViewById19 != null) {
            viewInternalFindViewById19.setOnClickListener(new j());
        }
        if (viewInternalFindViewById20 != null) {
            viewInternalFindViewById20.setOnClickListener(new l());
        }
        afterViews();
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

    public static u intent(Fragment supportFragment) {
        return new u(supportFragment);
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
