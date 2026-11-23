package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout1;
import com.join.mgps.customview.ViewPagerCompat;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class s4 extends r4 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f70883j;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zc.c f70882i = new zc.c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map<Class<?>, Object> f70884k = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, r4> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public r4 build() {
            s4 s4Var = new s4();
            s4Var.setArguments(this.args);
            return s4Var;
        }
    }

    public static a P() {
        return new a();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70884k.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70883j;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70882i);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70883j = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70883j = inflater.inflate(R.layout.fragment_rank_new, container, false);
        }
        return this.f70883j;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70883j = null;
        this.f70696c = null;
        this.f70697d = null;
        this.f70698e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70696c = (SlidingTabLayout1) hasViews.internalFindViewById(R.id.tabs);
        this.f70697d = (RelativeLayout) hasViews.internalFindViewById(R.id.title);
        this.f70698e = (ViewPagerCompat) hasViews.internalFindViewById(R.id.view_pager);
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70882i.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70884k.put(key, value);
    }
}
