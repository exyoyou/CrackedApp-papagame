package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class q5 extends p5 implements xc.a, zc.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f70630d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zc.c f70629c = new zc.c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Class<?>, Object> f70631e = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, p5> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public p5 build() {
            q5 q5Var = new q5();
            q5Var.setArguments(this.args);
            return q5Var;
        }
    }

    public static a M() {
        return new a();
    }

    private void init_(Bundle savedInstanceState) {
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70631e.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70630d;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70629c);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70630d = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70630d = inflater.inflate(R.layout.fragment_simulator_introduction_list, container, false);
        }
        return this.f70630d;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70630d = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70629c.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70631e.put(key, value);
    }
}
