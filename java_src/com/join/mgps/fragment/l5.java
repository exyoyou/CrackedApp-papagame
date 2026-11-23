package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class l5 extends k5 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f70137h;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zc.c f70136g = new zc.c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map<Class<?>, Object> f70138i = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, k5> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public k5 build() {
            l5 l5Var = new l5();
            l5Var.setArguments(this.args);
            return l5Var;
        }
    }

    public static a M() {
        return new a();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70138i.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70137h;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70136g);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70137h = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70137h = inflater.inflate(R.layout.fragment_simulator_gold_finger, container, false);
        }
        return this.f70137h;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70137h = null;
        this.f70049c = null;
        this.f70050d = null;
        this.f70051e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70049c = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.f70050d = (LinearLayout) hasViews.internalFindViewById(R.id.ll_empty);
        this.f70051e = (NestedScrollView) hasViews.internalFindViewById(R.id.nes);
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70136g.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70138i.put(key, value);
    }
}
