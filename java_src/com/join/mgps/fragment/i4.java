package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class i4 extends h4 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f69837l;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zc.c f69836k = new zc.c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Map<Class<?>, Object> f69838m = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, h4> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public h4 build() {
            i4 i4Var = new i4();
            i4Var.setArguments(this.args);
            return i4Var;
        }
    }

    public static a O() {
        return new a();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69838m.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69837l;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69836k);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // com.join.mgps.fragment.h4, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69837l = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69837l = inflater.inflate(R.layout.newgame_fragment_layout, container, false);
        }
        return this.f69837l;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69837l = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69836k.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69838m.put(key, value);
    }
}
