package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class c4 extends b4 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View f69145u;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zc.c f69144t = new zc.c();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Map<Class<?>, Object> f69146v = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c4.this.S();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c4.this.W();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c4.this.P();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c4.this.T();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c4.this.R();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c4.this.V();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c4.this.Q();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c4.this.U();
        }
    }

    public static class i extends org.androidannotations.api.builder.d<i, b4> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b4 build() {
            c4 c4Var = new c4();
            c4Var.setArguments(this.args);
            return c4Var;
        }
    }

    public static i Z() {
        return new i();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69146v.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69145u;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69144t);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69145u = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69145u = inflater.inflate(R.layout.item_shop_fragment, container, false);
        }
        return this.f69145u;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69145u = null;
        this.f69078c = null;
        this.f69079d = null;
        this.f69080e = null;
        this.f69081f = null;
        this.f69082g = null;
        this.f69083h = null;
        this.f69084i = null;
        this.f69085j = null;
        this.f69086k = null;
        this.f69087l = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69078c = (RadioButton) hasViews.internalFindViewById(R.id.rb_zong);
        this.f69079d = (RadioButton) hasViews.internalFindViewById(R.id.rb_good);
        this.f69080e = (RadioButton) hasViews.internalFindViewById(R.id.rb_new);
        this.f69081f = (RadioButton) hasViews.internalFindViewById(R.id.rb_my);
        this.f69082g = (LinearLayout) hasViews.internalFindViewById(R.id.ll_zong);
        this.f69083h = (LinearLayout) hasViews.internalFindViewById(R.id.ll_good);
        this.f69084i = (LinearLayout) hasViews.internalFindViewById(R.id.ll_new);
        this.f69085j = (LinearLayout) hasViews.internalFindViewById(R.id.ll_my);
        this.f69086k = (FrameLayout) hasViews.internalFindViewById(R.id.frag_shop);
        this.f69087l = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_titleshopbar);
        LinearLayout linearLayout = this.f69082g;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new a());
        }
        RadioButton radioButton = this.f69078c;
        if (radioButton != null) {
            radioButton.setOnClickListener(new b());
        }
        LinearLayout linearLayout2 = this.f69083h;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new c());
        }
        RadioButton radioButton2 = this.f69079d;
        if (radioButton2 != null) {
            radioButton2.setOnClickListener(new d());
        }
        LinearLayout linearLayout3 = this.f69084i;
        if (linearLayout3 != null) {
            linearLayout3.setOnClickListener(new e());
        }
        RadioButton radioButton3 = this.f69080e;
        if (radioButton3 != null) {
            radioButton3.setOnClickListener(new f());
        }
        LinearLayout linearLayout4 = this.f69085j;
        if (linearLayout4 != null) {
            linearLayout4.setOnClickListener(new g());
        }
        RadioButton radioButton4 = this.f69081f;
        if (radioButton4 != null) {
            radioButton4.setOnClickListener(new h());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69144t.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69146v.put(key, value);
    }
}
