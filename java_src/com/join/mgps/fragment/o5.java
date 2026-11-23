package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BbsTagListBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class o5 extends n5 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private View f70430w;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zc.c f70429v = new zc.c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Map<Class<?>, Object> f70431x = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o5.this.setNetwork();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o5.this.relodingimag();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o5.this.R();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o5.this.onDraftClick();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f70436b;

        e(final List val$types) {
            this.f70436b = val$types;
        }

        @Override // java.lang.Runnable
        public void run() {
            o5.super.showMain(this.f70436b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70438b;

        f(final String val$msg) {
            this.f70438b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            o5.super.showLoadFailed(this.f70438b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o5.super.hideLoading();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o5.super.showLoadingView();
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o5.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.d<j, n5> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public n5 build() {
            o5 o5Var = new o5();
            o5Var.setArguments(this.args);
            return o5Var;
        }
    }

    public static j Y() {
        return new j();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70431x.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n5
    public void hideLoading() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70430w;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n5
    public void loadData() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70429v);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70430w = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70430w = inflater.inflate(R.layout.fragment_simulator_introduction, container, false);
        }
        return this.f70430w;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70430w = null;
        this.f70324c = null;
        this.f70325d = null;
        this.f70326e = null;
        this.f70327f = null;
        this.f70328g = null;
        this.f70329h = null;
        this.f70330i = null;
        this.f70331j = null;
        this.f70334m = null;
        this.f70335n = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70324c = (RecyclerView) hasViews.internalFindViewById(R.id.rv_list_type);
        this.f70325d = (ViewPager) hasViews.internalFindViewById(R.id.view_pager);
        this.f70326e = (ImageView) hasViews.internalFindViewById(R.id.ivExpand);
        this.f70327f = (TextView) hasViews.internalFindViewById(R.id.tv_draft);
        this.f70328g = (ImageView) hasViews.internalFindViewById(R.id.btnShrinkIntroduction);
        this.f70329h = (ImageView) hasViews.internalFindViewById(R.id.bgExpand);
        this.f70330i = (RelativeLayout) hasViews.internalFindViewById(R.id.rlContent);
        this.f70331j = hasViews.internalFindViewById(R.id.divider);
        this.f70334m = hasViews.internalFindViewById(R.id.loding_layout);
        this.f70335n = hasViews.internalFindViewById(R.id.loding_faile);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new b());
        }
        ImageView imageView = this.f70326e;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        TextView textView = this.f70327f;
        if (textView != null) {
            textView.setOnClickListener(new d());
        }
        aftervidew();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70429v.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70431x.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n5
    public void showLoadFailed(final String msg) {
        org.androidannotations.api.b.e("", new f(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n5
    public void showLoadingView() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n5
    public void showMain(final List<BbsTagListBean> types) {
        org.androidannotations.api.b.e("", new e(types), 0L);
    }
}
