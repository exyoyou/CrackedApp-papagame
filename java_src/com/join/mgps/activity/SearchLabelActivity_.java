package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.LabelBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class SearchLabelActivity_ extends SearchLabelActivity implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f55670r = "fromType";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zc.c f55671p = new zc.c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Map<Class<?>, Object> f55672q = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchLabelActivity_.this.g();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchLabelActivity_.this.h();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchLabelActivity_.this.b();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f55676b;

        d(final List val$datas) {
            this.f55676b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchLabelActivity_.super.l(this.f55676b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchLabelActivity_.super.j();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchLabelActivity_.super.i();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchLabelActivity_.super.e();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55681b;

        h(final String val$info) {
            this.f55681b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchLabelActivity_.super.k(this.f55681b);
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55683b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final String val$key) {
            super(id2, delay, serial);
            this.f55683b = val$key;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchLabelActivity_.super.c(this.f55683b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.a<j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55685a;

        public j(Context context) {
            super(context, (Class<?>) SearchLabelActivity_.class);
        }

        public j a(int fromType) {
            return (j) super.extra("fromType", fromType);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55685a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) SearchLabelActivity_.class);
            this.f55685a = fragment;
        }
    }

    private void s(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f55658m = AccountUtil_.getInstance_(this);
        t();
    }

    private void t() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("fromType")) {
            return;
        }
        this.f55647b = extras.getInt("fromType");
    }

    public static j u(Context context) {
        return new j(context);
    }

    public static j v(Fragment supportFragment) {
        return new j(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void c(final String key) {
        org.androidannotations.api.a.l(new i("", 0L, "", key));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void e() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f55672q.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void i() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void j() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void k(final String info) {
        org.androidannotations.api.b.e("", new h(info), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void l(final List<LabelBean> datas) {
        org.androidannotations.api.b.e("", new d(datas), 0L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f55671p);
        s(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_search_label);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f55648c = (ListView) hasViews.internalFindViewById(R.id.mListView);
        this.f55649d = (ImageView) hasViews.internalFindViewById(R.id.ic_clear);
        this.f55650e = (EditText) hasViews.internalFindViewById(R.id.et_search);
        this.f55651f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f55652g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f55656k = (TextView) hasViews.internalFindViewById(R.id.tv_nodata);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
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
        a();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f55672q.put(key, value);
    }

    @Override // android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.f55671p.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        t();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.f55671p.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f55671p.a(this);
    }
}
