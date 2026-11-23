package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class j5 extends i5 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f69923h = "url";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f69925f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zc.c f69924e = new zc.c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<Class<?>, Object> f69926g = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, i5> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public i5 build() {
            j5 j5Var = new j5();
            j5Var.setArguments(this.args);
            return j5Var;
        }

        public a b(String url) {
            this.args.putString("url", url);
            return this;
        }
    }

    public static a O() {
        return new a();
    }

    private void P() {
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.containsKey("url")) {
            return;
        }
        this.f69840d = arguments.getString("url");
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        P();
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69926g.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69925f;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69924e);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69925f = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69925f = inflater.inflate(R.layout.fragment_search_web, container, false);
        }
        return this.f69925f;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69925f = null;
        this.f69839c = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69839c = (LJWebView) hasViews.internalFindViewById(R.id.web);
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69924e.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69926g.put(key, value);
    }
}
